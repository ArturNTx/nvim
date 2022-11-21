require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  resolve_timeout = 800;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = {
    border = { '', '' ,'', ' ', '', '', '', ' ' }, -- the border option is the same as `|help nvim_open_win|`
    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
    max_width = 120,
    min_width = 60,
    max_height = math.floor(vim.o.lines * 0.3),
    min_height = 1,
  };

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
    ultisnips = true;
    luasnip = true;
  };
}

-- Keymaps

keymap = vim.api.nvim_set_keymap

keymap("i", "<Tab>", "v:lua.tab_complete()", { expr = true })
keymap("s", "<Tab>", "v:lua.tab_complete()", { expr = true })
keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", { expr = true })
keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", { expr = true })
keymap("i", "<CR>", "compe#confirm('<CR>')", { noremap = true, silent = true, expr = true })
keymap("i", "<C-e>", "compe#close('<C-e>')", { noremap = true, silent = true, expr = true })
keymap("i", "<C-k>", "compe#scroll({ 'delta': +4 })", { noremap = true, silent = true, expr = true })
keymap("i", "<C-j>", "compe#scroll({ 'delta': -4 })", { noremap = true, silent = true, expr = true })
