return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
        --rust stuff
        "rust-analyzer",     --duhhh rust analyzer
        "codelldb",          --debugger thingy for rust, c, c++, etc
        --python stuff
        "python-lsp-server", --collection of cool python stuff
        "debugpy",
        --Java
        "jdtls",
        --C and C++
        "clangd",
        "clang-format",
        --html, css, javascript, etc
        "rome",
      },
    },
  },
  {
      'williamboman/mason-lspconfig.nvim'
  },
}

