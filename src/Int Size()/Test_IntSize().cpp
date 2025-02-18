#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include <iostream>
#include "doctest.h"
#include "IntSize().h"
#include <string>
using namespace std;


TEST_CASE("Test if the John even works") {
    LinkedList<int> list;
    CHECK(list.to_string() == "Empty List");
    list.insert_at_front(1);
    CHECK(list.to_string() == "(1)");
    list.insert_at_front(2);
    CHECK(list.to_string() == "(2, 1)");
    list.insert_at_front(3);
    CHECK(list.to_string() == "(3, 2, 1)");
}

TEST_CASE("Test Size Grabber") {
    LinkedList<int> list;
    list.insert_at_front(1);
    list.insert_at_front(2);
    list.insert_at_front(3);
    CHECK(list.to_string() == "(3, 2, 1)");
    CHECK(list.IntSize() == "(3)");
}

TEST_CASE("Test Size Grabber after a removal") {
    LinkedList<int> list;
    list.insert_at_front(1);
    list.insert_at_front(2);
    list.insert_at_front(3);
    list.remove_from_front();
    CHECK(list.to_string() == "(2, 1)");
    CHECK(list.IntSize() == "(2)");
}
