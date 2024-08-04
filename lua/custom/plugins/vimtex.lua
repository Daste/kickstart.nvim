return {
  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      --WARN:: some options depend on the machine I'm using, and should sit in a not commited file
      -- things like the pdf viewer.
      -- I have put it in lua/machine-specific/pdf-viewer.lua

      --[[ 
      -- TODO: move the following to a lua/machine-specific/pdf-viewer.lua on windows machines

      vim.g.vimtex_view_general_viewer = 'SumatraPDF'
      vim.g.vimtex_view_general_options = '-reuse-instance -forward-search @tex @line @pdf'
      --]]
      vim.g.Tex_DefaultTargetFormat = 'pdf'
      vim.g.tex_flavor = 'latex'
    end,
  },
}
