package = "thrift"
version = "0.17.0-4"
source = {
  url = "git://github.com/apache/thrift.git",
  tag = "v0.17.0",
  dir = "thrift/lib/lua"
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
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
	["TBinaryProtocol"] = "TBinaryProtocol.lua",
	["TBufferedTransport"] = "TBufferedTransport.lua",
	["TCompactProtocol"] = "TCompactProtocol.lua",
	["TFramedTransport"] = "TFramedTransport.lua",
	["Thrift"] = "Thrift.lua",
	["THttpTransport"] = "THttpTransport.lua",
	["TJsonProtocol"] = "TJsonProtocol.lua",
	["TMemoryBuffer"] = "TMemoryBuffer.lua",
	["TProtocol"] = "TProtocol.lua",
	["TServer"] = "TServer.lua",
	["TSocket"] = "TSocket.lua",
	["TTransport"] = "TTransport.lua",

	libluasocket = { "src/luasocket.c", "src/usocket.c" },
	liblualongnumber = { "src/lualongnumber.c", "src/longnumberutils.c" },
	libluabpack = { "src/luabpack.c", "src/longnumberutils.c" },
	libluabitwise = { "src/luabitwise.c" },
  }
}
