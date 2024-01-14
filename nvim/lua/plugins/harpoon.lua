return {
  'ThePrimeagen/harpoon',
  branch = "harpoon2",
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    local harpoon = require("harpoon")

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end, { desc = "Add to harpoon"})
    vim.keymap.set("n", "<leader>ø", function() harpoon:list():remove() end, { desc = "Remove from harpoon"})
    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Toggle harpoon" })

    --vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
    --vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
    --vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
    --vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end, { desc = "Toggle previous harpoon" })
    vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end, { desc = "Toggle next harpoon" })
  end
}
