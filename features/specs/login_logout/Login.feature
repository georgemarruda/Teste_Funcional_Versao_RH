#language: pt

Funcionalidade: Logar no Sistema RH
Como usuário, devo logar no sistema 
Fortes RH e ver a tela inicial com o usuário que está logado

Cenario: Logar no Sistema Fortes RH com usuário válido
    Dado que eu tenho um usuário com as informações:
        |usuario|SOS|
        |senha|1234|     
  Quando faço login no sistema Fortes RH         
   Então vejo a tela inicial do sistema com o usuário logado

Cenario: Logar no Sistema Fortes RH com usuário inválido
    Dado que eu tenho um usuário com as informações:
        |usuario|usuario_invalido|
        |senha|1234|     
  Quando faço login no sistema Fortes RH         
   Então vejo a mensagem "Usuário sem permissão de acesso"

Cenario: Logar no Sistema Fortes RH com usuário SOS e Senha Inválido
    Dado que eu tenho um usuário com as informações:
        |usuario|SOS|
        |senha|99999|     
  Quando faço login no sistema Fortes RH         
   Então vejo a mensagem "Máquina sem autorização de acesso"  

@logout
Cenario: Logar e deslogar no Sistema Fortes RH
    Dado que eu tenho um usuário com as informações:
        |usuario|SOS|
        |senha|1234|     
  Quando faço login no sistema Fortes RH         
       E vejo a tela inicial do sistema com o usuário logado    
   Então eu clico em "Sair"
