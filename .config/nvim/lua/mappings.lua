require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", "kj", "<ESC>")

-- move up and down
map({ "i", "n" }, "<C-k>", "<Up>", { desc = "Move up" })
map({ "i", "n" }, "<C-j>", "<Down>", { desc = "Move down" })

-- quick mappings
map("n", "<leader>gc", "<cmd> Copilot <cr>",{ desc = "Copilot" })
map("n", "<leader>gb", "<cmd> Git blame <cr>",{ desc = "Git blame" })
map("n", "<leader>fr", "<cmd> Ranger <cr>",{ desc = "Ranger" })

-- quicksave
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- quick quit
map({ "n", "i", "v" }, "<C-q>", "<cmd> q <cr>")
