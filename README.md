# jenkins-01
Iniciando com Pipelines no Jenkins. 
-----------------------------------------------------------------------------
SOBRE O PROJETO: 

Iniciei meu primeiro projeto com Pipelines utilizando o Jenkins. 

Utilizei o Terraform para criação de uma maquina EC2 Ubuntu na AWS, depois instalei o Docker e fiz o primeiro update. Após isso, conteinerizei uma imagem Jenkins utilizando o Docker e fiz as configurações iniciais do Jenkins. Após a primeira configuração inicial, comecei a criação do meu primeiro JOB e da minha primeira Pipelines, através de um arquivo Jenkinsfile.
 
Você pode encontrar o projeto em um repositório no meu GitHub ( https://lnkd.in/dfxNNnv9 ). 

Essa primeira Pipelines contém três stages: 

Checkout SCM: A cada 1 minuto que houver qualquer alteração no repositório jenkins-01, construir um JOB no Jenkins;   
*Build*: Construir;
*Test*: Testar o codigo;
*Deploy*: Implantar o codigo;
Post Actions: Enviar uma notificação por e-mail. 

Após todos esses stages, é enviada uma notificação por e-mail informando que o código foi deployado com sucesso ou caso ocorra algum erro, informando que ocorreu um erro em um dos stages.

Além disso, foram configuradas notificações pelo slack, para quando iniciar e finalizar o JOB, enviar uma notificação. Por último, foi instalado o Jenkins Blue Ocean, para uma melhor experiência do usuário utilizando o Jenkins. 

Por fim, as imagens do projeto estão anexadas. 

Referencias: Curso de Jenkins básico para Sysadmins e Developers do professor Tainã ROHWEDER

#AWS #job #docker #github #pipeline #terraform #IaC