return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
{
  "neovim/nvim-lspconfig",
  config = function()
    require("nvchad.configs.lspconfig").defaults()
    require "configs.lspconfig"
  end,
},

{
	"williamboman/mason.nvim",
	opts = {
		ensure_installed = {
			"lua-language-server", "stylua",
			"html-lsp", "css-lsp" , "prettier",
            "typescript-language-server", "csharp-language-server",
            "texlab", "bash-language-server", "clangd",
            "tailwindcss-language-server", "python-lsp-server"
		},
	},
},

{
	"nvim-treesitter/nvim-treesitter",
	opts = {
		ensure_installed = {
			"vim", "lua", "vimdoc",
            "html", "css", "javascript", "typescript",
            "c_sharp", "python", "bash", "cpp"
		},
	},
},
    {
        "lervag/vimtex",
        config = function()
            require "configs.latex"
        end,
    }
}
