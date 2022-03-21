@load base/protocols/http

module HTTP;
export {
    redef record Info += {
       response_body: string &log &optional;
    };
    ## Flag that indicates whether to hook reply bodies.
    const hook_reply_bodies = T &redef;
}
## Users write a handler for this event to process the current HTTP body.
event http_begin_entity(c: connection, is_orig: bool)
    {
    if ( (is_orig) || (! is_orig && ! hook_reply_bodies) )
        return;
    c$http$response_body= "";
    }
event http_entity_data(c: connection, is_orig: bool, length: count, data: string) &priority=5
    {
    if ( ! c$http?$response_body)
        return;
    c$http$response_body += data;
    }
