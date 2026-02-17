return {
  {
    "mrcjkb/rustaceanvim",
    version = "^8",
    lazy = false,
    init = function()
      vim.g.rustaceanvim = {
        server = {
          on_attach = function(_, bufnr)
            vim.keymap.set("n", "<leader>rr", function() vim.cmd.RustLsp("runnables") end, { buffer = bufnr, desc = "Runnables" })
            vim.keymap.set("n", "<leader>rt", function() vim.cmd.RustLsp("debuggables") end, { buffer = bufnr, desc = "Debuggables" })
            vim.keymap.set("n", "<leader>re", function() vim.cmd.RustLsp("expandMacro") end, { buffer = bufnr, desc = "Expand Macro" })
            vim.keymap.set("n", "<leader>rc", function() vim.cmd.RustLsp("openCargo") end, { buffer = bufnr, desc = "Open Cargo.toml" })
          end,
          default_settings = {
            ["rust-analyzer"] = {
              checkOnSave = true,
              check = {
                command = "check",
              },
              cargo = {
                allFeatures = false,
              },
              procMacro = {
                enable = true,
              },
            },
          },
        },
      }
    end,
  },
  {
    "saecki/crates.nvim",
    ft = { "rust", "toml" },
    config = function(_, opts)
      local crates = require("crates")
      crates.setup(opts)
      crates.show()
    end,
  },
}
