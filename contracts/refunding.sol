// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.6.0 <0.9.0;


//import "hardhat/console.sol";
struct EmployeeDetail { 
        string name; 
        uint256 latitude;
        uint256 longitude;
        uint256 allowedDistance;
        uint256 amount;
    }

    mapping (address => EmployeeDetail) employeeDetail;
    mapping (address => bool) public employeeCondition;
    address[] public employees;

    constructor() {
        owner = msg.sender;
        console.log("Deploying a Refund with Owner:", owner);
    }
