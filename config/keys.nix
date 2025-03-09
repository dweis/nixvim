{
  # Set leader key
  globals.mapleader = " ";

  keymaps = [
    # Telescope
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<cr>";
    }
    {
      mode = "n";
      key = "<leader>fg";
      action = "<cmd>Telescope live_grep<cr>";
    }
    {
      mode = "n";
      key = "<leader>fb";
      action = "<cmd>Telescope buffers<cr>";
    }
    {
      mode = "n";
      key = "<leader>fh";
      action = "<cmd>Telescope help_tags<cr>";
    }

    # DAP keymaps
    {
      mode = "n";
      key = "<leader>db";
      action = "<cmd>DapToggleBreakpoint<cr>";
      options = {
        desc = "Toggle Breakpoint";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>dc";
      action = "<cmd>DapContinue<cr>";
      options = {
        desc = "Start/Continue Debugging";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>di";
      action = "<cmd>DapStepInto<cr>";
      options = {
        desc = "Step Into";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>do";
      action = "<cmd>DapStepOver<cr>";
      options = {
        desc = "Step Over";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>dO";
      action = "<cmd>DapStepOut<cr>";
      options = {
        desc = "Step Out";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>dt";
      action = "<cmd>DapTerminate<cr>";
      options = {
        desc = "Terminate Debugging";
        silent = true;
      };
    }
    {
      mode = "n";
      key = "<leader>du";
      action = "<cmd>lua require('dapui').toggle()<cr>";
      options = {
        desc = "Toggle DAP UI";
        silent = true;
      };
    }
  ];
}
