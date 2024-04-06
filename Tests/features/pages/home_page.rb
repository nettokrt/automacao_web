module Pages
    class Home < SitePrism::Page
        set_url('/')
        elements :txt_pagesaude, 'div[class="navbar-brand navbar-brand-center btn-open-dashboard"]'
        element :btn_perfil, 'img[class="ConfigAvatarHeader avatar-img avatar-img-header"]'
        element :btn_sair, :xpath, '//*[@id="site-navbar-collapse"]/ul[2]/li[5]/div/a[2]'

        def search_for(product)
            header.input_and_search(product)
        end

        def click_on_menu(index)
            menu[index].click
        end

        def click_on_submenu(index, index2)
            menu[index].click
            wait_until_sub_menu_options_visible
            sleep 2
            sub_menu_options[index2].click
        end
    end
end