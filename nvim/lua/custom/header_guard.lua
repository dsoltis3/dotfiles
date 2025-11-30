vim.api.nvim_create_autocmd('BufNewFile', {
  pattern = '*.hpp',
  callback = function()
    local filename = vim.fn.expand('%:t'):upper():gsub('%.', '_'):gsub('[^A-Z0-9_]', '')

    local lines = {
      '#ifndef ' .. filename,
      '#define ' .. filename,
      '',
      '',
      '#endif // ' .. filename,
    }

    vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
    vim.api.nvim_win_set_cursor(0, { 4, 0 }) -- put cursor between the guards
  end,
})
