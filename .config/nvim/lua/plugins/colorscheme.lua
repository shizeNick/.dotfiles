return {
    --"metalelf0/black-metal-theme-neovim",
    --
    --config = function()
    --    vim.o.background = "dark"
    --    vim.cmd.colorscheme("immortal")
    --end,
    "thedenisnikulin/vim-cyberpunk",
    config = function ()
        vim.cmd.colorscheme("silverhand")
       
    end,

    --"zenbones-theme/zenbones.nvim", -- if changing colorscheme, 
    --                              -- dont forget to change or comment the config
    --config = function()
    --    vim.opt.termguicolors = true
    --    vim.opt.background = "dark"
    --    --vim.g.zenbones = {
    --    --    lightness = "warm"
    --    --}
    --    vim.cmd.colorscheme("zenbones")
    --end,
    --dependencies = {
    --    "rktjmp/lush.nvim",
    --}
}
