-- basics
-- 语法高亮
vim.cmd('syntax on')
-- 文件类型加载插件缩进
vim.cmd('filetype plugin indent on')
-- 展示行号
vim.opt.number          = true
-- 相对行号
vim.opt.relativenumber  = true
-- 24Bit颜色
vim.opt.termguicolors   = true
-- 缩进宽度对齐到 shiftwidth 的整数倍
vim.opt.shiftround      = true
-- 交换文件写入磁盘的更新时间
vim.opt.updatetime      = 100
-- 高亮光标行
vim.opt.cursorline      = true
-- 自动写入
vim.opt.autowrite       = true
if (vim.fn.has('termguicolors') == 1) then
	vim.opt.termguicolors = true
end
-- tab
vim.opt.autoindent      = true
vim.opt.tabstop         = 2
vim.opt.shiftwidth      = 2
vim.opt.softtabstop     = 2
vim.opt.mouse       = 'a'
vim.opt.expandtab   = true
vim.opt.autowrite   = false
vim.opt.formatoptions = ''

-- 快捷键
require("core.keymaps")

--require("core.dvorak")	-- delete this line if you don't like using DVORAK
require("core.plugins")

require("core.gui")
-- disable some useless standard plugins to save startup time
-- these features have been better covered by plugins
vim.g.loaded_matchparen        = 1
vim.g.loaded_matchit           = 1
vim.g.loaded_logiPat           = 1
vim.g.loaded_rrhelper          = 1
vim.g.loaded_tarPlugin         = 1
vim.g.loaded_gzip              = 1
vim.g.loaded_zipPlugin         = 1
vim.g.loaded_2html_plugin      = 1
vim.g.loaded_shada_plugin      = 1
vim.g.loaded_spellfile_plugin  = 1
vim.g.loaded_netrw             = 1
vim.g.loaded_netrwPlugin       = 1
vim.g.loaded_tutor_mode_plugin = 1
vim.g.loaded_remote_plugins    = 1
require("core.theme")

require('image').setup {
	min_padding = 5,
	show_label = true,
	render_using_dither = true,
}

-- Load plugin configs
-- plugins without extra configs are configured directly here
require("impatient")

require("configs.autocomplete").config()
require("configs.symbols_outline").config()
require("configs.statusline").config()
require("configs.filetree").config()
require("configs.treesitter").config()
require("configs.startscreen").config()
require("configs.git").config()
require("configs.bufferline").config()
require("configs.grammar").config()
require("configs.terminal").config()
