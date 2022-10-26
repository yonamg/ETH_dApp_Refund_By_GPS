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

     function getOwner() public view returns (address) {
        return owner;
    }

    function createEmployee(address empAddress, string memory _name, uint256 _latitude, uint256 _longitude, uint256 _allowedDistance, uint256 _amount) public {
        // restrict employee creation to owner
        require(msg.sender == owner);
        // set Employee name using the employeeDetail mapping
        employeeDetail[empAddress].name = _name; 
        // set Employee latitude using the EmployeeDetail struct mapping
        employeeDetail[empAddress].latitude = _latitude;
        // set Employee longitude using the employeeDetail struct mapping
        employeeDetail[empAddress].longitude = _longitude;
        // set the Employee's allowed distance using the employeeDetail struct mapping
        employeeDetail[empAddress].allowedDistance = _allowedDistance;
        // set the amount using the employeeDetail struct mapping
        employeeDetail[empAddress].amount = _amount;
        // push user address into userAddresses array
        employees.push(empAddress);
    }

     function getEmployeeDetail(address empAddress) public view returns (string memory, uint256, uint256, uint256, uint256) {
        return (
            employeeDetail[empAddress].name, 
            employeeDetail[empAddress].latitude, 
            employeeDetail[empAddress].longitude, 
            employeeDetail[empAddress].allowedDistance,
            employeeDetail[empAddress].amount
            );
    }

     function getEmployees() public view returns (address[] memory) {
        return employees;
    }
