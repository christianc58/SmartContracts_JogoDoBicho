# SmartContracts_JogoDoBicho

A Blockchain é uma tecnologia que utiliza um livro-razão imutável e compartilhado que facilita o processo de registro de transações e de controle de ativos em uma rede de negócios Ela nasceu com o Bitcoin, no entanto, com o tempo começou a ser explorada em outras áreas.

Nos jogos de aposta, idealizamos a criação da loteira do jogo do bicho em um smart contract. Considerado como um "jogo de azar", o jogo do bicho consiste em escolher um animal e aguardar o resultado do sorteio para saber qual prêmio o jogador irá ganhar.


## Metodologia
A solução proposta para este problema foi desenvolvida no Solidity, e as seguintes etapas foram executadas:

- Recepção e armazenamento da aposta do jogador na Blockchain utilizando o Remix.
- O sorteio ocorre, os números vencedores são escolhidos aleatoriamente.
  - As apostas dos jogadores são recuperadas da Blockchain onde foram armazenadas.
  - O prêmio equivalente à aposta é determinada.


O c ́odigo criado foi estruturado com os seguintes padr ̃oes[Bellomy 2017]:
  - Structs: Definic ̧  ̃ao dos dados mais complexos;
  - Properties: Definic ̧  ̃ao das vari ́aveis;
  - Modifiers: Definic ̧  ̃ao dos modificadores;
  - Constructor: Definic ̧  ̃ao do construtor;
  - Public Functions: Definic ̧  ̃ao das func ̧  ̃oes p ́ublicas;
  - Private Functions: Definic ̧  ̃ao das func ̧  ̃oes privadas;
