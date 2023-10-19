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