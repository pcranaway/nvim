-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/atom/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/atom/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/atom/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/atom/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/atom/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/atom/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/atom/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/atom/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/atom/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/atom/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nZ\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\ntheme\tauto\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/atom/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    config = { "\27LJ\2\n{\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21ensure_installed\1\0\0\1\3\0\0\16sumneko_lua\18rust_analyzer\nsetup\20mason-lspconfig\frequire\0" },
    loaded = true,
    path = "/home/atom/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/home/atom/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1À\tbody\15lsp_expandŠ\2\0\1\3\2\b\0&-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\28€-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4€-\1\1\0009\1\3\1B\1\1\1X\1\19€-\1\1\0009\1\4\1B\1\1\2\15\0\1\0X\2\4€-\1\1\0009\1\5\1B\1\1\1X\1\n€6\1\6\0B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\a\1B\1\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\0À\1À\rcomplete\21has_words_before\19expand_or_jump\23expand_or_jumpable\vexpand\15expandable\21select_next_item\fvisibleŽ\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\r€-\1\1\0009\1\2\1)\3ÿÿB\1\2\2\15\0\1\0X\2\5€-\1\1\0009\1\3\1)\3ÿÿB\1\2\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\0À\1À\tjump\rjumpable\21select_prev_item\fvisibleÓ\a\1\0\v\0?\0t6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\6\0009\5\4\0009\5\5\5=\5\a\0045\5\t\0003\6\b\0=\6\n\5=\5\v\0045\5\14\0009\6\f\0009\6\r\6=\6\15\5=\5\16\0045\5\20\0005\6\18\0005\a\17\0=\a\19\6=\6\21\5=\5\22\0044\5\4\0005\6\23\0>\6\1\0055\6\24\0>\6\2\0055\6\25\0>\6\3\5=\5\26\0045\5\29\0009\6\27\0009\6\28\6B\6\1\2=\6\30\0059\6\27\0009\6\31\6B\6\1\2=\6 \0059\6\27\0009\6\28\6B\6\1\2=\6!\0059\6\27\0009\6\31\6B\6\1\2=\6\"\0059\6\27\0009\6\28\6B\6\1\2=\6#\0059\6\27\0009\6\31\6B\6\1\2=\6$\0059\6\27\0009\b\27\0009\b%\b)\nÿÿB\b\2\0025\t&\0B\6\3\2=\6'\0059\6\27\0009\b\27\0009\b%\b)\n\1\0B\b\2\0025\t(\0B\6\3\2=\6)\0059\6\27\0009\b\27\0009\b*\bB\b\1\0025\t+\0B\6\3\2=\6,\0059\6-\0009\6.\6=\6/\0059\6\27\0005\b1\0009\t\27\0009\t0\tB\t\1\2=\t2\b9\t\27\0009\t3\tB\t\1\2=\t4\bB\6\2\2=\0065\0059\6\27\0009\0066\0065\b7\0B\6\2\2=\0068\0059\6\27\0003\b9\0005\t:\0B\6\3\2=\6;\0059\6\27\0003\b<\0005\t=\0B\6\3\2=\6>\5=\5\27\4B\2\2\0012\0\0€K\0\1\0\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\1\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-d>\1\3\0\0\6i\6c\16scroll_docs\n<C-j>\n<C-k>\n<C-n>\n<C-p>\v<Down>\21select_next_item\t<Up>\1\0\0\21select_prev_item\fmapping\fsources\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\vwindow\18documentation\1\0\0\vborder\1\0\0\1\t\0\0\bâ•­\bâ”€\bâ•®\bâ”‚\bâ•¯\bâ”€\bâ•°\bâ”‚\17confirm_opts\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\fsnippet\vexpand\1\0\0\0\14preselect\1\0\0\tNone\18PreselectMode\nsetup\fluasnip\bcmp\frequire\0" },
    loaded = true,
    path = "/home/atom/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\ni\0\0\4\0\5\0\f6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0014\3\0\0B\1\2\0019\1\4\0009\1\3\0014\3\0\0B\1\2\1K\0\1\0\18rust_analyzer\nsetup\16sumneko_lua\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/atom/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/atom/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/atom/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/atom/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/atom/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n“\1\0\0\6\0\v\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0005\3\5\0005\4\3\0004\5\0\0=\5\4\4=\4\6\3=\3\b\0024\3\0\0=\3\t\0024\3\0\0=\3\n\2B\0\2\1K\0\1\0\15extensions\fpickers\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/atom/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n-\0\1\4\1\2\0\5-\1\0\0009\1\0\0019\3\1\0B\1\2\1K\0\1\0\1À\tbody\15lsp_expandŠ\2\0\1\3\2\b\0&-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\28€-\1\1\0009\1\2\1B\1\1\2\15\0\1\0X\2\4€-\1\1\0009\1\3\1B\1\1\1X\1\19€-\1\1\0009\1\4\1B\1\1\2\15\0\1\0X\2\4€-\1\1\0009\1\5\1B\1\1\1X\1\n€6\1\6\0B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\a\1B\1\1\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\0À\1À\rcomplete\21has_words_before\19expand_or_jump\23expand_or_jumpable\vexpand\15expandable\21select_next_item\fvisibleŽ\1\0\1\4\2\4\0\23-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4€-\1\0\0009\1\1\1B\1\1\1X\1\r€-\1\1\0009\1\2\1)\3ÿÿB\1\2\2\15\0\1\0X\2\5€-\1\1\0009\1\3\1)\3ÿÿB\1\2\1X\1\2€\18\1\0\0B\1\1\1K\0\1\0\0À\1À\tjump\rjumpable\21select_prev_item\fvisibleÓ\a\1\0\v\0?\0t6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\6\0009\5\4\0009\5\5\5=\5\a\0045\5\t\0003\6\b\0=\6\n\5=\5\v\0045\5\14\0009\6\f\0009\6\r\6=\6\15\5=\5\16\0045\5\20\0005\6\18\0005\a\17\0=\a\19\6=\6\21\5=\5\22\0044\5\4\0005\6\23\0>\6\1\0055\6\24\0>\6\2\0055\6\25\0>\6\3\5=\5\26\0045\5\29\0009\6\27\0009\6\28\6B\6\1\2=\6\30\0059\6\27\0009\6\31\6B\6\1\2=\6 \0059\6\27\0009\6\28\6B\6\1\2=\6!\0059\6\27\0009\6\31\6B\6\1\2=\6\"\0059\6\27\0009\6\28\6B\6\1\2=\6#\0059\6\27\0009\6\31\6B\6\1\2=\6$\0059\6\27\0009\b\27\0009\b%\b)\nÿÿB\b\2\0025\t&\0B\6\3\2=\6'\0059\6\27\0009\b\27\0009\b%\b)\n\1\0B\b\2\0025\t(\0B\6\3\2=\6)\0059\6\27\0009\b\27\0009\b*\bB\b\1\0025\t+\0B\6\3\2=\6,\0059\6-\0009\6.\6=\6/\0059\6\27\0005\b1\0009\t\27\0009\t0\tB\t\1\2=\t2\b9\t\27\0009\t3\tB\t\1\2=\t4\bB\6\2\2=\0065\0059\6\27\0009\0066\0065\b7\0B\6\2\2=\0068\0059\6\27\0003\b9\0005\t:\0B\6\3\2=\6;\0059\6\27\0003\b<\0005\t=\0B\6\3\2=\6>\5=\5\27\4B\2\2\0012\0\0€K\0\1\0\f<S-Tab>\1\3\0\0\6i\6s\0\n<Tab>\1\3\0\0\6i\6s\0\t<CR>\1\0\1\vselect\1\fconfirm\n<C-e>\6c\nclose\6i\1\0\0\nabort\n<C-y>\fdisable\vconfig\14<C-Space>\1\3\0\0\6i\6c\rcomplete\n<C-f>\1\3\0\0\6i\6c\n<C-d>\1\3\0\0\6i\6c\16scroll_docs\n<C-j>\n<C-k>\n<C-n>\n<C-p>\v<Down>\21select_next_item\t<Up>\1\0\0\21select_prev_item\fmapping\fsources\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\vwindow\18documentation\1\0\0\vborder\1\0\0\1\t\0\0\bâ•­\bâ”€\bâ•®\bâ”‚\bâ•¯\bâ”€\bâ•°\bâ”‚\17confirm_opts\rbehavior\1\0\1\vselect\1\fReplace\20ConfirmBehavior\fsnippet\vexpand\1\0\0\0\14preselect\1\0\0\tNone\18PreselectMode\nsetup\fluasnip\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\nZ\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\ntheme\tauto\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n“\1\0\0\6\0\v\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0005\3\5\0005\4\3\0004\5\0\0=\5\4\4=\4\6\3=\3\b\0024\3\0\0=\3\t\0024\3\0\0=\3\n\2B\0\2\1K\0\1\0\15extensions\fpickers\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: mason-lspconfig.nvim
time([[Config for mason-lspconfig.nvim]], true)
try_loadstring("\27LJ\2\n{\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\21ensure_installed\1\0\0\1\3\0\0\16sumneko_lua\18rust_analyzer\nsetup\20mason-lspconfig\frequire\0", "config", "mason-lspconfig.nvim")
time([[Config for mason-lspconfig.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\ni\0\0\4\0\5\0\f6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\1\3\0014\3\0\0B\1\2\0019\1\4\0009\1\3\0014\3\0\0B\1\2\1K\0\1\0\18rust_analyzer\nsetup\16sumneko_lua\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
