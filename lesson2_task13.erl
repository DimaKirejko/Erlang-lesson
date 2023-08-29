-module(lesson2_task13).
-export([decode/1]).

decode(Datas) ->
    decode(Datas, []).

decode([], P1) ->
    P1;
decode([{Count, Value} | Etc], P1) ->
    Decod = datasort(Value, Count),
    decode(Etc, P1 ++ Decod).

datasort(_, 0) ->
    [];
datasort(Value, Count) ->
    [Value | datasort(Value, Count - 1)].