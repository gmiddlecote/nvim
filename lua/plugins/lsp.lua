--return {
-- add symbols-outline
--{
--  "simrat39/symbols-outline.nvim",
--  cmd = "SymbolsOutline",
--  keys = {
--    { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" },
--  },
--  opts = {
--    -- add your options that should be passed to the setup() function here
--    position = "right",
--  },
--  settings = {
--    Lua = {
--      diagnostics = { globals = { "vim" } },
--    },
--  },
--},
--
-- return { "dundalek/lazy-lsp.nvim", requires = { "neovim/nvim-lspconfig" }
--

return {
  "VonHeikemen/lsp-zero.nvim",
  branch = "v3.x",
  require = {
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
    -- {'williamboman/mason.nvim'},
    -- {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    { "neovim/nvim-lspconfig" },
    -- Autocompletion
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "L3MON4D3/LuaSnip" },
  },
}
