#ifndef TASK16STACK_SUBSTRANALYSER_H
#define TASK16STACK_SUBSTRANALYSER_H
#include <iostream>
#include <string>
#include <vector>
#include <stack>

const size_t ALPHABET_SIZE = 3;
const char ALPHABET[ALPHABET_SIZE] = {'a', 'b', 'c'};
const char UNION_SIGN = '+';
const char CONCATENATION_SIGN = '.';
const char CLOSURE_SIGN = '*';
const char EMPTY_SIGN = '1';

class SubstrAnalyser {
private:
    struct Flags {
        bool is_elem = false;
        bool is_pref = false;
        bool is_suf = false;
        bool is_substr = false;
        bool is_empty = false;

        void make_empty();

        Flags& operator|=(const Flags& other);

        Flags operator|(const Flags& other) const;

        Flags concatenate(const Flags& other) const;
    };

    std::vector<std::string> substrings;
    std::string word;
    std::vector<size_t> length_index;
    size_t substr_number = 0;

    size_t get_substr_index(size_t len, size_t index);

    std::vector<Flags> unionEntryArr(const std::vector<Flags>& first, const std::vector<Flags>& second) const;

    void unionTop(std::stack<std::vector<Flags>>& operation_order);

    std::vector<Flags> concatenate(const std::vector<Flags>& left, const std::vector<Flags>& right);

    void concatenateTop(std::stack<std::vector<Flags>>& operation_order);

    std::vector<Flags> closure(const std::vector<Flags>& entry_arr);

    void closureTop(std::stack<std::vector<Flags>>& operation_order);

    std::vector<Flags> getEntryArray(char letter);

    std::vector<Flags> getEntryArray(const std::string& regular_expr);

public:
    SubstrAnalyser() = default;

    SubstrAnalyser(const SubstrAnalyser& other) = default;

    SubstrAnalyser(SubstrAnalyser&& other) = default;

    explicit SubstrAnalyser(const std::string& word);

    size_t findMaxSubstr(const std::string& regular_expr);
};

size_t find_max_substr(const std::string& reg_expr, const std::string& word);

void stream_in_out() {
    std::string regular_expr;
    std::string word;
    std::cin >> regular_expr >> word;
    SubstrAnalyser helper(word);
    std::cout << helper.findMaxSubstr(regular_expr);
}

#endif //TASK16STACK_SUBSTRANALYSER_H
