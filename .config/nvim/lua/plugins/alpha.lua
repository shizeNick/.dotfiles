  return {
    "goolord/alpha-nvim",
    -- dependencies = { 'echasnovski/mini.icons' },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local dashboard = require("alpha.themes.dashboard")
      -- available: devicons, mini, default is mini
      -- if provider not loaded and enabled is true, it will try to use another provider
      --startify.file_icons.provider = "devicons"
      require("alpha").setup(
        dashboard.config
      )
      dashboard.section.buttons.val = {
          dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
          dashboard.button( "f", "  > Find file", ":cd $HOME/| Telescope find_files<CR>"),
          dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
          dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
          dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
        }
    end,
  }
