return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Mason base plugin
  use {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  }

  -- Formatter plugin
  use {
    'mhartington/formatter.nvim',
    config = function()
      local util = require("formatter.util")

      require("formatter").setup({
        logging = true,
        log_level = vim.log.levels.WARN,
        filetype = {
          javascript = {
            require("formatter.filetypes.javascript").prettier,
          },
          lua = {
            require("formatter.filetypes.lua").stylua,
          },
          ["*"] = {
            require("formatter.filetypes.any").remove_trailing_whitespace,
          }
        }
      })

      -- Set up autoformatting
      local augroup = vim.api.nvim_create_augroup
      local autocmd = vim.api.nvim_create_autocmd

      augroup("__formatter__", { clear = true })
      autocmd("BufWritePost", {
        group = "__formatter__",
        command = ":FormatWrite",
      })

      -- Key mappings
      vim.keymap.set('n', '<leader>f', ':Format<CR>', { silent = true })
      vim.keymap.set('n', '<leader>F', ':FormatWrite<CR>', { silent = true })
    end
  }


  -- Telescope and its dependencies
use {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  requires = {
    {'nvim-lua/plenary.nvim'},
    {'nvim-tree/nvim-web-devicons'},
  },
  config = function()
    local telescope = require('telescope')
    local builtin = require('telescope.builtin')

    telescope.setup({
      defaults = {
        -- Add these settings for better performance
        file_ignore_patterns = {
          "node_modules",
          ".git",
          "target",
          "build",
          "dist",
          ".next",
          "vendor",
          "*.lock"
        },
        vimgrep_arguments = {
          'rg',
          '--color=never',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
          '--smart-case',
          '--hidden',
          '--glob=!.git/*'
        },
        -- Limit the number of files shown
        previewer = false,
        layout_config = {
          horizontal = {
            preview_width = 0.5,
            results_width = 0.5,
          },
          width = 0.87,
          height = 0.80,
          preview_cutoff = 120,
        },
      },
      pickers = {
        find_files = {
          hidden = true,
          no_ignore = false,
          follow = true,
          -- Limit results for better performance
          find_command = { "fd", "--type", "f", "--strip-cwd-prefix" }
        }
      }
    })

    -- Same keymaps as before
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Help tags' })
    vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Git files' })
  end
}

end)


