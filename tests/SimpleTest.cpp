#include "SimpleTest.h"
#include "gtest/gtest.h"
#include "../SubstrAnalyser.h"
#include <iostream>

TEST_F(SimpleTest, test_answer) {
    ASSERT_EQ(find_max_substr("ab+c.aba.*.bac.+.+*", "babc"), 3);
    ASSERT_EQ(find_max_substr("acb..bab.c.*.ab.ba.+.+*a.", "abbaa"), 5);
    ASSERT_EQ(find_max_substr("abc*.+*b.a+", "ccab"), 4);
    ASSERT_EQ(find_max_substr("ab.aa.+ca.1+.", "bc"), 2);
    ASSERT_EQ(find_max_substr("ab.aa.+ca.1+.", "cb"), 1);
    std::stringstream in;
    in << "aaab.c+*.b.*. aaabab";
    std::stringstream out;
    stream_in_out(in, out);
    size_t ans;
    out >> ans;
    ASSERT_EQ(ans, 6);
}