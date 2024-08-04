local config_dir = vim.fn.stdpath 'config'
local snippets_dir = config_dir .. '/lua/custom/plugins/LuaSnip/'
require('luasnip.loaders.from_lua').load { paths = { snippets_dir } }
return {}
