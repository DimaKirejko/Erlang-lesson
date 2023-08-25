-module(lesson2_task09).
-export([pack/1]).

pack(List) ->
    pack(List, []).

pack([], Acc) ->
    lists:reverse(Acc);
pack([H | T], []) ->
    pack(T, [[H] | Acc]);
pack([H | T], [AccH | Rest]) when H =:= hd(AccH) ->
    pack(T, [[H | AccH] | Rest]);
pack([H | T], Acc) ->
    pack(T, [[H] | Acc]).