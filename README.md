# jenkins-01
Iniciando com Pipelines no Jenkins. 
-----------------------------------------------------------------------------
SOBRE O PROJETO: 

Iniciei meu primeiro projeto com Pipelines utilizando o Jenkins. Utilizei o Terraform para criação de uma maquina EC2 Ubuntu na AWS, após a criação da maquina, instalei o Docker e fiz o primeiro update, depois disso conteinerizei uma imagem Jenkins utilizando o Docker e fiz as configurações iniciais do Jenkins. Após a primeira configuração inicial, iniciei a criação do meu primeiro JOB
e também da minha primeira Pipelines, através de um arquivo Jenkinsfile. Que está em um repositório no meu GitHub, ( https://lnkd.in/dfxNNnv9 ). Essa primeira Pipelines contem três stages que são: 

Checkout SCM: A cada 1min que tiver qualquer alteração no repositório jenkins-01, construir um JOB no Jenkins.   
Build: Construir
Test: Testar o codigo 
Deploy: Implantar o codigo
Post Actions: Enviar uma notificação por e-mail 

Após todos esses stages, é enviando uma notificação por e-mail que o código foi deployado com sucesso, caso ocorra algum erro é também recebida a notificação informando que algum dos stages ocorreu um erro.
Além disso foi configurado também notificações pelo slack que é um programa de mensagens, que nesse caso ele foi configurado para quando iniciar o JOB e quando finalizar o JOB enviar uma notificação e por ultimo foi instalado o Jenkins Blue Ocean, para tornar uma melhor experiencia do usuário utilizando o Jenkins. Em anexo se encontra imagens do projeto. 

Referencias: Curso de Jenkins básico para Sysadmins e Developers do professor Tainã ROHWEDER

#AWS #job #docker #github #pipeline #terraform #IaC