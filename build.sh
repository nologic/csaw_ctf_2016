# really need to do this only once
cd ./lua-5.3.3
make macosx # change if not on mac
make local
cd ../

# everytime the challenge changes
gcc -I./lua-5.3.3/install/include/ -L./lua-5.3.3/install/lib/ -llua -o scripty server.c

./lua-5.3.3/install/bin/luac -s -o server.luac server.lua
