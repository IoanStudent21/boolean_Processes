// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

 import "hardhat/console.sol";

contract Procedure_Logging {
    uint public unlockTime;
    address payable public owner;

    bool public firstProcedure;
    bool public secondProcedure;
    bool public thirdProcedure;


    event DataStored(uint data);

    constructor()  {
        firstProcedure = false;
        secondProcedure = false;
        thirdProcedure = false;
    }

    function Procedure_1() public {
        // Emit an event to indicate that Procedure_1 has been executed
        emit DataStored(1);
        firstProcedure = true;
    }

    function Procedure_2() public {
        // Emit an event to indicate that Procedure_2 has been executed
        emit DataStored(2);
        secondProcedure = true;
    } 

    function Procedure_3() public {
        // Emit an event to indicate that Procedure_3 has been executed
        emit DataStored(3);
        thirdProcedure = true;
    }

    function ResetValues() public {
        firstProcedure = false;
        secondProcedure = false;
        thirdProcedure = false;
    }
}