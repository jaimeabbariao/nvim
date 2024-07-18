return {
  {
    'sainnhe/sonokai',
    -- lazy = false,
    -- priority = 1000,
    enabled = false,
    config = function()
      vim.g.sonokai_style = 'andromeda'
      vim.cmd.colorscheme 'sonokai'
    end,
  },
}
