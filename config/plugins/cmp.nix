let
  selectOpts = "{behavior = cmp.SelectBehavior.Select}";
in
{
  plugins = {
    cmp = {
      enable = true;
      settings = {
        experimental = { ghost_text = true; };
        sources = [
          { name = "copilot"; }
          { name = "nvim_lsp"; }
          { name = "path"; }
          { name = "buffer"; }
        ];

        mapping = {
          "<Up>" = "cmp.mapping.select_prev_item(${selectOpts})";
          "<Down>" = "cmp.mapping.select_next_item(${selectOpts})";

          "<C-p>" = "cmp.mapping.select_prev_item(${selectOpts})";
          "<C-n>" = "cmp.mapping.select_next_item(${selectOpts})";
          "<C-j>" = "cmp.mapping.select_next_item(${selectOpts})";
          "<C-k>" = "cmp.mapping.select_prev_item(${selectOpts})";

          "<C-u>" = "cmp.mapping.scroll_docs(-4)";
          "<C-d>" = "cmp.mapping.scroll_docs(4)";

          "<C-e>" = "cmp.mapping.abort()";
          "<C-y>" = "cmp.mapping.confirm({select = true})";
          "<CR>" = "cmp.mapping.confirm({select = false})";

          "<C-f>" = ''
            cmp.mapping(
              function(fallback)
                if luasnip.jumpable(1) then
                  luasnip.jump(1)
                else
                  fallback()
                end
              end,
              { "i", "s" }
            )
          '';

          "<C-b>" = ''
            cmp.mapping(
              function(fallback)
                if luasnip.jumpable(-1) then
                  luasnip.jump(-1)
                else
                  fallback()
                end
              end,
              { "i", "s" }
            )
          '';

          "<Tab>" = ''
            cmp.mapping(
              function(fallback)
                local col = vim.fn.col('.') - 1

                if cmp.visible() then
                  cmp.select_next_item(select_opts)
                elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
                  fallback()
                else
                  cmp.complete()
                end
              end,
              { "i", "s" }
            )
          '';

          "<S-Tab>" = ''
            cmp.mapping(
              function(fallback)
                if cmp.visible() then
                  cmp.select_prev_item(select_opts)
                else
                  fallback()
                end
              end,
              { "i", "s" }
            )
          '';
        };
        window = {
            completion = {
              border = "rounded";
              winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None";
              zindex = 1001;
              scrolloff = 0;
              colOffset = 0;
              sidePadding = 1;
              scrollbar = true;
            };
            documentation = {
              border = "rounded";
              winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None";
              zindex = 1001;
              maxHeight = 20;
            };
          };
      };
    };
    cmp-nvim-lsp = {
      enable = true;
    };
    cmp-path = {
      enable = true;
    };
    cmp-buffer = {
      enable = true;
    };
  };
}
