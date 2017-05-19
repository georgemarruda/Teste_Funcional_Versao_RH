#Classe para Logar no sistema
class LoginPage < SitePrism::Page
    set_url 'http://localhost:8080/fortesrh/login.action'
    element :username, 'input[id=username]'
    element :password, 'input[id=password]'
    element :entrar, '.btnEntrar'
    element :alerta, '.txtErro'

    def with(usuario, senha)
        self.username.set usuario
        self.password.set senha
        sleep(1)
        self.entrar.click
    end
end    