
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- Shortcutting split navigation
vim.keymap.set("", "<C-h>", "<C-w>h")
vim.keymap.set("", "<C-j>", "<C-w>j")
vim.keymap.set("", "<C-k>", "<C-w>k")
vim.keymap.set("", "<C-l>", "<C-w>l")

-- Make adjusting split sizes more friendly
vim.keymap.set("n","<C-Left>",":vertical resize +3<Cr>",{noremap = true, silent = true})
vim.keymap.set("n","<C-Right>",":vertical resize -3<Cr>",{noremap = true, silent = true})
vim.keymap.set("n","<C-Up>",":resize +3<Cr>",{noremap = true, silent = true})
vim.keymap.set("n","<C-Down>",":resize +3<Cr>",{noremap = true, silent = true})

-- Change 2 split windows from vertical to horizontal and vice versa
vim.keymap.set("","<leader>th","<C-W>t<C-w>H",{noremap = true})
vim.keymap.set("","<leader>tk","<C-W>t<C-w>K",{noremap = true})

-- Replace all is aliased to S.
vim.keymap.set("n","S",":%s//g<Left><Left>",{noremap = true})

-- Find next interesting marker
vim.keymap.set("n","<leader><leader>","/<++><CR>4xi",{noremap = true})

-- Compile document, be it groff/LaTeX/markdown/etc. Use [[]] for strings rather than "" to avoid issues wwith escape sequences.
vim.keymap.set("","<leader>c",[[<leader>c :w! \| !compiler "<c-r>%"<CR>]])

-- Open a terminal in a split
vim.keymap.set("","<leader>tt", [[:split \| :terminal<CR>]])

--Open corresponding .pdf/.html or preview
vim.keymap.set("","<leader>p",":!opout <c-r>%<CR><CR>")
