*** Settings ***
Library           SeleniumLibrary

*** Variables ***
#Dados do teste
${NomeDaMusica}   Billie Eilish - bad guy

#Variáveis do navegador
${Browser}        Chrome
${URL}            https://www.youtube.com/

#Elementos
${CampoDeBusca}   //input[@id='search']
${BotaoBuscar}    //button[@id='search-icon-legacy']
${PrimeiroVideo}  (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${ProvaDeQueFuncionou}  //button[@class="ytp-play-button ytp-button"]


*** Keywords ***
Dado que eu acesso o site do YouTube
    Open Browser  ${URL}  ${Browser}
Quando digito o nome do vídeo no campo de busca
    Input Text  ${CampoDeBusca}  ${NomeDaMusica}
E clico no botão buscar
    Click Element  ${BotaoBuscar}
E clico na primeira opção de vídeo que aparece
    Wait Until Element Is Visible  ${PrimeiroVideo}   10
    Click Element  ${PrimeiroVideo}

Então o vídeo é executado
    Wait Until Element Is Visible  ${ProvaDeQueFuncionou}   10
    Click Element  ${ProvaDeQueFuncionou}
    Sleep  2s
    Close Browser
 
*** Test Cases ***
Cenário 1: Executar vídeo no site do YouTube
    Dado que eu acesso o site do YouTube
    Quando digito o nome do vídeo no campo de busca
    E clico no botão buscar
    E clico na primeira opção de vídeo que aparece
    Então o vídeo é executado
 

