// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.5.11;

contract Doacao {
    
    address _dono = msg.sender;
    address _beneficiario;
    uint _total;
    i
    constructor(address beneficiario) public {
        _beneficiario = beneficiario;
    }
    
    function() external payable {
        _total += msg.value;
    }
    
    function obterTotal() public view returns (uint) {
        return address(this).balance;
    }
    
    function pagarBeneficiario() public {
        require(msg.sender == _dono);
        (bool sent, bytes memory data) = _beneficiario.call.value(address(this).balance)("");
    }
    
}