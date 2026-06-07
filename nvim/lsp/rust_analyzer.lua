return {
  cmd = { "rust-analyzer" },
  filetypes = { "rust" },
  root_markers = { "Cargo.toml" },
  settings = {
    ["rust-analyzer"] = {
      check = { enable = false },
      procMacro = { enable = true },
      numThreads = 2,
    },
  },
}
