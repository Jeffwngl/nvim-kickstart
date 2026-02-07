-- markdown preview
return {
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    ft = { 'markdown' },
    build = function()
      vim.fn['mkdp#util#install']()
    end,
    init = function()
      -- Plugin settings before it loads
      vim.g.mkdp_auto_start = 0 -- do not start automatically
      vim.g.mkdp_auto_close = 1 -- auto close when leaving markdown
      vim.g.mkdp_refresh_slow = 1 -- refresh slowly
      vim.g.mkdp_browser = 'firefox' -- change to your preferred browser
    end,
  },
}
