return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000, -- Load this early since it is a colorscheme
    config = function()
      require("cyberdream").setup({
        -- Set light or dark variant
        variant = "default",

        -- Enable transparent background
        transparent = true,

        -- Reduce the overall saturation of colours for a more muted look
        -- saturation = 1,

        -- Enable italics comments
        italic_comments = true,

        -- Replace all fillchars with ' ' for the ultimate clean look
        hide_fillchars = false,

        -- Apply a modern borderless look to pickers like Telescope, Snacks Picker & Fzf-Lua
        borderless_pickers = false,

        -- Set terminal colors used in `:terminal`
        terminal_colors = true,

        -- Improve start up time by caching highlights.
        cache = false,

        -- Override highlight groups with your own colour values
        highlights = {
          Comment = { fg = "#696969", bg = "NONE", italic = true },
        },

        -- Override a highlight group entirely using the built-in colour palette
        overrides = function(colors)
          return {
            Comment = { fg = colors.red, bg = "NONE", italic = true },
            ["@property"] = { fg = colors.magenta, bold = true },

            -- ==========================================
            -- CUSTOM LINE NUMBER COLORS ADDED HERE
            -- ==========================================
            -- Standard line numbers
            LineNr = { fg = "#C9A554", bg = "NONE" },

            -- Active line number
            CursorLineNr = { fg = "#6C9861", bg = "NONE", bold = true },

            -- Optional: Relative line numbers above/below (uncomment to use)
            -- LineNrAbove = { fg = colors.grey },
            -- LineNrBelow = { fg = colors.grey },
            -- ==========================================
          }
        end,

        -- Override colors
        colors = {
          bg = "#685742",
          green = "#00ff00",
          dark = {
            magenta = "#ff00ff",
            fg = "#CCB57B",
          },
          light = {
            red = "#ff5c57",
            cyan = "#5ef1ff",
          },
        },

        -- Disable or enable colorscheme extensions
        extensions = {
          telescope = true,
          notify = true,
          mini = true,
        },
      })

      -- Automatically activate the colorscheme on startup
      vim.cmd("colorscheme cyberdream")
    end,
  },

  -- Alternatively, you can use 'default' to set all extensions at once
  -- cache = true, -- Use cache for fastest loads
  -- extensions = {
  --     default = false, -- Disable all by default
  -- base = true, -- Enable all built-in hl groups (you probably want this)
  --
  --     -- Now enable only what you want to use
  --telescope = true,
  --cmp = true,
  --gitsigns = true,
  --},
}
