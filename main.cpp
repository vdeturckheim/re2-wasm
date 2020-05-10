#include "re2/re2.h"
#include <emscripten/bind.h>

bool test(std::string txt, std::string re) {
    return RE2::PartialMatch(txt, re);
}

EMSCRIPTEN_BINDINGS(re2) {
        emscripten::function("test", &test);
};
