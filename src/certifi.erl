-module(certifi).
%% Causes the parse transformation function Module:parse_transform/2 
%% to be applied to the parsed code before the code is checked for errors.
-compile({parse_transform, certifi_pt}).

%% @doc CACertFile gives the path to the file with an X.509 certificate list
-export([cacerts/0]).

%% @doc CACerts builds an X.509 certificate list containing the Mozilla CA
%% Certificate that can then be used via the cacerts setting in ssl options
%% passed to the connect function.
-spec cacerts() -> [binary(),...].
cacerts() ->
    ok.
