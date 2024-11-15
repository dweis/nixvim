{ pkgs, ... }: {
  config = {
    viAlias = true;
    vimAlias = true;
    extraPackages = with pkgs; [
      ripgrep
    ];
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
    ./plugins/alpha.nix
    ./plugins/bufferline.nix
    ./plugins/cmp.nix
    ./plugins/colorizer.nix
    ./plugins/conform.nix
    ./plugins/copilot.nix
    ./plugins/dap.nix
    ./plugins/lsp.nix
    ./plugins/lualine.nix
    ./plugins/statuscol.nix
    ./plugins/telescope.nix
    ./plugins/trim.nix
    ./plugins/treesitter.nix
    ./plugins/which-key.nix
  ];
}
