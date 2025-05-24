return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({
	  grep = {
            rg_opts = "--column --line-number --no-heading --color=always --smart-case --hidden "..
              "--color=never --hidden -g '!node_modules' -g '!.git' -g '!vendor'"
	  },
	})
	vim.keymap.set("n", "<space>p", "<cmd>lua require('fzf-lua').files()<CR>", { noremap = true, silent = true })
	vim.keymap.set("n", "<space>f", "<cmd>lua require('fzf-lua').live_grep()<CR>", { noremap = true, silent = true })
	vim.keymap.set("v", "<space>g", "<cmd>lua require('fzf-lua').grep_visual()<CR>", { noremap = true, silent = true })
	vim.keymap.set("n", "<leader>b", "<cmd>lua require('fzf-lua').buffers()<CR>", { noremap = true, silent = true })
  end
}
