return {
  'ggml-org/llama.vim',
  init = function()
    vim.g.llama_config = {
      endpoint_fim = 'http://llamacpp:11742/infill',
      endpoint_inst = 'http://llamacpp:11742/v1/chat/completions',
      auto_fim = false,
      keymap_fim_trigger = '<C-k>',
      keymap_fim_accept_word = '<C-j>',
    }
  end,
}

