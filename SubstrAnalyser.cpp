#include "SubstrAnalyser.h"


void SubstrAnalyser::Flags::make_empty() {
    is_pref = true;
    is_suf = true;
    is_substr = true;
    is_empty = true;
}

SubstrAnalyser::Flags& SubstrAnalyser::Flags::operator|=(const SubstrAnalyser::Flags& other){
    is_elem |= other.is_elem;
    is_pref |= other.is_pref;
    is_suf |= other.is_suf;
    is_substr |= other.is_substr;
    is_empty |= other.is_empty;
    return *this;
}

SubstrAnalyser::Flags SubstrAnalyser::Flags::operator|(const SubstrAnalyser::Flags& other) const {
    Flags result = *this;
    result |= other;
    return result;
}

SubstrAnalyser::Flags SubstrAnalyser::Flags::concatenate(const Flags& other) const {
    Flags result;
    result.is_elem = is_elem && other.is_elem;
    result.is_pref = (is_elem && other.is_pref) || (is_pref && other.is_empty);
    result.is_suf = is_suf && other.is_elem || (is_empty && other.is_suf);
    result.is_substr =
            (is_suf && other.is_pref) || (is_substr && other.is_empty) || (is_empty && other.is_substr);
    result.is_empty = is_empty && other.is_empty;
    return result;
}

size_t SubstrAnalyser::get_substr_index(size_t len, size_t index) {
    if (len == 0) {
        return 0;
    }
    return length_index[len] + index;
}

std::vector<SubstrAnalyser::Flags> SubstrAnalyser::unionEntryArr(const std::vector<Flags>& first, const std::vector<Flags>& second) const{
    std::vector<Flags> result(substr_number);
    for (size_t i = 0; i < result.size(); ++i) {
        result[i] = first[i] | second[i];
    }
    return result;
}

void SubstrAnalyser::unionTop(std::stack<std::vector<Flags>>& operation_order) {
    if (operation_order.empty()) {
        std::cerr << "Missing argument for union.\n";
        throw;
    }
    std::vector<Flags> right = std::move(operation_order.top());
    operation_order.pop();
    if (operation_order.empty()) {
        std::cerr << "Missing argument for union.\n";
        throw;
    }
    std::vector<Flags> left = std::move(operation_order.top());
    operation_order.pop();
    operation_order.emplace(unionEntryArr(left, right));
}

std::vector<SubstrAnalyser::Flags> SubstrAnalyser::concatenate(const std::vector<Flags>& left,
                                                               const std::vector<Flags>& right) {
    std::vector<Flags> result(substr_number);
    result[0].make_empty();
    for (size_t l = 0; l <= word.size(); ++l) {
        for (size_t i = 0; i < word.size() - l + 1; ++i) {
            size_t left_substr = get_substr_index(l, i);
            size_t continuation_index = i + l;
            for (size_t k = 0; k < word.size() - continuation_index + 1; ++k) {
                size_t right_substr = get_substr_index(k, continuation_index);
                size_t concat_substr = get_substr_index(k + l, i);
                result[concat_substr] |= left[left_substr].concatenate(right[right_substr]);
            }
        }
    }
    return result;
}

void SubstrAnalyser::concatenateTop(std::stack<std::vector<Flags>>& operation_order) {
    if (operation_order.empty()) {
        std::cerr << "Missing argument for concatenation.\n";
        throw;
    }
    std::vector<Flags> right = std::move(operation_order.top());
    operation_order.pop();
    if (operation_order.empty()) {
        std::cerr << "Missing argument for concatenation.\n";
        throw;
    }
    std::vector<Flags> left = std::move(operation_order.top());
    operation_order.pop();
    operation_order.emplace(concatenate(left, right));
}

std::vector<SubstrAnalyser::Flags> SubstrAnalyser::closure(const std::vector<Flags>& entry_arr) {
    std::vector<Flags> result = entry_arr;
    result[0].is_elem = true;
    for (size_t l = 0; l <= word.size(); ++l) {
        for (size_t i = 0; i < word.size() - l + 1; ++i) {
            size_t left_substr = get_substr_index(l, i);
            size_t continuation_index = i + l;
            for (size_t k = 0; k < word.size() - continuation_index + 1; ++k) {
                size_t right_substr = get_substr_index(k, continuation_index);
                size_t concat_substr = get_substr_index(k + l, i);
                result[concat_substr] |= result[left_substr].concatenate(result[right_substr]);
            }
        }
    }
    return result;
}

void SubstrAnalyser::closureTop(std::stack<std::vector<Flags>>& operation_order) {
    if (operation_order.empty()) {
        std::cerr << "Missing argument for closure operation.\n";
        throw;
    }
    std::vector<Flags> entry_arr = operation_order.top();
    operation_order.pop();
    operation_order.emplace(closure(entry_arr));
}

std::vector<SubstrAnalyser::Flags> SubstrAnalyser::getEntryArray(char letter) {
    std::vector<Flags> result(substr_number);
    result[0].make_empty();
    if (letter == EMPTY_SIGN) {
        result[0].is_elem = true;
        return result;
    }
    for (size_t i = 0; i <= word.size(); ++i) {
        if (letter == word[i]) {
            result[i + 1] = {true, true, true, true, false};
        }
    }
    return result;
}

std::vector<SubstrAnalyser::Flags> SubstrAnalyser::getEntryArray(const std::string& regular_expr) {
    std::stack<std::vector<Flags>> operation_order;
    for (auto& letter: regular_expr) {
        if (letter == UNION_SIGN) {
            unionTop(operation_order);
            continue;
        }
        if (letter == CONCATENATION_SIGN) {
            concatenateTop(operation_order);
            continue;
        }
        if (letter == CLOSURE_SIGN) {
            closureTop(operation_order);
            continue;
        }
        operation_order.emplace(getEntryArray(letter));
    }
    if (operation_order.size() != 1) {
        std::cerr << "Wrong format, too few operations.\n";
        throw;
    }
    return operation_order.top();
}

SubstrAnalyser::SubstrAnalyser(const std::string& word) : word(word), length_index(word.size() + 1),
                                                   substr_number(
                                                           word.size() + word.size() * (word.size() - 1) / 2 + 1) {
    substrings.emplace_back("");
    length_index[0] = 0;
    length_index[1] = 1;
    for (size_t l = 2; l <= word.size(); ++l) {
        length_index[l] = length_index[l - 1] + word.size() - (l - 1) + 1;
    }
    for (size_t l = 1; l <= word.size(); ++l) {
        for (size_t i = 0; i < word.size() - l + 1; ++i) {
            substrings.emplace_back(word.begin() + i, word.begin() + i + l);
        }
    }
}

size_t SubstrAnalyser::findMaxSubstr(const std::string& regular_expr) {
    std::vector<Flags> entry_arr = getEntryArray(regular_expr);
    size_t max_size = word.size();
    for (int32_t i = substr_number - 1; i >= 0; --i) {
        if (length_index[max_size] > i) {
            --max_size;
        }
        if (entry_arr[i].is_substr) {
            break;
        }
    }
    return max_size;
}

size_t find_max_substr(const std::string& reg_expr, const std::string& word) {
    SubstrAnalyser helper(word);
    return helper.findMaxSubstr(reg_expr);
}