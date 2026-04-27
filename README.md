*Protocolo H2Indústria - Rastreabilidade de Hidrogênio Verde
Este repositório contém o MVP de um protocolo Web3 voltado para a rastreabilidade e incentivo à produção de Hidrogênio Verde em escala industrial.

*Sobre o Projeto
O projeto utiliza a tecnologia Blockchain para garantir que o hidrogênio utilizado em processos industriais tenha origem sustentável comprovada através de NFTs de certificação.

*Tecnologias e Padrões Utilizados
Solidity 0.8.28: Linguagem dos Smart Contracts usada no VS Code.
ERC-20 ($H2G): Token de utilidade para recompensas de staking e governança.
ERC-721 (H2-Cert): NFTs utilizados para certificados únicos de origem.
Chainlink Price Feeds: Oráculo para consumo do preço ETH/USD na rede Sepolia.
OpenZeppelin: Uso de Ownable (controle de acesso) e ReentrancyGuard (segurança).

*Como Compilar o Projeto
Clone o repositório.
Instale as dependências: npm install
Compile os contratos usando o Hardhat:
npx hardhat compile

*Auditoria
O contrato foi auditado via análise estática do compilador Hardhat, resultando em 0 erros e 0 vulnerabilidades críticas detectadas.

Demonstração (Vídeo)
Assista ao vídeo do projeto funcionando aqui:
https://youtu.be/35AuFjAI8B0

Desenvolvido por: Ricardo Augusto Belo da Silva
