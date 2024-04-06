Quando('acesso o site automation pratice') do
  login.load
end

Entao('valido que estou na home') do
  expect(page).to have_current_path(URL)
end