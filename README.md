<h1>Dialog Box ⛏ </h1> 

Visando diminuir o acoplamento e extender a vida útil dos softwares 
elaborei este pequeno projeto utilizando os padrões de projeto Abstract Factory, Composite e Factory Method.

<b>TDialogFactory</b> é a fabrica de objetos, através do método stático <b>New</b> ela pode compor 
tanto um <b>Open Dialog</b> quanto um <b>Save Dialog</b>.

Ele já contém as diretivas padrões do Delphi para ser executado tanto em FMX quanto em VCL
<div>
4 Filtros são pré-definidos mas podem ser alterados dentro de cada método, são eles:

<ul>
<li>Arquivos XML (*.xml)</li>
<li>Arquivos PDF (*.pdf)</li>
<li>Arquivos TXT (*.txt)</li>
<li>Todos os Arquivos (*.*)</li>
</ul>
</div>

<div>
Eles são chamados pelo médoto imbutido chamado <b>AddFilter</b> através do padrão composite.

As Options descendentes do conjunto de tipos padrão do delphi para dialogs também estão disponível,
como são pouco conhecidos adicionei os que são mais utilizados, são eles:

<ul>
<li><b>ofReadOnly : </b> Abre o arquivo somente para leitura</li>
<li><b>AllowMultiSelect:</b>Somente arquivo existente pode ser aberto</li>
<li><b>FileMustExist:</b>O usuário pode selecionar 2 ou mais arquivos</li>
</ul> 
São chamados através do método de composição <b>AddOptions</b>.
</div>

<b>New :</b> Adicionado parâmetro <b>DefaultExt</b> responsável por definir a extensão do arquivo a ser salvo, ele recebe a extensão do arquivo no formato String : 'txt', 'pdf', 'xml', 'zip' e etc... 

O método Execute é finalmente chamado, deve-se fornecer uma variavel do tipo container para receber o(s) valor(es)
do(s) arquivo(s) selecionado(s), ele retornará um booleano informando se a ação foi executada com sucesso.



