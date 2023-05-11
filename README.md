# Module 3 Intermediate Solidity

# Types of Functions

This Solidity program  demonstrates a smart contract with my own token on a local HardHat network.

## Description

This program contains a contract written in Solidity; the contract owner can mint tokens to a provided address and any user can burn and transfer tokens.

## Getting Started

### Executing program

To run this program, you should run Hardhat network locally and paste the code below into remix to interact with it.


```javascript
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";//ERC20 to create token
import "@openzeppelin/contracts/access/Ownable.sol"; // for mint function

contract NashToken is ERC20("NASHToken","NASH"), Ownable{ //inheriting ERC20
    function mint(address ownerAddr,uint amount) public onlyOwner{
        _mint(ownerAddr, amount);
    }

    function burn(address account,uint amount) public{
        _burn(account, amount);
    }
}

```


## Authors

Nathalie





