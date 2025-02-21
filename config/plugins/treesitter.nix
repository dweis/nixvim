{pkgs,...}: {
  plugins.treesitter = {
    enable = true;
    nixvimInjections = true;
    settings = {
      indent.enable = true;
      highlight.enable = true;
      ensureInstalled = [
        "c"
        "cpp"
        "bash"
        "json"
        "lua"
        "just"
        "make"
        "markdown"
        "nix"
        "odin"
        "python"
        "regex"
        "rust"
        "scala"
        "toml"
        "vim"
        "vimdoc"
        "xml"
        "yaml"
      ];
    };

    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      c
      cpp
      bash
      json
      lua
      just
      make
      markdown
      nix
      odin
      python
      regex
      rust
      scala
      toml
      vim
      vimdoc
      xml
      yaml
    ];
  };
}
