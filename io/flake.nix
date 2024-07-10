{
  description = "A Nix-flake-based IO development environment";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs =
    { self
    , flake-utils
    , nixpkgs
    }:
    flake-utils.lib.eachDefaultSystem (system:
    let
      overlays = [
        (self: super: {
          ruby = super.io;
        })
      ];
      pkgs = import nixpkgs { inherit overlays system; };
    in
    {
      devShells.default = pkgs.mkShell {
        buildInputs = with pkgs; [
            io
        ];

        shellHook = ''
          ${pkgs.ruby}/bin/io --version
        '';
      };
    });
}
