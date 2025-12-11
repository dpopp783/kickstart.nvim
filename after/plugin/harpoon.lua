local harpoon = require 'harpoon'

harpoon:setup()

vim.keymap.set('n', '<leader>a', function()
  harpoon:list():add()
end, { desc = 'add file to harpoon' })
vim.keymap.set('n', '<C-e>', function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set('n', '<leader>jj', function()
  harpoon:list():select(1)
end, { desc = 'jump to file 1' })
vim.keymap.set('n', '<leader>jk', function()
  harpoon:list():select(2)
end, { desc = 'jump to file 2' })
vim.keymap.set('n', '<leader>jl', function()
  harpoon:list():select(3)
end, { desc = 'jump to file 3' })
vim.keymap.set('n', '<leader>j;', function()
  harpoon:list():select(4)
end, { desc = 'jump to file 4' })

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set('n', '<C-S-P>', function()
  harpoon:list():prev()
end)
vim.keymap.set('n', '<C-S-N>', function()
  harpoon:list():next()
end)
