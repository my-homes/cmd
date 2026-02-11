//+source get_args_json.cpp
#include <neko.h>
#include "get_args_json.hpp"

extern "C"
value test()
{
    return alloc_string("Hello world");
}

extern "C" value get_args_json()
{
    return alloc_string(__get_args_json());
}

DEFINE_PRIM(test,0);
DEFINE_PRIM(get_args_json,0);
