return {
{
  "wadackel/vim-dogrun",
  priority = 1000,
  config = function()
    vim.cmd("colorscheme dogrun")

    -- カラースキーム適用後にカーソルの設定を追加
    vim.opt.guicursor = "n-v-c:block-Cursor/lCursor"
    vim.opt.guicursor:append("i-ci:ver100-iCursor")
    vim.opt.guicursor:append("r-cr:hor100")
    vim.opt.guicursor:append("sm:block-blinkwait175-blinkoff150-blinkon175")
  end,
},
  -- LazyVimのデフォルトカラースキーム設定を上書き
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dogrun",
    },
  },
}
