return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    cmd = "CopilotChat",
    opts = function()
      local user = vim.env.USER or "User"
      user = user:sub(1, 1):upper() .. user:sub(2)
      return {
        model = "claude-3.5-sonnet",
        auto_insert_mode = true,
        show_help = true,
        question_header = "  " .. user .. " ",
        answer_header = "  Copilot ",
        window = {
          width = 0.4,
        },
        -- See Configuration section for rest
        prompts = {
          -- See Prompts section for rest
          Explain = {
            prompt = "/COPILOT_EXPLAIN Write an explanation for the active selection as paragraphs of text. Plaease answer only in Korean",
          },
          Review = {
            prompt = "/COPILOT_REVIEW Review the selected code. Please answer only in Korean",
          },
          Fix = {
            prompt = "/COPILOT_GENERATE There is a problem in this code. Rewrite the code to show it with the bug fixed. Please answer only in Korean",
          },
          Optimize = {
            prompt = "/COPILOT_GENERATE Optimize the selected code to improve performance and readablilty. Please answer only in Korean",
          },
          Docs = {
            prompt = "/COPILOT_GENERATE Please add documentation comment for the selection. Please answer only in Korean",
          },
          Commit = {
            prompt = "Write commit message for the change with commitizen convention. Make sure the title has maximum 50 characters and message is wrapped at 72 characters. Wrap the whole message in code block with language gitcommit. Please answer only in Korean",
          },
          CommitStaged = {
            prompt = "Write commit message for the change with commitizen convention. Make sure the title has maximum 50 characters and message is wrapped at 72 characters. Wrap the whole message in code block with language gitcommit. Please answer only in Korean",
          },
          Refactor = {
            prompt = "Please refactor the following code to improve its clarity and readability. Please answer only in Korean",
          },
          BetterNamings = {
            prompt = "Please suggest better names for the following variables and functions.",
          },
        },
      }
    end,
  },
}
