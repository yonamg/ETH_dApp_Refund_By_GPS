## ETH_dApp_Refund_By_GPS
Smart contracts are a way to build and run applications on the blockchain. This project implements a smart contract that allows users to request refunds by location.
## Objectives
The refund by location smart contract is intended to be used in situations where one party, like as an employer, agrees to pay another party, such as an employee, for their presence in a specific location for a specific amount of time. At predetermined intervals, the employee's phone updates a smart contract with its GPS location.
When all predetermined conditions are satisfied, a cryptocurrency payment is carried out based on the pre-agreed contract that is recorded in an Ethereum smart contract. 

## Requirements

The project requires the following: Node.JS

## Contributor
* Yonas Moges

## Installation

git clone https://github.com/yonamg/ETH_dApp_Refund_By_GPS

cd ETH_dApp_Refund_By_GPS 
npx hardhat node
npx hardhat run scripts/deploy.js --network localhost
npm start
