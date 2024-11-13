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

    # Colorschem
    ./catppuccin.nix

    # Plugins
    ./bufferline.nix
    ./lualine.nix
    ./telescope.nix
  ];
}
