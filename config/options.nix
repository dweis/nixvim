{self, ...}: {
  opts = {
    number = true;
    signcolumn = "yes";

    mouse = "a";

    ignorecase = true;
    smartcase = true;

    list = true;
    listchars = {
      tab = "» ";
      trail = "·";
      nbsp = "␣";
    };

    tabstop = 2;
    shiftwidth = 2;
    softtabstop = 0;
    expandtab = true;
    smarttab = true;

    cursorline = true;
    ruler = true;

    incsearch = true;

    swapfile = false;

    wrap = false;

    colorcolumn="80,120";

    clipboard = "unnamedplus";
  };
}
