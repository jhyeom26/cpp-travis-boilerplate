#include <gtest/gtest.h>

#include "mylib.hpp"

TEST(MylibTest, NormalTest){
  EXPECT_TRUE(mylib::func1());
  EXPECT_TRUE(mylib::func2());
  EXPECT_TRUE(mylib::func3());
}
