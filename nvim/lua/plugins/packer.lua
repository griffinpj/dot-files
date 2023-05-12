-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use { "bluz71/vim-moonfly-colors", as = "moonfly", config = function () 
        vim.cmd('colorscheme moonfly')
    end  }

    use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use ('nvim-treesitter/nvim-treesitter-context')
    use ('nvim-treesitter/playground')
    use ('theprimeagen/harpoon')
    use ('mbbill/undotree')
    use ('tpope/vim-fugitive')
    use ('tpope/vim-commentary')
    use ('mhinz/vim-startify')

    -- Better Find and Replace '\ + r + a
    use ('kqito/vim-easy-replace')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
        }

    }
    use {
      'samodostal/image.nvim',
      requires = {
        'nvim-lua/plenary.nvim',
        { 'm00qek/baleia.nvim', tag = 'v1.3.0' }
      }
    }

end)
