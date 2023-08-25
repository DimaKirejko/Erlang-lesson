-module(lesson2_task05).
-export([reverse/1]).

reverse(List) ->
    reverse(List, []).

reverse([], Rev_list) ->
    Rev_list;
reverse([H | T], Rev_List) ->
    reverse(T, [H | Rev_List]).
