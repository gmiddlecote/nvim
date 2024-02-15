-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("aerial").setup({
  -- optionally use on_attach to set keymaps when aerial has attached to a buffer
  on_attach = function(bufnr)
    -- Jump forwards/backwards with '{' and '}'
    vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
    vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
  end,
})
-- You probably also want to set a keymap to toggle aerial
vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")

-- lvim.builtin.treesitter.rainbow.enable = true

-- vim.opt.termguicolors = true
-- vim.cmd.colorscheme("melange")
-- require("weather").setup({})

local function status_line()
  local mode = "%-5{%v:lua.string.upper(v:lua.vim.fn.mode())%}"
  local file_name = "%-.16t"
  local buf_nr = "[%n]"
  local modified = " %-m"
  local file_type = " %y"
  local right_align = "%="
  local line_no = "%10([%l/%L%)]"
  local pct_thru_file = "%5p%%"

  return string.format(
    "%s%s%s%s%s%s%s%s",
    mode,
    file_name,
    buf_nr,
    modified,
    file_type,
    right_align,
    line_no,
    pct_thru_file
  )
end

-- vim.opt.statusline = status_line()
-- vim.opt.winbar = status_line()

-- vim.o.winbar =
--  " %{%v:lua.vim.fn.expand('%F')%}  %{%v:lua.require'nvim-navic'.get_location()%}"

vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"

local rt = require("rust-tools")
rt.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set(
        "n",
        "<C-space>",
        rt.hover_actions.hover_actions,
        { buffer = bufnr }
      )
      -- Code action groups
      vim.keymap.set(
        "n",
        "<Leader>a",
        rt.code_action_group.code_action_group,
        { buffer = bufnr }
      )
    end,
  },
})
