with import <nixpkgs> {};
    
    stdenvNoCC.mkDerivation {
      name = "sample-phoenix-pwa";
      buildInputs = [ elixir
                      nodejs
                      inotify-tools
                      postgresql
                      ngrok ];
    
      MIX_REBAR = "${rebar}/bin/rebar";
      MIX_REBAR3 = "${rebar3}/bin/rebar3";
    }
