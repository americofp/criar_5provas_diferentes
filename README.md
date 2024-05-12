# criar_5provas_diferentes
Esse projeto foi desenvolvido para criar 5 versões de prova diferentes, incluindo um gabarito com o nome dos alunos da turma.

Ele consiste em um script para rodar no MsWord.

Você deve criar uma pasta /questoes/ onde colocara as questões em .jpg, usando o formato q##_1.jpg até q##_5.jpg, sendo que esse ## corresponde ao número da questão na prova.
Você também deve criar uma pasta /aviso/, onde colocará uma imagem que servirá como cabeçalho da prova, que deverá ter o nome cabecalho.jpg e uma imagem aviso.jpg com todas as informações que você deseja inserir na sua prova.
Por fim, deverá criar uma ou mais pastas com o(s) nome(s) da(s) sua(s) turma(s), que serão informados por você quando o script for rodado.

Nessa pasta você deve colocar uma imagem com o padrão de nome imag##.jpg para cada aluno da turma, sendo ## um número de dois digitos. Essa imagem pode ser de um gabarito gerado pelo app zipgrade ou outro qualquer, contanto que esteja com o padrão de nome especificado.

Após isso, quando você rodar o script de Visual Basic do Word, o sistema te perguntará a sala, que corresponderá ao nome da pasta que você criou, e perguntará quantas questões você quer inserir. Feito isso, o sistema gerará um documento do word conténdo uma prova para cada aluno, com uma de 5 versões diferentes. 
