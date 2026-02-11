#include "get_args_json.hpp"
#include <string>
#include <nlohmann/json.hpp>
#include "strconvEx2.h"
#include "wstrutil.h"

const char *__get_args_json()
{
    static thread_local std::string result;
    std::vector<char *> args = get_utf8_args();
    nlohmann::json j = nlohmann::json::array();
    size_t start = (args.size() > 0) && strutil::ends_with(args[0], std::string("neko.exe")) ? 2 : 1;
    for (size_t i=start; i<args.size(); i++)
    {
        j.push_back(args[i]);
    }
    result = j.dump();
    //std::cout << result << std::endl;
    return result.c_str();
}
