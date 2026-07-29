return {
  "lambdalisue/vim-suda",
  cmd = { "SudaRead", "SudaWrite" },
  config = function()
    -- Automatically prompts for sudo password inside Neovim
    vim.g.suda_command = "sudo"
  end,
}
