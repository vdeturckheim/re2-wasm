cmake_minimum_required(VERSION 3.16)
project(re2_wasm)

include(FetchContent)
add_link_options(--bind)

# TODO: download a specific version
FetchContent_Declare(
        re2
        URL https://github.com/google/re2/archive/2020-05-01.zip)
FetchContent_Populate(re2)
message(STATUS "re2 is available in " ${re2_SOURCE_DIR})

set(CMAKE_CXX_STANDARD 14)
include_directories(${re2_SOURCE_DIR})

#TODO: find a cleaner way
add_executable(re2_wasm
        main.cpp
        ${re2_SOURCE_DIR}/re2/bitstate.cc
        ${re2_SOURCE_DIR}/re2/compile.cc
        ${re2_SOURCE_DIR}/re2/dfa.cc
        ${re2_SOURCE_DIR}/re2/filtered_re2.cc
        ${re2_SOURCE_DIR}/re2/mimics_pcre.cc
        ${re2_SOURCE_DIR}/re2/nfa.cc
        ${re2_SOURCE_DIR}/re2/onepass.cc
        ${re2_SOURCE_DIR}/re2/parse.cc
        ${re2_SOURCE_DIR}/re2/perl_groups.cc
        ${re2_SOURCE_DIR}/re2/prefilter.cc
        ${re2_SOURCE_DIR}/re2/prefilter_tree.cc
        ${re2_SOURCE_DIR}/re2/prog.cc
        ${re2_SOURCE_DIR}/re2/re2.cc
        ${re2_SOURCE_DIR}/re2/regexp.cc
        ${re2_SOURCE_DIR}/re2/set.cc
        ${re2_SOURCE_DIR}/re2/simplify.cc
        ${re2_SOURCE_DIR}/re2/stringpiece.cc
        ${re2_SOURCE_DIR}/re2/tostring.cc
        ${re2_SOURCE_DIR}/re2/unicode_casefold.cc
        ${re2_SOURCE_DIR}/re2/unicode_groups.cc
        ${re2_SOURCE_DIR}/util/pcre.cc
        ${re2_SOURCE_DIR}/util/rune.cc
        ${re2_SOURCE_DIR}/util/strutil.cc)