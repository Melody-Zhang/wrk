--local threads = {}
local wrkname = "a"
local textname = "b"
local count = 1
function setup(thread)
    --table.insert(threads, thread)
    count = count + 1
    print("setup", wrkname, textname, count)
end

function init(args)
    print("init", wrkname, textname, count)
    print(args[2])
end

function request()
      print("req", wrkname, textname, count)
     return wrk.request()
end