require('packer').startup({function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Plugins
    use 'lewis6991/impatient.nvim'
    use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end }
    use {'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons'}
    use 'nvim-telescope/telescope.nvim'
    use 'terrortylor/nvim-comment'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use { 'nvim-treesitter/nvim-treesitter', requires = { {'nvim-lua/plenary.nvim'} }}
    use 'Mofiqul/dracula.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'L3MON4D3/LuaSnip'
    use 'onsails/lspkind-nvim'

end,
config = {
    display = {
        open_fn = function()
            return require('packer.util').float({ border = 'single' })
        end
    }
}
}
)
-- require('packer')
