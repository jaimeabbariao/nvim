return {
  {
    'miikanissi/modus-themes.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'modus'
    end,
  },
}
