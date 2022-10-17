Quando('acesso o site automation pratice') do
  visit ('http://automationpractice.com/index.php')
  sleep(5)
end

Entao('valido que estou na home') do
  expect(page).to have_selector(:id, 'header_logo')
end