-- ~/.config/lvim/ftplugin/java.lua
local config = {
  cmd = {
    -- Your path to the jdtls launch script
    '/Users/aharo/.local/share/lvim/mason/bin/jdtls',
  },
  -- Automatically find root directory by looking for gradlew, .git, or mvnw files/directories
  root_dir = require('jdtls.setup').find_root({ 'gradlew', '.git', 'mvnw' })
}

-- Start the Java language server
require('jdtls').start_or_attach(config)

-- https://github.com/mfussenegger/nvim-jdtls#nvim-dap-configuration for more guide.
local dap = require "dap"
dap.configurations.java = {
  {
    name = "Launch Java",
    javaExec = "java",
    request = "launch",
    type = "java",
  },
  {
    type = 'java',
    request = 'attach',
    name = "Debug (Attach) - Remote",
    hostName = "127.0.0.1",
    port = 5005,
  },
}

-- Set indentation
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true
