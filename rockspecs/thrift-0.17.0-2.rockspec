package = "thrift"
version = "0.17.0-2"
source = {
  url = "git@github.com:apache/thrift.git",
  tag = "v0.17.0",
}
description = {
  summary = "LuaRocks packaging of Apache Thrift",
  detailed = [[
    LuaRocks packaging of Apache Thrift.
  ]],
  homepage = "https://github.com/neopaf/lua-thrift",
  maintainer = "Alexander Petrossian (PAF)",
  license = "Apache 2.0"
}
dependencies = {
  "bit32 <= 5.3.0-1",
  "long >= 1.0.3, <= 2.0.0",
  "lua >= 5.1, < 5.3",
  "luasocket <= 3.0rc1-2",
  "middleclass <= 4.1-0",
  "vstruct <= 2.0.1-1"
}
build = {
  type = "builtin",
  modules = {
	["TBinaryProtocol"] = "thrift/lib/lua/TBinaryProtocol.lua",
	["TBufferedTransport"] = "thrift/lib/lua/TBufferedTransport.lua",
	["TCompactProtocol"] = "thrift/lib/lua/TCompactProtocol.lua",
	["TFramedTransport"] = "thrift/lib/lua/TFramedTransport.lua",
	["Thrift"] = "thrift/lib/lua/Thrift.lua",
	["THttpTransport"] = "thrift/lib/lua/THttpTransport.lua",
	["TJsonProtocol"] = "thrift/lib/lua/TJsonProtocol.lua",
	["TMemoryBuffer"] = "thrift/lib/lua/TMemoryBuffer.lua",
	["TProtocol"] = "thrift/lib/lua/TProtocol.lua",
	["TServer"] = "thrift/lib/lua/TServer.lua",
	["TSocket"] = "thrift/lib/lua/TSocket.lua",
	["TTransport"] = "thrift/lib/lua/TTransport.lua",
  }
}
