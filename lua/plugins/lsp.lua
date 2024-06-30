return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {"mason.nvim"},
    config = function()
      require("mason-lspconfig").setup({
        require("mason-lspconfig").setup_handlers {
          function (server_name)
            require("lspconfig")[server_name].setup({})
          end,
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
    end
  }
}
