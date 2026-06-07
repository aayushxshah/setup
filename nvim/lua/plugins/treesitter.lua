return
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.config").setup({
                ensure_installed = { "python", "rust", "lua" },
                highlight = { enable = true },
                indent = { enable = true },
      })
  end,
  }
