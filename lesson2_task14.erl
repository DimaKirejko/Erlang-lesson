-module(lesson2_task14).
-export([duplicate/1]).

duplicate(List) ->
    duplicate(List, []).

duplicate([], New) ->
    New;
duplicate([H | T], New) ->
    duplicate(T, New ++ [H, H]).