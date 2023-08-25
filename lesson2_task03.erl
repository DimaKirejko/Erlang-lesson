-module(lesson2_task03).
-export([element_at/2]).

element_at(List, N) ->
 element_at(List, N, 1).

element_at([H | _], N, Num) when N=:=Num ->
 H;

element_at([], _N, _Num) ->
    undefined;

element_at([_ | T], N, Num) ->
 element_at(T, N, Num + 1).
