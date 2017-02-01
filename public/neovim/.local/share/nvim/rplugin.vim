" node plugins
call remote#host#RegisterPlugin('node', '/Users/brandon/.dotfiles/public/XDG Config/.config/nvim/plugged/tigris.nvim/rplugin/node/tigris.js', [
      \ {'sync': v:false, 'name': '_tigris_enable', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': '_tigris_disable', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': '_tigris_toggle', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': '_tigris_highlight_clear', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': '_tigris_parse_debounced', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': '_tigris_parse', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': '_tigris_highlight_debug', 'type': 'function', 'opts': {}},
      \ {'sync': v:false, 'name': 'TextChangedI', 'type': 'autocmd', 'opts': {'pattern': '*.js,*.jsx', 'eval': 'expand("<afile>")'}},
      \ {'sync': v:false, 'name': 'TextChanged', 'type': 'autocmd', 'opts': {'pattern': '*.js,*.jsx', 'eval': 'expand("<afile>")'}},
      \ {'sync': v:false, 'name': 'BufEnter', 'type': 'autocmd', 'opts': {'pattern': '*.js,*.jsx', 'eval': 'expand("<afile>")'}},
      \ {'sync': v:false, 'name': 'InsertLeave', 'type': 'autocmd', 'opts': {'pattern': '*.js,*.jsx', 'eval': 'expand("<afile>")'}},
     \ ])


" python3 plugins
call remote#host#RegisterPlugin('python3', '/Users/brandon/.dotfiles/public/XDG Config/.config/nvim/plugged/deoplete.nvim/rplugin/python3/deoplete', [
      \ {'sync': v:true, 'name': '_deoplete', 'type': 'function', 'opts': {}},
     \ ])


" ruby plugins


" python plugins


