-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    --[[ ["<leader>bh"] = { "<cmd>tabPrevious<cr>", desc = "Left tab" },
    ["<leader>bl"] = { "<cmd>tabNext<cr>", desc = "Right tab" },
    ["<leader>bH"] = {
      function()
        require("astronvim.utils.buffer").close_all_to_left()
      end,
      desc = "Close all to the left",
    },
    ["<leader>bL"] = {
      function()
        require("astronvim.utils.buffer").close_all_to_right()
      end,
      desc = "Close all to the right",
    }, ]]

    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
    ["<C-d>"] = { "<C-d>zz", desc = "Half a screen down" },
    ["<C-u>"] = { "<C-u>zz", desc = "Half a screen up" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    ["<leader>y"] = { '"+y', desc = "Copy to clipboard" },
    ["<leader>Y"] = { 'gg"+yG', desc = "Copy file to clipboard" },
    ["<C-j>"] = { ":m '>+1<cr>gv=gv", desc = 'Move down' },
    ["<C-k>"] = { ":m '<-2<cr>gv=gv", desc = 'Move up' }
  }
}
