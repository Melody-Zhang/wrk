local threads = {}
local wrkname = ""
local textname = ""
function setup(thread, args)
    table.insert(threads, thread)
    wrkname = args[0]
    textname = args[1]
end

function request()
     print(wrkname, textname)
     return wrk.request()
end