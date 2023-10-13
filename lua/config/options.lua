-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.mapleader = " "
-- vim.g.mapleader은 vim에서 사용하는 단축키를 설정하는 옵션입니다. 이 옵션을 사용하면 단축키를 사용하여 명령을 실행할 수 있습니다. 예를 들어, 이 옵션이 " "로 설정되어 있다면, 단축키는 <Space> + <명령> 형식으로 사용할 수 있습니다.

vim.g.maplocalleader = ","

vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20" -- sets vim.opt.guicursor
-- vim.opt.guicursor은 Vim의 GUI 모드에서 커서의 모양을 설정하는 옵션입니다. 위의 예시에서는 블록 커서를 사용하며, 인서트 모드에서는 25% 크기의 수직 방향 커서를 사용하고, 읽기 모드에서는 20% 크기의 수평 방향 커서를 사용하도록 설정하고 있습니다.

-- vim.opt.fillchars = {
--   foldopen = "",
--   foldclose = "",
--   fold = " ",
--   foldsep = " ",
--   diff = "╱",
--   eob = " ",
-- }
--
-- vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
-- vim.o.foldlevelstart = 99
-- vim.o.foldenable = true
-- vim.o.foldcolumn = "0"

vim.g.python3_host_prog = "/Users/user/miniforge3/bin/python"

vim.g.loaded_python_provider = 1
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
-- vim.opt.winbar = "%=%m %f"

-- -- Default shell
-- vim.opt.shell = "/bin/zsh"

-- vim.opt.breakindent = true
