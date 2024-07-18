return {
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
      'nvim-neotest/neotest-jest',
      'nvim-neotest/neotest-plenary',
    },
    config = function()
      require('neotest').setup {
        adapters = {
          require 'neotest-jest' {
            jestCommand = 'npm run test --',
            jestConfigFile = function(file)
              -- I only have a use case for web right now
              if string.find(file, 'web') then
                return vim.fn.getcwd() .. '/web/' .. 'jest.config.cjs'
              end

              return vim.fn.getcwd()
            end,
            cwd = function(path)
              if string.find(path, 'web') then
                return vim.fn.getcwd() .. '/web'
              end

              return vim.fn.getcwd()
            end,
            env = { CI = true },
          },
          require 'neotest-plenary',
        },
      }
    end,
  },
}
