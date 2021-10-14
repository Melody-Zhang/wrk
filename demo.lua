function request()
    host = "www.baidu.com"
    method = "GET"
    path = "/"
    headers = {}
    headers["Host"] = host
    body = nil
    --local msg = "request thread addr: %s"
    --print(msg:format(wrk.thread.addr))
    return wrk.format(host, method, path, headers, body)
end

