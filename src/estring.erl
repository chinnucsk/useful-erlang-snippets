-module(estring).

-export([splitAtEnd/2]).

%% @doc Take 2 string. Find `SplitSnippet` in `String` 
%%      and return all string content which after `SplitSnippet` in string.
%% @example:
%%
%% > estring:splitAtEnd("Hello, my name is 0xAX", "name").
%%   >> " is 0xAX"
%%
-spec splitAtEnd(String :: string(), SplitSnippet :: string()) -> string().
splitAtEnd(String, SplitSnippet) ->
	StartPosition = string:str(String, SplitSnippet),
    SplitSnippetLength = length(SplitSnippet),
    string:substr(String, StartPosition + SplitSnippetLength).
