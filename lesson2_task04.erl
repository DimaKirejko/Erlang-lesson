-module(lesson2_task04).
-export([len/1]).

len(List) ->
    len(List, 0).

len([], Coun) ->
    Coun;
len([_H|T], Coun) ->
    len(T, Coun + 1).