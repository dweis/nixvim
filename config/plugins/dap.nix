{
  plugins = {
    dap = {
      enable = true;
      extensions = {
        dap-python.enable = true;
        dap-ui = {
          enable = true;
          controls = {
            enabled = true;
          };
        };
      };
      extensions.dap-virtual-text.enable = true;
    };
  };
}
