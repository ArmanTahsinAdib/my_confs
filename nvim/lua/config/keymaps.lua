local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set({ "n", "v" }, "+", "<C-a>")
keymap.set({ "n", "v" }, "g+", "g<C-a>")

keymap.set({ "n", "v" }, "g-", "g<C-x>")
keymap.set({ "n", "v" }, "-", "<C-x>")

keymap.set("n", "x", '"_x')
keymap.set("n", "dw", '"_daw')
keymap.set("n", "cw", '"_ciw')

keymap.set({ "n", "v", "i" }, "<C-a>", "<Esc>gg<S-v>G")

keymap.set("n", "<tab>", "<cmd>BufferLineCycleNext<CR>")
keymap.set("n", "<S-tab>", "<cmd>BufferLineCyclePrev<CR>")
keymap.set("n", "sx", "<cmd>BufferLineCloseOthers<CR>")

keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

keymap.set("n", "<C-y>", function()
  local pos = vim.fn.getpos(".") -- Get current cursor position
  vim.cmd("normal! gg=G") -- Indent the whole file
  vim.fn.setpos(".", pos) -- Restore cursor position
end, { silent = true })

keymap.set("n", "<leader>r", "<cmd>RunFile<CR>")

keymap.set("i", "<C-l>", "<Esc>cc")

keymap.set({ "n", "t", "i", "v", "x" }, "<M-i>", "<cmd>ToggleTerm direction=float<CR>", opts)
keymap.set({ "n", "t", "i", "v", "x" }, "<M-h>", "<cmd>ToggleTerm direction=horizontal<CR>", opts)
keymap.set({ "n", "t", "i", "v", "x" }, "<M-v>", "<cmd>ToggleTerm direction=vertical<CR>", opts)
