let
  pkgs = import <nixpkgs> {};
  inherit (pkgs) stdenv;
in pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    rustup

    pkgconfig
    xorg.libxcb
    gtk2

    # need for test script
    st
    xorg.xmodmap
  ];
}
