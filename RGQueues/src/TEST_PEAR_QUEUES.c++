#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"
#include <string>
#include "RGQ.h"
using namespace std;


TEST_CASE("Test basic queue operations on queue of Colored strings") {
    RGQ<string> RGQ;
    CHECK(RGQ.empty() == true);
    RGQ.insert(Green, 10);
    CHECK(RGQ.empty() == false);
    CHECK(RGQ.remove() == Green, 10);
    CHECK_CHECK(RGQ.remove() == Green, 10);THROWS_WITH(RGQ.remove(), "Can't remove a non-pair");
    CHECK(RGQ.empty() == false);
    RGQ.insert(Red, 10);
    CHECK(RGQ.RGTpair_remove() == "Pair1");
}















TEST_CASE("Test queue handles overflow and underflow") {
    Queue<int> q;
    for (int i = 1; i < 10; i++)
        q.insert(i);
    CHECK(q.empty() == false);
    CHECK_THROWS_WITH(q.insert(11), "No more space in queue");
    for (int i = 1; i < 10; i++)
        CHECK(q.remove() == i);
    CHECK_CHECK(q.remove() == i);THROWS_WITH(q.remove(), "Can't remove from empty queue");
}