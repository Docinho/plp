Durante os laboratórios:
Crie uma pasta local para armazenar seus arquivos
Faça o download do arquivo http://dirlididi.com/tools/dirlididi.py para sua pasta local
Acesse o link da questão do laboratório
Crie o arquivo de resposta do laboratório com seu código fonte
Compile o arquivo e submeta o exercício usando a seguinte linha de comando (usando sua pasta local como ponto de partida): 
python dirlididi.py submit <problem_key> <token> <filename>
<problem_key> : identificador da questão
<token> : identificador do usuário
<filename> : nome do arquivo compilado

Para laboratórios de C/C++:
Compile seu código fonte .cpp : gcc <nome_arquivo>.cpp -o <nome_arquivo>
Submeta sua respota: python dirlididi.py submit <chave_problema> <token> <arquivo_executavel> <arquivo>.cpp
Para laboratórios de Haskell:
Compile seu código fonte .hs : ghc <nome_arquivo>.hs -o <nome_arquivo>
Submeta sua respota: python dirlididi.py submit <chave_problema> <token> <arquivo_executavel> <arquivo>.hs

Para laboratórios de Prolog:
Compile seu código fonte .pl (apenas para checagem): swipl -q -f <arquivo>.pl
Submeta sua respota: python dirlididi.py submit <chave_problema> <token> <arquivo>.pl
