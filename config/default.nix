{
  config = {
    viAlias = true;
    vimAlias = true;
  };

  # Import all your configuration modules here
  imports = [
    # Options
    ./options.nix

    # Keys
    ./keys.nix

    # Colorschemes
    ./colorschemes/catppuccin.nix

    # Plugins
    ./plugins/bufferline.nix
    ./plugins/cmp.nix
    ./plugins/copilot.nix
    ./plugins/lsp.nix
    ./plugins/lualine.nix
    ./plugins/telescope.nix
    ./plugins/trim.nix
    ./plugins/treesitter.nix
  ];
}
