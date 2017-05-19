#encoding:utf-8

Dado(/^que eu tenho um usuário com as informações:$/) do |table|
     @usuario = table.rows_hash['usuario']
     @senha = table.rows_hash['senha']
end

Quando(/^faço login no sistema Fortes RH$/) do
      @login = LoginPage.new
      @login.load
      @login.with(@usuario, @senha) 
end

Então(/^vejo a tela inicial do sistema com o usuário logado$/) do
  view_usuario = find('.nomeUsuario').text
  expect(view_usuario).to eql @usuario
end

#Esta instrução valida dois cenários: 
#Usuário inválido e Usuário SOS com senha inválida
Então(/^vejo a mensagem "([^"]*)"$/) do |msg_erro|
  expect(@login.alerta.text).to eql msg_erro
end

#Desloga do sistema
Então(/^eu deslogo do sistema$/) do
  @logout = LogoutPage.new
  @logout.load
end
#Fim do teste de Login