-module(naga_post_params).
-include_lib("n2o/include/wf.hrl").
-export([init/2,finish/2]).

%%FIXME: multipart/form-data
init(_State, Ctx) ->
	case cowboy_req:parse_header(<<"content-type">>, Ctx#cx.req) of
	 {ok, {<<"multipart">>, <<"form-data">>, _}, Req} -> 
	 				 {ok, [], Ctx#cx{form=multipart,req=Req}};
     {ok, _, Req} -> {Form,NewReq} = wf:form(Req),
    				 NewCtx = Ctx#cx{form=Form,req=NewReq},
                     {ok, [], NewCtx} 
    end.

finish(_State, Ctx) ->  {ok, [], Ctx}.
