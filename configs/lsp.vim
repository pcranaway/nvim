" this file doesn't only contain lsp stuff, but completion stuff also

" looks like this uhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh
" enables completion instantly and doesn't wait for something to be completed
" to enable it (aka. async)
autocmd BufEnter * lua require'completion'.on_attach()

" i hAVE NO IDEA WHERE THIS IS FROM BUT i'm gonna assume that it's from
" completion because of the Tab and Shift Tab mappings

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
set completeopt=menuone,noinsert,noselect
set shortmess+=c


" setup LSP configs for my favorite languages and stuff
lua << EOF
require'lspconfig'.pyright.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.gopls.setup{}
require'lspconfig'.texlab.setup{}
require'lspconfig'.solargraph.setup{}
require'lspconfig'.gopls.setup{}
require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.tsserver.setup{ on_attach=on_attach }
EOF

lua << EOF
local lspconfig = require'lspconfig'
local configs = require'lspconfig/configs'
local util = require 'lspconfig/util'

    configs.java_language_server = {
        default_config = {
            cmd = {'/home/mother/oss/java-language-server/dist/lang_server_linux.sh'};
            filetypes = {'java'};
            root_dir = function(fname)
                for _, patterns in ipairs({{'build.xml', 'pom.xml', 'settings.gradle', 'settings.gradle.kts'}, {'build.gradle', 'build.gradle.kts'}}) do
                    local root = util.root_pattern(unpack(patterns))(fname)
                    if root then return root end
                end
                return vim.fn.getcwd()
            end;
            settings = {};
        };
    }

lspconfig.java_language_server.setup{}
EOF
