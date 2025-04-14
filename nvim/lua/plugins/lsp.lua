return {
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {
      settings = {
        expose_as_code_action = 'all',
      },
    },
    ft = { 'typescript', 'javascript', 'typescriptreact', 'javascriptreact' },
    config = function()
      require('typescript-tools').setup({
        on_attach = function(event)
          local map = function(keys, func, desc)
            vim.keymap.set(
              'n',
              keys,
              func,
              { buffer = event.buf, desc = 'LSP: ' .. desc }
            )
          end

          map('<leader>lr', ':LspRestart<CR>', 'Restart LSP server')

          map(
            '<leader>la',
            ':TSToolsAddMissingImports<CR>',
            'Add Missing Imports'
          )

          map(
            '<leader>ls',
            ':TSToolsRemoveUnused<CR>',
            'Remove Unused Statements'
          )

          map('<leader>lo', ':TSToolsOrganizeImports<CR>', 'Organise Imports')

          map(
            '<leader>li',
            ':TSToolsRemoveUnusedImports<CR>',
            'Remove Unused Imports'
          )
        end,
      })
    end,
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      { 'j-hui/fidget.nvim', opts = {} },
    },
    config = function()
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', { clear = true }),
        callback = function(event)
          local fzf = require('fzf-lua')
          local map = function(keys, func, desc)
            vim.keymap.set(
              'n',
              keys,
              func,
              { buffer = event.buf, desc = 'LSP: ' .. desc }
            )
          end

          -- Jump to the definition of the word under your cursor.
          --  This is where a variable was first declared, or where a function is defined, etc.
          --  To jump back, press <C-T>.
          map('gd', fzf.lsp_definitions, '[G]oto [D]efinition')

          -- Find references for the word under your cursor.
          map('gr', fzf.lsp_references, '[G]oto [R]eferences')

          -- Jump to the implementation of the word under your cursor.
          --  Useful when your language has ways of declaring types without an actual implementation.
          map('gI', fzf.lsp_implementations, '[G]oto [I]mplementation')

          -- Jump to the type of the word under your cursor.
          --  Useful when you're not sure what type a variable is and you want to see
          --  the definition of its *type*, not where it was *defined*.
          map('<leader>D', fzf.lsp_typedefs, 'Type [D]efinition')

          -- Opens a popup that displays documentation about the word under your cursor
          --  See `:help K` for why this keymap
          map('K', vim.lsp.buf.hover, 'Hover Documentation')

          -- WARN: This is not Goto Definition, this is Goto Declaration.
          --  For example, in C this would take you to the header
          map('gD', fzf.lsp_declarations, '[G]oto [D]eclaration')
        end,
      })

      local capabilities = vim.tbl_deep_extend(
        'force',
        vim.lsp.protocol.make_client_capabilities(),
        require('cmp_nvim_lsp').default_capabilities()
      )

      local servers = {
        lua_ls = {
          settings = {
            Lua = {
              runtime = { version = 'LuaJIT' },
              workspace = {
                checkThirdParty = false,
                library = {
                  '${3rd}/luv/library',
                  unpack(vim.api.nvim_get_runtime_file('', true)),
                },
              },
            },
          },
        },

        -- Astro
        astro = {},

        -- TailwindCSS
        tailwindcss = {},
      }

      require('mason').setup()

      local ensure_installed = vim.tbl_keys(servers)

      require('mason-lspconfig').setup({
        ensure_installed = ensure_installed,
        automatic_installation = false,
        handlers = {
          function(server_name)
            -- NOTE: We don't want mason-lspconfig to autosetup tsserver for us
            -- this is because we use pmizio/typescript-tools.nvim instead
            if server_name == 'ts_ls' then
              return
            end

            local server = servers[server_name] or {}
            require('lspconfig')[server_name].setup({
              cmd = server.cmd,
              settings = server.settings,
              filetypes = server.filetypes,
              capabilities = vim.tbl_deep_extend(
                'force',
                {},
                capabilities,
                server.capabilities or {}
              ),
            })
          end,
        },
      })
    end,
  },
}
