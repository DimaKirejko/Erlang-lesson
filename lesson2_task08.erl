-module(lesson2_task08).
-export([compress/1]).

    compress(List) ->
        compress(List, undefined, []).

    compress([], _P1, P2) ->
        P2;
    compress([H | T], P1, P2) when P1 =:= H ->
        compress(T, H, P2);
    compress([H | T], P1, P2) when P1 =/= H ->
        compress(T, H, P2 ++ [H]).
    

  