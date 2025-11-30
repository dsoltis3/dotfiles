return {

  clangd = {
    cmd = {
      'clangd',
      '--background-index',
      '--clang-tidy',
      '--completion-style=detailed',
      '--all-scopes-completion',
      '--cross-file-rename',
      '--limit-results=0',
      '--extra-arg=-isysroot=' .. vim.fn.systemlist('xcrun --show-sdk-path')[1],
      '--extra-arg=-std=c++17',
    },
  },
  gopls = {},
  -- pyright = {},
  -- rust_analyzer = {},
  -- ... etc. See `:help lspconfig-all` for a list of all the pre-configured LSPs
  --
  -- Some languages (like typescript) have entire language plugins that can be useful:
  --    https://github.com/pmizio/typescript-tools.nvim
  --
  -- But for many setups, the LSP (`ts_ls`) will work just fine
  ts_ls = {
    filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
    on_attach = function(client, bufnr)
      client.server_capabilities.documentFormattingProvider = false
    end,
  },
  --

  lua_ls = {
    -- cmd = { ... },
    -- filetypes = { ... },
    -- capabilities = {},
    settings = {
      Lua = {
        completion = {
          callSnippet = 'Replace',
        },
        -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
        -- diagnostics = { disable = { 'missing-fields' } },
      },
    },
  },

  pyright = {
    on_attach = function(client, bufnr)
      -- disable formatting from pyright if you plan to use black via none-ls
      client.server_capabilities.documentFormattingProvider = false
    end,
  },
}
