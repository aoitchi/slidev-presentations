{
  description = "Slidev presentation workspace";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    { nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      formatter.${system} = pkgs.nixfmt-tree;

      devShells.${system}.default = pkgs.mkShell {
        packages = [
          pkgs.nodejs_24
          pkgs.pnpm
          pkgs.nixfmt-tree
          pkgs.codex
        ];

        shellHook = ''
          echo "presentation environment"
          echo "  node: $(node --version)"
          echo "  pnpm: $(pnpm --version)"
        '';
      };
    };
}
