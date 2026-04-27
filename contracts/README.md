# Protocolo H2Indústria - Rastreabilidade de Hidrogênio Verde

Este repositório contém o MVP de um protocolo Web3 voltado para a rastreabilidade e incentivo à produção de Hidrogênio Verde em escala industrial.

## Sobre o Projeto
O projeto utiliza a tecnologia Blockchain para garantir que o hidrogênio utilizado em processos industriais tenha origem sustentável comprovada através de NFTs de certificação.

## Tecnologias e Padrões Utilizados
- **Solidity 0.8.28**: Linguagem dos Smart Contracts.
- **ERC-20 ($H2G)**: Token de utilidade para recompensas de staking e governança.
- **ERC-721 (H2-Cert)**: NFTs utilizados para certificados únicos e não fungíveis.
- **Chainlink Price Feeds**: Oráculo para consumo do preço ETH/USD na rede Sepolia.
- **OpenZeppelin**: Uso de `Ownable` para controle de acesso e `ReentrancyGuard` para segurança contra ataques de reentrada.

## Como Compilar o Projeto
1. Clone o repositório.
2. Instale as dependências:
   ```bash
   npm install