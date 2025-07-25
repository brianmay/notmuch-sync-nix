{
  description = "notmuch-sync";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";

  outputs =
    {
      self,
      nixpkgs,
    }:
    {
      packages.x86_64-linux.default =
        let
          pkgs = nixpkgs.legacyPackages.x86_64-linux;
          pkg = pkgs.python3Packages.buildPythonPackage {
            pname = "notmuch-sync";
            version = "0.0.1";
            format = "pyproject";
            src = pkgs.fetchFromGitHub {
              owner = "larskotthoff";
              repo = "notmuch-sync";
              rev = "5e9624f5cf1632658b1b5c25866f62973c297e6e";
              hash = "sha256-yvxUQ70idu8pmQjp/FmNj4A5sUL92NVF0jvAp8v44Ss=";
            };
            nativeBuildInputs = [
              pkgs.python3Packages.hatchling
            ];
            propagatedBuildInputs = [
              pkgs.python3Packages.notmuch2
              pkgs.python3Packages.xapian
            ];
            doCheck = false;
          };

        in
        pkg;
    };
}
