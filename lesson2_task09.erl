-module(lesson2_task09).
-export([pack/1]).

pack(List) ->
    pack(List, []).

pack([], P1) ->
    lists:reverse(P1);
pack([H | T], []) ->
    pack(T, [[H]]);
pack([H | T], [CheckList | Body]) when H =:= hd(CheckList) ->
    pack(T, [[H | CheckList] | Body]);
pack([H | T], P1) ->
    pack(T, [[H] | P1]).