return {
  'nvim-flutter/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
  },
  config = function()
    require('flutter-tools').setup {
      default_run_args = { flutter = '--dart-define-from-file=dart_defines.json --color' },
      widget_guides = { enabled = true },
      closing_tags = { enabled = true },
      lsp = {
        color = {
          enabled = true,
          background = true,
          virtual_text = true,
        },
      },
      ui = {
        terminal = {
          open_cmd = 'split',
        },
      },
    }

    -- Flutter Outline toggle keymap
    vim.keymap.set('n', '<leader>fo', '<cmd>FlutterOutlineToggle<CR>', { desc = 'Flutter Outline Toggle' })
    vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', { desc = 'Flutter code action' })
    vim.keymap.set('n', '<leader>ff', '<cmd>FlutterRun<CR>', { desc = 'Flutter Run' })
    vim.keymap.set('n', '<leader>fr', function()
      vim.cmd 'FlutterLogClear'
      vim.cmd 'FlutterRestart'
    end, { desc = 'Clear Log + Flutter Restart' })

    vim.keymap.set('n', '<leader>fh', function()
      vim.cmd 'FlutterLogClear'
      vim.cmd 'FlutterReload'
    end, { desc = 'Clear Log + Flutter Hot Reload' })
    vim.keymap.set('n', '<leader>fl', '<cmd>FlutterLogToggle<CR>', { desc = 'Flutter Log Toggle' })
    vim.keymap.set('n', '<leader>fc', '<cmd>FlutterLogClear<CR>', { desc = 'Flutter Log Clear' })
  end,
}
