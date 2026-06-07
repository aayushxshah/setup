return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright", "rust_analyzer" },
      })
    end
    },
    {
      "neovim/nvim-lspconfig",
      config = function()
      -- nvim-lspconfig provides the configs
      -- Your vim.lsp.enable() call will load them
        require("lspconfig")
      end
    },
}
