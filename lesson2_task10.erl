-module(lesson2_task10).
-export([encode/1]).

    encode(Datas) ->
        encode(Datas, []).

encode([], D) ->
    lists:reverse(D);
encode([H | T], []) ->
    encode(T, [{1, H}]);
encode([H | T], [{Num, H} | Res]) ->
    encode(T, [{Num + 1, H} | Res]);
encode([H | T], D) ->
encode(T, [{1, H} | D]).