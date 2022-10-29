import './App.css';
import React, { useState } from 'react';
import { ethers } from 'ethers';


import Lock from "./artifacts/contracts/refund.sol/Refund.json"

const LockAddress = "0x5FC8d32690cc91D4c39d9d3abcBD16989F875707"

function App() {
    const [inputList, setInputList] = useState([{ EmpName: "", publicAddress: "" }]);
  
    // handle input change
    const handleInputChange = (e, index) => {
      const { name, value } = e.target;
      const list = [...inputList];
      list[index][name] = value;
      setInputList(list);
    };

      // handle click event of the Remove button
  const handleRemoveClick = index => {
    const list = [...inputList];
    list.splice(index, 1);
    setInputList(list);
  };