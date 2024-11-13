{self, ...}: {
  opts = {
    number = true;
    signcolumn = "yes";

    mouse = "a";

    ignorecase = true;
    smartcase = true;

    list = true;
    # NOTE: .__raw here means that this field is raw lua code
    listchars.__raw = "{ tab = '» ', trail = '·', nbsp = '␣' }";

    tabstop = 2;
    shiftwidth = 2;
    softtabstop = 0;
    expandtab = true;
    smarttab = true;

    cursorline = true;
    ruler = true;

    colorcolumn="80,120";
  };
}
