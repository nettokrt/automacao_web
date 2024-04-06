Quando('acesso a url') do
  sleep(4)
  expect(page). to have_current_path('https://google.com.br/')
end
  
Entao('eu verifico se estou na pagina correta') do
   expect(page). to have_current_path('https://google.com.br/')
end