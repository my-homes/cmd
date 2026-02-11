set -uvx
set -e
g++ -shared -o add2.dll -I$HOME/common/include -Wno-deprecated add2.cpp -static
