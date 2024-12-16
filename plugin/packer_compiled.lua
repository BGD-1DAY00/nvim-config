-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/saadosman/.cache/nvim/packer_hererocks/2.1.1727870382/share/lua/5.1/?.lua;/Users/saadosman/.cache/nvim/packer_hererocks/2.1.1727870382/share/lua/5.1/?/init.lua;/Users/saadosman/.cache/nvim/packer_hererocks/2.1.1727870382/lib/luarocks/rocks-5.1/?.lua;/Users/saadosman/.cache/nvim/packer_hererocks/2.1.1727870382/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/saadosman/.cache/nvim/packer_hererocks/2.1.1727870382/lib/lua/5.1/?.so"
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
  ["formatter.nvim"] = {
    config = { "\27LJ\2\nù\5\0\0\t\0%\0D6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0006\4\5\0009\4\6\0049\4\a\0049\4\b\4=\4\t\0035\4\f\0004\5\3\0006\6\0\0'\b\n\0B\6\2\0029\6\v\6>\6\1\5=\5\r\0044\5\3\0006\6\0\0'\b\14\0B\6\2\0029\6\15\6>\6\1\5=\5\16\0044\5\3\0006\6\0\0'\b\17\0B\6\2\0029\6\18\6>\6\1\5=\5\19\4=\4\20\3B\1\2\0016\1\5\0009\1\21\0019\1\22\0016\2\5\0009\2\21\0029\2\23\2\18\3\1\0'\5\24\0005\6\25\0B\3\3\1\18\3\2\0'\5\26\0005\6\27\0B\3\3\0016\3\5\0009\3\28\0039\3\29\3'\5\30\0'\6\31\0'\a \0005\b!\0B\3\5\0016\3\5\0009\3\28\0039\3\29\3'\5\30\0'\6\"\0'\a#\0005\b$\0B\3\5\1K\0\1\0\1\0\1\vsilent\2\21:FormatWrite<CR>\14<leader>F\1\0\1\vsilent\2\16:Format<CR>\14<leader>f\6n\bset\vkeymap\1\0\2\ngroup\18__formatter__\fcommand\17:FormatWrite\17BufWritePost\1\0\1\nclear\2\18__formatter__\24nvim_create_autocmd\24nvim_create_augroup\bapi\rfiletype\6*\31remove_trailing_whitespace\28formatter.filetypes.any\blua\vstylua\28formatter.filetypes.lua\15javascript\1\0\3\blua\0\6*\0\15javascript\0\rprettier#formatter.filetypes.javascript\14log_level\tWARN\vlevels\blog\bvim\1\0\3\14log_level\0\flogging\2\rfiletype\0\nsetup\14formatter\19formatter.util\frequire\0" },
    loaded = true,
    path = "/Users/saadosman/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/Users/saadosman/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/saadosman/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/saadosman/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/saadosman/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nÂ\b\0\0\b\0'\0B6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\r\0005\5\5\0005\6\4\0=\6\6\0055\6\a\0=\6\b\0055\6\n\0005\a\t\0=\a\v\6=\6\f\5=\5\14\0045\5\18\0005\6\15\0005\a\16\0=\a\17\6=\6\19\5=\5\20\4B\2\2\0016\2\21\0009\2\22\0029\2\23\2'\4\24\0'\5\25\0009\6\19\0015\a\26\0B\2\5\0016\2\21\0009\2\22\0029\2\23\2'\4\24\0'\5\27\0009\6\28\0015\a\29\0B\2\5\0016\2\21\0009\2\22\0029\2\23\2'\4\24\0'\5\30\0009\6\31\0015\a \0B\2\5\0016\2\21\0009\2\22\0029\2\23\2'\4\24\0'\5!\0009\6\"\0015\a#\0B\2\5\0016\2\21\0009\2\22\0029\2\23\2'\4\24\0'\5$\0009\6%\0015\a&\0B\2\5\1K\0\1\0\1\0\1\tdesc\14Git files\14git_files\15<leader>gf\1\0\1\tdesc\14Help tags\14help_tags\15<leader>fh\1\0\1\tdesc\17Find buffers\fbuffers\15<leader>fb\1\0\1\tdesc\14Live grep\14live_grep\15<leader>fg\1\0\1\tdesc\15Find files\15<leader>ff\6n\bset\vkeymap\bvim\fpickers\15find_files\1\0\1\15find_files\0\17find_command\1\5\0\0\afd\v--type\6f\23--strip-cwd-prefix\1\0\4\17find_command\0\vfollow\2\14no_ignore\1\vhidden\2\rdefaults\1\0\2\rdefaults\0\fpickers\0\18layout_config\15horizontal\1\0\4\nwidth\4×ÇÂë\3Š®¯ÿ\3\15horizontal\0\19preview_cutoff\3x\vheight\4š³æÌ\t™³¦ÿ\3\1\0\2\18preview_width\4\0€€€ÿ\3\18results_width\4\0€€€ÿ\3\22vimgrep_arguments\1\n\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\r--hidden\19--glob=!.git/*\25file_ignore_patterns\1\0\4\22vimgrep_arguments\0\25file_ignore_patterns\0\18layout_config\0\14previewer\1\1\t\0\0\17node_modules\t.git\vtarget\nbuild\tdist\n.next\vvendor\v*.lock\nsetup\22telescope.builtin\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/saadosman/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nÂ\b\0\0\b\0'\0B6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\r\0005\5\5\0005\6\4\0=\6\6\0055\6\a\0=\6\b\0055\6\n\0005\a\t\0=\a\v\6=\6\f\5=\5\14\0045\5\18\0005\6\15\0005\a\16\0=\a\17\6=\6\19\5=\5\20\4B\2\2\0016\2\21\0009\2\22\0029\2\23\2'\4\24\0'\5\25\0009\6\19\0015\a\26\0B\2\5\0016\2\21\0009\2\22\0029\2\23\2'\4\24\0'\5\27\0009\6\28\0015\a\29\0B\2\5\0016\2\21\0009\2\22\0029\2\23\2'\4\24\0'\5\30\0009\6\31\0015\a \0B\2\5\0016\2\21\0009\2\22\0029\2\23\2'\4\24\0'\5!\0009\6\"\0015\a#\0B\2\5\0016\2\21\0009\2\22\0029\2\23\2'\4\24\0'\5$\0009\6%\0015\a&\0B\2\5\1K\0\1\0\1\0\1\tdesc\14Git files\14git_files\15<leader>gf\1\0\1\tdesc\14Help tags\14help_tags\15<leader>fh\1\0\1\tdesc\17Find buffers\fbuffers\15<leader>fb\1\0\1\tdesc\14Live grep\14live_grep\15<leader>fg\1\0\1\tdesc\15Find files\15<leader>ff\6n\bset\vkeymap\bvim\fpickers\15find_files\1\0\1\15find_files\0\17find_command\1\5\0\0\afd\v--type\6f\23--strip-cwd-prefix\1\0\4\17find_command\0\vfollow\2\14no_ignore\1\vhidden\2\rdefaults\1\0\2\rdefaults\0\fpickers\0\18layout_config\15horizontal\1\0\4\nwidth\4×ÇÂë\3Š®¯ÿ\3\15horizontal\0\19preview_cutoff\3x\vheight\4š³æÌ\t™³¦ÿ\3\1\0\2\18preview_width\4\0€€€ÿ\3\18results_width\4\0€€€ÿ\3\22vimgrep_arguments\1\n\0\0\arg\18--color=never\17--no-heading\20--with-filename\18--line-number\r--column\17--smart-case\r--hidden\19--glob=!.git/*\25file_ignore_patterns\1\0\4\22vimgrep_arguments\0\25file_ignore_patterns\0\18layout_config\0\14previewer\1\1\t\0\0\17node_modules\t.git\vtarget\nbuild\tdist\n.next\vvendor\v*.lock\nsetup\22telescope.builtin\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\nù\5\0\0\t\0%\0D6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\4\0006\4\5\0009\4\6\0049\4\a\0049\4\b\4=\4\t\0035\4\f\0004\5\3\0006\6\0\0'\b\n\0B\6\2\0029\6\v\6>\6\1\5=\5\r\0044\5\3\0006\6\0\0'\b\14\0B\6\2\0029\6\15\6>\6\1\5=\5\16\0044\5\3\0006\6\0\0'\b\17\0B\6\2\0029\6\18\6>\6\1\5=\5\19\4=\4\20\3B\1\2\0016\1\5\0009\1\21\0019\1\22\0016\2\5\0009\2\21\0029\2\23\2\18\3\1\0'\5\24\0005\6\25\0B\3\3\1\18\3\2\0'\5\26\0005\6\27\0B\3\3\0016\3\5\0009\3\28\0039\3\29\3'\5\30\0'\6\31\0'\a \0005\b!\0B\3\5\0016\3\5\0009\3\28\0039\3\29\3'\5\30\0'\6\"\0'\a#\0005\b$\0B\3\5\1K\0\1\0\1\0\1\vsilent\2\21:FormatWrite<CR>\14<leader>F\1\0\1\vsilent\2\16:Format<CR>\14<leader>f\6n\bset\vkeymap\1\0\2\ngroup\18__formatter__\fcommand\17:FormatWrite\17BufWritePost\1\0\1\nclear\2\18__formatter__\24nvim_create_autocmd\24nvim_create_augroup\bapi\rfiletype\6*\31remove_trailing_whitespace\28formatter.filetypes.any\blua\vstylua\28formatter.filetypes.lua\15javascript\1\0\3\blua\0\6*\0\15javascript\0\rprettier#formatter.filetypes.javascript\14log_level\tWARN\vlevels\blog\bvim\1\0\3\14log_level\0\flogging\2\rfiletype\0\nsetup\14formatter\19formatter.util\frequire\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
