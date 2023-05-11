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
