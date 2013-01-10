-module(efile).

-export([get_all_files_from_directory/1]).

%% @doc get all files from directory and sub-directory
-spec get_all_files(Dir :: string()) -> [string()].
get_all_files(Dir) ->
    FindFiles = fun(F, Acc) -> [F | Acc] end,
    filelib:fold_files(Dir, ".*", true, FindFiles, []).
