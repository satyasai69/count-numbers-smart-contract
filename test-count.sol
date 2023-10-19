//live damo on goerli testnet
// contract address = 0x26F2584169D03BdF7e6a1B5C95a1abEa336feB74;
//link ethscan = https://goerli.etherscan.io/address/0x26f2584169d03bdf7e6a1b5c95a1abea336feb74




// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract countnumbers {
    uint public count;
    address _owner;
  constructor() {
    _owner = msg.sender;
  }
    modifier onlyOwner() {
     require(_owner == msg.sender);
     _;
    }
    function transfromownership(address _newOwner) public  onlyOwner{
      _owner = _newOwner;
    }
  function checkOwner () public view returns(address){
     return _owner;
  }
    function getcount() public view returns (uint){
       return  count; 
    }
    function inc_count() public  { 
       count +=1;
    }
    function dec_count() public {
        count -=1;
    }
}