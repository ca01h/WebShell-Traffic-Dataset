@load base/protocols/http

module HTTP;
export {
    redef record Info +=  {
        request_header:  vector of string &log &optional;
        response_header:  vector of string &log &optional;
        };
   option log_request_header = T;
   option log_response_header = T;
}
event http_header(c: connection, is_orig: bool, name: string, value: string) &priority=5
    {
    if ( ! c?$http )
        return;
    if ( is_orig )
        {
        if ( log_request_header )
            {
            if ( ! c$http?$request_header )
                c$http$request_header = vector();
            c$http$request_header += name;
            c$http$request_header += value;
            }
        }
    else
        {
        if ( log_response_header )
            {
            if ( ! c$http?$response_header )
                c$http$response_header = vector();
            c$http$response_header += name;
            c$http$response_header += value;
            }
        }
}