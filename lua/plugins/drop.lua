return {
  {
    "folke/drop.nvim",
    event = "VimEnter",
    config = function()
      math.randomseed(os.time())
      local theme = ({ "stars", "stars", "xmas", "leaves" })[math.random(1, 3)]
      require("drop").setup({
        theme = theme,
        max = 20, -- max number of drops on the screen
        interval = 150, -- every 150ms we update the drops
        screensaver = 1000 * 60 * 5, -- show after 5 minutes. set to false to disable
        -- filetypes = { "dashboard", "alpha", "starter" },
      })
    end,
  },
}
