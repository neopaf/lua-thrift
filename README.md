# lua-thrift

LuaRocks packaging of [Apache Thrift](https://thrift.apache.org).

## TODO

Can't figure out how to prevent pack from storing ALL of what's in git (put only lib/lua)

## Building

### src rock

```bash
luarocks pack rockspecs/thrift-0.17.0-4.rockspec
```

[Result](thrift-0.17.0-4.src.rock)

### binary rock

```bash
git clone github.com/apache/thrift.git
cd thrift/lib/lua
git checkout v0.17.0
cp -rp * ../../..

luarocks build
luarocks pack thrift
```

[Result Mac](thrift-0.17.0-4.macosx-x86_64.rock)

## Upload

Somewhere

## Installation

```bash
luarocks install https://somewhere/thrift-0.17.0-4.src.rock
```
