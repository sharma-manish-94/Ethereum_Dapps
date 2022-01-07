# Ethereum_blockchain

### Using Geth client
### Using Ganache for our local testing environment
### Using solidity to write smart contract


Steps:

* To start geth in light mode:
 ```sh 
    ./geth --syncmode "light"
 ```
* To Create and initiate a project:
```sh
    >mkdir <ProjectDirectory>
    >truffle init
```

* To Compile contract:
```sh
   >truffle compile
   >truffle compile --all --network development
  
 ```
 
* To create javascript test cases
```sh   
   >truffle create test <Contract Name>
```

* To run js test cases
```sh   
   >truffle test
```
* To deploy a contract:
```sh   
   >truffle deploy --reset
```
* To open developer console:
```sh   
   >truffle console
```
