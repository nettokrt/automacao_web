module Pages
    
    class LoginPage < SitePrism::Page
        set_url ""
        element :input_login, '#txt_login'
        element :input_password, '#password'
        element :btn_enviar, '#buttlogin'
    end
end
