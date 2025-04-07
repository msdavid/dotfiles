return {
  "ibhagwan/fzf-lua",
  dependencies = { "echasnovski/mini.icons" },
  opts = {},
  keys = {
    {"<leader>ff", function() require("fzf-lua").files() end, desc = "Find files"},
    {"<leader>fg", function() require("fzf-lua").live_grep() end, desc = "Find files by content (grep)"},
    {"<leader>fk", function() require("fzf-lua").keymaps() end, desc = "Find keymaps"},
    {"<leader>fw", function() require("fzf-lua").grep_cword() end, desc = "Find Current Word"},
    {"<leader>fr", function() require("fzf-lua").resume() end, desc = "Resumes the last search"},
    {"<leader> ", function() require("fzf-lua").buffers() end, desc = "Search Buffers"},
    {"<leader>/", function() require("fzf-lua").lgrep_curbuf() end, desc = "Live grep current bufer"},
  }
}
