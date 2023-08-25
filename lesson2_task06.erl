-module(lesson2_task06).
-export([is_palindrome/1]).

is_palindrome(List) ->
    is_palindrome(List, [], []).

is_palindrome([], Rev_list, Origen_list) ->
    Origen_list =:= Rev_list;

is_palindrome([H | T], Rev_List, Origen_list) ->
    is_palindrome(T, [H | Rev_List], Origen_list ++ [H]).