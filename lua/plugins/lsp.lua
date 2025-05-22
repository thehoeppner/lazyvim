return {
  "neovim/nvim-lspconfig",
  opts = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- change a keymap
    --keys[#keys + 1] = { "K", "<cmd>echo 'hello'<cr>" }
    -- disable a keymap
    --keys[#keys + 1] = { "K", false }
    -- add a keymap
    --keys[#keys + 1] = { "H", "<cmd>echo 'hello'<cr>" }
    --
    keys[#keys + 1] = { "K", false }

    --Code Action
    keys[#keys + 1] = {
      "<leader>a",
      vim.lsp.buf.code_action,
      mode = "n",
      desc = "LSP Code Action",
    }

    keys[#keys + 1] = {
      "<leader>a",
      vim.lsp.buf.code_action,
      mode = "v",
      desc = "LSP Code Action (Visual)",
    }

    --Hover
    keys[#keys + 1] = {
      "<leader>kk",
      vim.lsp.buf.hover,
      mode = "n",
      desc = "LSP Hover",
    }
  end,
}
