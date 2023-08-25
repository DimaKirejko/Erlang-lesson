-module(lesson2_task15).
-export([replicate/2]).

replicate(List, Num) ->
    Count = Num,
    replicate(List, Num, [], Count).

replicate([], _Num, New_L, _Count) ->
    New_L;
replicate([_H | T], Num, New_L, Count) when Num =:= 0 ->
    NewNum = Count,
    replicate(T, NewNum, New_L, Count);
replicate([H | T], Num, New_L, _Count) when Num =/= 0 ->
    NewNum = Num - 1,
    replicate([H | T], NewNum, New_L ++ [H], _Count).
