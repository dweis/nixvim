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
    ./plugins/cmp.nix
    ./plugins/lsp.nix
    ./plugins/copilot.nix
    ./plugins/bufferline.nix
    ./plugins/lualine.nix
    ./plugins/telescope.nix
  ];
}
