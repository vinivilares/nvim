return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup()
    local options = { theme = "catppuccin" }
  end
}
