{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    texliveFull 
    R
    rPackages.ISLR
    rPackages.fs
    rPackages.sass
    rPackages.tidyverse
    rPackages.corrplot
    rPackages.GGally
    rPackages.MCMCglmm
    rPackages.FITSio
    rPackages.LaplacesDemon
  ];
}
