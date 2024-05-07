*** Settings ***
Library          SeleniumLibrary    


*** Variables ***
${input_name}             //input[@id="firstName"]      
${input_email}            //input[@id="userEmail"]  
${input_gender}           //label[contains(text(), "Male)"]
${input_mobile}           //input[@id="userNumber"]
${input_date}             //input[@id="dateOfBirthInput"]
${input_subjects}         //input[@id="subjectsInput"]

${input_picture}          //input[@id="uploadPicture"]
${input_address}          //textarea[@id="currentAddress"]
${input_state}            //input[@id="react-select-3-input"]
${input_city}             //input[@id="react-select-4-input"]





*** Keywords ***
abrindo o navegador
    Open Browser    https://demoqa.com/automation-practice-form    chrome

preencher o formulario
    Input Text       ${input_name}            João
    Sleep            1s
    Input Text       ${input_email}           joao@gmail.com
    Sleep            1s
    Input Text       ${input_mobile}          11999999999
    Sleep            1s
    Input Text       ${input_date}            01/01/2000
    Sleep            1s
    Input Text       ${input_subjects}        Matemática
    Sleep            1s
    Input Text       ${input_address}          Rua dos Bobos, nº 0
    Sleep            1s
fechar o navegador
    Close Browser

*** Test Cases ***
abrir navegador e preencher formulario
    abrindo o navegador
    preencher o formulario
    fechar o navegador