# SmartContracts_JogoDoBicho

A Blockchain é uma tecnologia que utiliza um livro-razão imutável e compartilhado que facilita o processo de registro de transações e de controle de ativos em uma rede de negócios Ela nasceu com o Bitcoin, no entanto, com o tempo começou a ser explorada em outras áreas.

Nos jogos de aposta, idealizamos a criação da loteira do jogo do bicho em um smart contract. Considerado como um "jogo de azar", o jogo do bicho consiste em escolher um animal e aguardar o resultado do sorteio para saber qual prêmio o jogador irá ganhar.


## Metodologia
A solução proposta para este problema foi desenvolvida no Solidity, e as seguintes etapas foram executadas:

- Recepção e armazenamento da aposta do jogador na Blockchain utilizando o Remix.
- O sorteio ocorre, os números vencedores são escolhidos aleatoriamente.
- As apostas dos jogadores são recuperadas da Blockchain onde foram armazenadas.
- O prêmio equivalente à aposta é determinada.


O código criado foi estruturado com os seguintes padrões\cite{Bellomy}:
- Structs: Definição dos dados mais complexos;
- Properties: Definição das variáveis;
- Modifiers: Definição dos modificadores;
- Constructor: Definição do construtor;
- Public Functions: Definição das funções públicas;
- Private Functions: Definição das funções privadas;

Blockchain é uma parte de um conjunto de tecnologias que permitem um registro seguro, descentralizado, sincronizado e distribuído de operações digitais, sem a necessidade de intermediação de terceiros. Devido à sua popularidade, tem sido utilizado em diversas áreas da tecnologia como criptomoedas, indústrias, finanças, etc., ou como no nosso exemplo, o jogo do bicho. Embora a implementação do jogo tenha sido concluída, devido ao conhecimento limitado da linguagem de programação Solidity, ainda existem aspectos que podem ser melhorados, como o formato dos dados de entrada, controle do número de jogadores, entre outros. Para trabalhos futuros, planeja-se melhorar esses aspectos, adicionar novas regras de jogo e adicionar uma seção de nível.
