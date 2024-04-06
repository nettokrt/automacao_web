module Helper
  def print_result(nome_arquivo, resultado)
    caminho_arquivo = "results/screenshots/test_#{resultado}"
    foto = "#{caminho_arquivo}/#{nome_arquivo}.png"
    page.save_screenshot(foto)
    # embed(foto, 'image/png', 'Envidência')
  end
end