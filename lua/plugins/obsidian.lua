return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
        {
          name = "Personal",
          path = "~/Documents/Second Brain/2. Areas/Obsidian",
          overrides = {
            notes_subdir = "1. Projects/Notes",
          },
        },
      },
    daily_notes = {
      -- Optional, if you keep daily notes in a separate directory.
      folder = "2. Areas/Personal Routine/Daily Notes",
      -- Optional, if you want to change the date format for the ID of daily notes.
      date_format = "%Y-%m-%d",
      -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
      template = "3. Resources/Templates/Template Daily Note.md"
    },
    -- Optional, for templates
    templates = {
      folder = "3. Resources/Templates/",
      date_format = "%Y-%m-%d",
      time_format = "%H:%M",
    },
  },
  -- Optional, customize how note file names are generated given the ID, target directory, and title.
  ---@param spec { id: string, dir: obsidian.Path, title: string|? }
  ---@return string|obsidian.Path The full path to the new note.
  note_path_func = function(spec)
    -- This is equivalent to the default behavior.
    local path = spec.dir / tostring(spec.id)
    return path:with_suffix(".md")
  end,
  vim.keymap.set('n', '<C-d>', ':ObsidianDailies<CR>', {}),
  vim.keymap.set('n', '<C-o>', ':ObsidianOpen<CR>', {}),
  vim.keymap.set('n', '<C-q>', ':ObsidianQuickSwitch<CR>', {})
}
