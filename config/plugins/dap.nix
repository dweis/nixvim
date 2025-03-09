{
  plugins = {
    dap = {
      enable = true;
      adapters = {
        # Add Odin adapter configuration
        servers.odin = "ols";
      };
      configurations = {
        odin = [
          {
            type = "odin";
            request = "launch";
            name = "Launch Odin Program";
            program = ""; # This will be set by the user when debugging
            stopOnEntry = false;
            cwd = "${builtins.getEnv "PWD"}";
          }
        ];
      };
    };
    dap-python.enable = true;
    dap-ui = {
      enable = true;
      settings = {
        controls = {
          enabled = true;
        };
      };
    };
    dap-virtual-text.enable = true;
  };
}
