{
  description = "Cool people homepage";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: 
  let
    system = "aarch64-darwin";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    devShells.${system}.default = 
      pkgs.mkShell {
        buildInputs = with pkgs; [
          yarn
          nodePackages.svelte-language-server
          nodePackages.typescript-language-server
          nodePackages.vscode-css-languageserver-bin
          tree
        ];
        shellHook = ''
          exec zsh
        '';
      };
  };
}
