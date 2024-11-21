-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- HACK: recommended shell is bash
vim.opt.shell = "/opt/homebrew/bin/bash"
vim.opt.encoding = "utf-8"
vim.opt.fileencodings = "ucs-bom,utf-8,euc-kr,latin1"

vim.g.mapleader = " "
-- vim.g.mapleader은 vim에서 사용하는 단축키를 설정하는 옵션입니다. 이 옵션을 사용하면 단축키를 사용하여 명령을 실행할 수 있습니다. 예를 들어, 이 옵션이 " "로 설정되어 있다면, 단축키는 <Space> + <명령> 형식으로 사용할 수 있습니다.

vim.g.maplocalleader = ","

vim.opt.termguicolors = true

vim.opt.guicursor =
  "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,i-ci-ve:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- 커서가 이동할 때 일치하는 괄호를 하이라이트합니다.
vim.opt.showmatch = true

vim.opt.wrap = true -- sets vim.opt.wrap

vim.diagnostic.config({
  underline = true,
  virtual_text = false,
  signs = true,
  update_in_insert = false,
})

vim.opt.breakindent = true
-- vim.opt.showbreak = string.rep(" ", 4) -- Make it so that long lines wrap smartly
vim.opt.linebreak = true

-- For edgy nvim
vim.opt.laststatus = 3
vim.opt.splitkeep = "screen"

-- neovide 관련 setings
if vim.g.neovide then
  -- vim.o.guifont = "Fira Code, Symbols Nerd Font Mono:h14.5"
  vim.o.guifont = "JetBrainsMono Nerd Font,Symbols Nerd Font Mono:h14.5"

  -- vim.o.cmdheight는 Neovim의 명령줄 높이를 설정하는 옵션입니다.
  -- 기본적으로 명령줄은 화면 하단에 위치하며, 사용자가 명령어를 입력하거나 상태 메시지를 표시하는 데 사용됩니다.
  -- 이 옵션을 0으로 설정하면 명령줄이 화면에서 사라지게 됩니다. 이는 화면 공간을 최대한 활용하기 위해 사용될 수 있습니다.
  -- 하지만 명령줄이 사라지면 명령어 입력이나 상태 메시지를 확인할 수 없기 때문에 주의가 필요합니다.
  -- 이 설정은 특히 GUI 환경에서 Neovim을 사용할 때 유용할 수 있습니다. 예를 들어, Neovide와 같은 GUI 클라이언트에서 화면 공간을 절약하기 위해 사용될 수 있습니다.
  -- 요약하면, vim.o.cmdheight = 0은 명령줄을 숨겨서 화면 공간을 최대한 활용하려는 설정입니다.
  vim.o.cmdheight = 0

  -- Put anything you want to happen only in Neovide here
  vim.g.neovide_padding_top = 10
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_left = 0

  vim.g.neovide_confirm_quit = true

  -- Change the scale factor
  vim.g.neovide_scale_factor = 1.0

  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end

  vim.keymap.set("n", "<C-=>", function()
    change_scale_factor(1.05)
  end)
  vim.keymap.set("n", "<C-->", function()
    change_scale_factor(1 / 1.05)
  end)
  vim.keymap.set("n", "<C-0>", function()
    vim.g.neovide_scale_factor = 1.0
  end)

  vim.g.transparency = 0.8
  vim.g.neovide_transparency = 0.8
  vim.g.neovide_window_blurred = true
  -- local alpha = function()
  --   return string.format("%x", math.floor(255 * (vim.g.transparency or 0.8)))
  -- end
  -- vim.g.neovide_background_color = "#1A1B27" .. alpha()

  -- Change transparency
  local change_transparency = function(delta)
    vim.g.neovide_transparency = vim.g.neovide_transparency + delta
  end

  vim.keymap.set({ "n", "v", "o" }, "<D-]>", function()
    change_transparency(0.1)
  end)
  vim.keymap.set({ "n", "v", "o" }, "<D-[>", function()
    change_transparency(-0.1)
  end)

  vim.opt.linespace = 4
  vim.g.neovide_cursor_vfx_mode = "sonicboom"

  vim.opt.winblend = 70
  vim.opt.pumblend = 70
  -- Floating Blur Amount
  vim.g.neovide_floating_blur_amount_x = 30.0
  vim.g.neovide_floating_blur_amount_y = 30.0

  -- anti aliasing
  vim.g.neovide_cursor_antialiasing = true

  -- animate in insert mode
  vim.g.neovide_cursor_animate_in_insert_mode = true

  -- hiding mouse cursor when typing
  vim.g.neovide_hide_mouse_when_typing = false

  -- copy and paste options
  vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
  vim.keymap.set("v", "<D-c>", '"+y') -- Copy
  vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
  vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
  vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
  vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode

  -- Neovide IME settings
  local function set_ime(args)
    if args.event:match("Enter$") then
      vim.g.neovide_input_ime = true
    else
      vim.g.neovide_input_ime = false
    end
  end

  local ime_input = vim.api.nvim_create_augroup("ime_input", { clear = true })

  vim.api.nvim_create_autocmd({ "InsertEnter", "InsertLeave" }, {
    group = ime_input,
    pattern = "*",
    callback = set_ime,
  })

  vim.api.nvim_create_autocmd({ "CmdlineEnter", "CmdlineLeave" }, {
    group = ime_input,
    pattern = "[/\\?]",
    callback = set_ime,
  })
end

vim.opt.mousescroll = "ver:2,hor:6"

--NOTE: this is macbook setting
vim.g.python3_host_prog = "/Users/user/.pyenv/versions/3.10.2/bin/python"

vim.g.loaded_python_provider = 1
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
-- vim.opt.winbar = "%=%m %f"

-- python
vim.g.lazyvim_python_lsp = "basedpyright"
vim.g.lazyvim_python_ruff = "ruff"
