return {
  -- im-select 는 macOS, Linux, Windows/WSL에서 입력기를 설정하는 데 사용되는 플러그인입니다.
  -- im-auto-switch 는 im-select 와 비슷한 플러그인이지만, 더 많은 설정이 가능합니다.
  -- 동작 방법 검토 후 사용 여부 결정
  -- {
  --   "Old-Farmer/im-autoswitch.nvim",
  --   event = "BufEnter",
  --   opts = {
  --     cmd = {
  --       default_im = "com.apple.keylayout.US", -- 기본 입력기 (예: 미국 키보드 레이아웃)
  --       get_im_cmd = "im-select", -- 현재 입력기를 가져오는 명령어
  --       switch_im_cmd = "im-select com.apple.inputmethod.Korean.2SetKorean", -- 입력기를 전환하는 명령어, {}는 입력기 자리 표시자
  --     },
  --     mode = {
  --       insert = true, -- InsertEnter/InsertLeave에서 입력기 자동 전환
  --       search = true, -- CmdlineEnter/CmdlineLeave(/ 또는 \?)에서 입력기 자동 전환
  --       cmdline_enter_default = false, -- CmdlineEnter(:)에서 기본 입력기로 복귀
  --       cmdline_leave_default = true, -- CmdlineLeave(:)에서 기본 입력기로 복귀
  --     },
  --   },
  -- },

  {
    "keaising/im-select.nvim",
    config = function()
      require("im_select").setup({
        -- IM will be set to `default_im_select` in `normal` mode
        -- For Windows/WSL, default: "1033", aka: English US Keyboard
        -- For macOS, default: "com.apple.keylayout.ABC", aka: US
        -- For Linux, default:
        --               "keyboard-us" for Fcitx5
        --               "1" for Fcitx
        --               "xkb:us::eng" for ibus
        -- You can use `im-select` or `fcitx5-remote -n` to get the IM's name
        default_im_select = "com.apple.keylayout.ABC",

        -- Can be binary's name or binary's full path,
        -- e.g. 'im-select' or '/usr/local/bin/im-select'
        -- For Windows/WSL, default: "im-select.exe"
        -- For macOS, default: "im-select"
        -- For Linux, default: "fcitx5-remote" or "fcitx-remote" or "ibus"
        default_command = "im-select",

        -- Restore the default input method state when the following events are triggered
        set_default_events = { "VimEnter", "FocusGained", "InsertLeave", "CmdlineLeave" },

        -- Restore the previous used input method state when the following events
        -- are triggered, if you don't want to restore previous used im in Insert mode,
        -- e.g. deprecated `disable_auto_restore = 1`, just let it empty
        -- as `set_previous_events = {}`
        set_previous_events = { "InsertEnter" },

        -- Show notification about how to install executable binary when binary missed
        keep_quiet_on_no_binary = false,

        -- Async run `default_command` to switch IM or not
        async_switch_im = true,
      })
    end,
  },
}
