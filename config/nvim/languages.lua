vim.o.completeopt = "menuone,noselect"

require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    nvim_lsp = true;
  };
}


---- Languages

-- Swift
require'lspconfig'.sourcekit.setup {}

-- Bash  npm i -g bash-language-server
require'lspconfig'.bashls.setup {}


---- Linters
local dlsconfig = require 'diagnosticls-configs'
local util = require 'lspconfig.util'

local swiftlint = require 'diagnosticls-configs.linters.swiftlint'
local shellcheck = require 'diagnosticls-configs.linters.shellcheck'

dlsconfig.init {
   root_dir = function(fname) -- Workaround: shellcheck not linting on non git repos
     return util.root_pattern '.git'(fname) or util.path.dirname(fname)
   end 
}

 dlsconfig.setup {
   ['swift'] = {
     linter = swiftlint
   },
   ['sh'] = {
     linter = shellcheck
   }
 }

 -- Trouble
 local trouble = require('trouble')

 trouble.setup { 
   icons = false
 }
