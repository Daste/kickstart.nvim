return {
  {

    'L3MON4D3/LuaSnip',
    -- follow latest release.
    version = 'v2.*', -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = 'make install_jsregexp',
    config = function()
      require('luasnip').config.setup {
        history = true,
        updateevents = 'TextChanged,TextChangedI',
        --        store_selection_keys = '<Tab>',
      }
      ---[[
      -- inoremap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
      vim.cmd [[
        inoremap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
        snoremap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>
        inoremap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
        snoremap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
      ]]
      --]] a vimscript comment begins with
      --FIX: here the keymaps clash! find how to fix it.

      --vim.api.nvim_set_keymap('i', '<Tab>', '<cmd>lua require("luasnip").expand_or_jump()<CR>', { noremap = false, silent = true })
      --vim.api.nvim_set_keymap('i', '<Tab>', '<Plug>luasnip-next-choice', { noremap = true, silent = true })
      --vim.api.nvim_set_keymap('s', '<Tab>', '<Plug>luasnip-next-choice', {})
      --vim.api.nvim_set_keymap('i', '<S-Tab>', '<Plug>luasnip-prev-choice', {})
      --vim.api.nvim_set_keymap('s', '<S-Tab>', '<Plug>luasnip-prev-choice', {})

      local config_dir = vim.fn.stdpath 'config'
      local snippets_dir = config_dir .. '/lua/custom/plugins/LuaSnip/'
      require('luasnip.loaders.from_lua').load { paths = { snippets_dir } }
    end,
  },
}
