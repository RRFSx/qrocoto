
local version = "3.7.0"
local base    = pathJoin("/apps/valgrind",version)

local fn      = myFileName()
local module  = myModuleFullName()
local loc     = fn:find(module,1,true)-2
local mdir    = fn:sub(1,loc)
local pkg     = pathJoin(mdir, "/..")

--LmodMsgRaw("debug:"..fn..'\n')
--LmodMsgRaw("debug:"..loc..'\n')
--LmodMsgRaw("debug:"..mdir..'\n')
--LmodMsgRaw("debug:"..pkg..'\n')

prepend_path("PATH",pkg)
