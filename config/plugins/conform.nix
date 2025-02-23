{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save = ''
            function(bufnr)
              local disable_filetypes = { c = true, cpp = true, odin = true }
              return {
                timeout_ms = 250,
                lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype]
              }
            end
        '';

      formatters_by_ft = {
        "rust" = ["rustfmt"];
        " " = ["trim_whitespace"];
      };
    };
  };
}
