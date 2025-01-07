*** Settings ***
Library    SeleniumLibrary

*** Variables ***
&{login}
...    url_precious=http://localhost:3000/
...    btn_login=//button[contains(.,'Get started')][1]
...    btn_google=//button[contains(.,'Sign in with Google')]
...    input_email=//input[contains(@type,'email')]
...    input_senha=//input[contains(@type,'password')]  
...    btn_proximo=//span[contains(.,'Próxima')]
...    btn_continuar=//span[contains(.,'Continuar')]
&{pagamento}
...    url_produto=http://localhost:3000/dashboard
...    btn_produto=//button[@class='btn btn-primary btn-block group'][contains(.,'Get Cobra de Aço')]
...    input_cartão=//input[contains(@autocomplete,'cc-number')]
...    input_mês_ano=//input[@placeholder='MM / AA']
...    input_cvc=//input[@placeholder='CVC']
...    input_nome=//input[contains(@placeholder,'Nome completo')]
...    btn_pagar=//div[@class='SubmitButton-IconContainer']

*** Keywords ***
Acessar Sistema
    [Arguments]  ${url}
    Open Browser    ${login.url_precious}    Chrome
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot

realizar clique
    [Arguments]    ${locator}
    Click Element    ${locator}
    Sleep    2s
    Capture Page Screenshot

digitar texto
    [Arguments]  ${campo}  ${text}    
    Input Text   ${campo}  ${text}
    Sleep    2s
    Capture Page Screenshot

que estou na tela de login
    [Arguments]    ${url}
    Acessar Sistema    ${url}
    Sleep    2s
    Capture Page Screenshot

eu realizo clique
    [Arguments]    ${locator}
    realizar clique    ${locator}
    Sleep    2s
    Capture Page Screenshot

eu cliquo em fazer login com google
    [Arguments]    ${locator}
    realizar clique    ${locator}
    Sleep    2s
    Capture Page Screenshot
preencho com meu email
    [Arguments]    ${campo}  ${text}    
    digitar texto    ${campo}  ${text} 
    Sleep    2s
    Capture Page Screenshot
clico em proximo
    [Arguments]    ${locator}
    realizar clique    ${locator}
    Sleep    2s
    Capture Page Screenshot
Acessar Sistema my precious 
    [Arguments]  ${url}
    Open Browser    ${login.url_precious}    Chrome
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot
clico em perfil 
  [Arguments]    ${locator}
    realizar clique    ${locator}
    Sleep    2s
    Capture Page Screenshot
realizar login com google
  [Arguments]    ${locator}
    realizar clique    ${locator}
    Sleep    2s
    Capture Page Screenshot
preencho com minha senha
    [Arguments]    ${campo}  ${text}    
    digitar texto    ${campo}  ${text} 
    Sleep    2s
    Capture Page Screenshot
clico em Continuar 
  [Arguments]    ${locator}
    realizar clique    ${locator}
    Sleep    2s
    Capture Page Screenshot
comprar produto   
  [Arguments]    ${locator}
    realizar clique    ${locator}
    Sleep    2s
    Capture Page Screenshot
informo o número do cartão 
    [Arguments]    ${campo}  ${text}    
    digitar texto    ${campo}  ${text} 
    Sleep    2s
    Capture Page Screenshot
informo mês e ano
    [Arguments]    ${campo}  ${text}    
    digitar texto    ${campo}  ${text} 
    Sleep    2s
    Capture Page Screenshot
informo o cvc
    [Arguments]    ${campo}  ${text}    
    digitar texto    ${campo}  ${text} 
    Sleep    2s
preencho com nome do cliente
    [Arguments]    ${campo}  ${text}    
    digitar texto    ${campo}  ${text} 
    Sleep    2s
clico em finalizar compra
  [Arguments]    ${locator}
    realizar clique    ${locator}
    Sleep    2s
    Capture Page Screenshot

*** Test Cases ***
Fazer login e efetuar pagamento
    [Tags]    fazer_login
    given Acessar Sistema my precious    ${login.url_precious}
    when clico em perfil     ${login.btn_login}
    then realizar login com google   ${login.btn_google}
    and preencho com meu email     ${login.input_email}  mariaclaradev@edu.unifor.br  
    and clico em proximo    ${login.btn_proximo}    
    and preencho com minha senha    ${login.input_senha}    12580266
    and clico em proximo    ${login.btn_proximo} 
    and clico em Continuar    ${login.btn_continuar}
    and comprar produto    ${pagamento.btn_produto}
    and informo o número do cartão     ${pagamento.input_cartão}    4242 4242 4242 4242
    and informo mês e ano    ${pagamento.input_mês_ano}    10/25
    and informo o cvc     ${pagamento.input_cvc}    258
    and preencho com nome do cliente     ${pagamento.input_nome}       Katia Martins Figueiro 
    and clico em finalizar compra    ${pagamento.btn_pagar} 

    
 