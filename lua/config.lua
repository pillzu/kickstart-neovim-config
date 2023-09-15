local M = {}
-- servers installed by mason and mason lsp config
M.mason_servers = {
  tsserver = {
    filetypes = { 'typescript', 'typescriptreact', 'typescript.tsx', 'svelte' },
  },
  svelte = {},
  html = { filetypes = { 'html', 'twig', 'hbs' } },
  cssls = {},
  stylelint_lsp = {},
  eslint = {},
  tailwindcss = {},
  vtsls = {},

  docker_compose_language_service = {},
  dockerls = {},

  prismals = {},

  golangci_lint_ls = {},
  gopls = {},

  pyright = {},
  pylsp = {},

  bufls = {},
  bashls = {},

  clangd = {},
  lua_ls = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
      telemetry = { enable = false },
      workspace = {
        checkThirdParty = false,
        library = {
          [vim.fn.expand '$VIMRUNTIME/lua'] = true,
          [vim.fn.expand '$VIMRUNTIME/lua/vim/lsp'] = true,
          [vim.fn.stdpath 'data' .. '/lazy/ui/nvchad_types'] = true,
          [vim.fn.stdpath 'data' .. '/lazy/lazy.nvim/lua/lazy'] = true,
        },
        maxPreload = 100000,
        preloadFileSize = 10000,
      },
    },
  },
}

-- Tree-sitter-ensure-installed configuration
M.ts_ensure_installed = { 'c', 'cpp', 'go', 'lua', 'python', 'rust', 'tsx', 'typescript', 'vimdoc', 'vim' }


return M
