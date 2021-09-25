---- Languages

-- Swift
require'lspconfig'.sourcekit.setup{
	serverPath = '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/sourcekit-lsp',
	filetypes = {'swift'}
}

-- Bash  npm i -g bash-language-server
require'lspconfig'.bashls.setup{}
