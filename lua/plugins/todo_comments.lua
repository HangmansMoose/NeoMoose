return {
    {
        'travisvroman/todo-comments.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = {
          signs = false,
          keywords = {
            TODO = { color = '#802015' },
            HACK = { color = '#ff6600' },
            NOTE = { color = '#008000' },
            FIXME = { color = '#f06292' },
            LEFTOFF = { color = '#ffff99' },
            nocheckin = { color = '#ff00ff' },
          },
          highlight = {
            pattern = [[(KEYWORDS|keywords)\s*(\([^\)]*\))?:]],
            keyword = 'wide_bg',
            after = '',
          },
        },
      },
}