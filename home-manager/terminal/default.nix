{inputs, ...}: {
  imports = [
    ./modules/nushell.nix
    ./modules/neovim.nix
    ./modules/nh.nix
    ./modules/reop.nix
    ./modules/tmux.nix
  
    inputs.reop.homeManagerModules.reop
    inputs.nvf.homeManagerModules.default
  ];
}
