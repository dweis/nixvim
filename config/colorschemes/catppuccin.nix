{
  colorschemes.catppuccin = {
    enable = true;
    settings = {
      flavour = "macchiato";
       no_bold = false;
        no_italic = false;
        no_underline = false;
        transparent_background = true;
        show_end_of_buffer = true;
        integrations = {
          alpha = true;
          cmp = true;
          dashboard = true;
          dap_ui = true;
          native_lsp = {
            enabled = true;
            underlines = {
              errors = [ "undercurl" ];
              hints = [ "undercurl" ];
              warnings = [ "undercurl" ];
              information = [ "undercurl" ];
            };
          };
          notify = true;
          semantic_tokens = true;
          telescope = {
            enabled = true;
            style = "nvchad";
          };
          treesitter = true;
          which_key = true;
        };
      };
    };
}
