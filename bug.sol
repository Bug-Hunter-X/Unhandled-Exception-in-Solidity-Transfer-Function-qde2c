```solidity
function transfer(address to, uint amount) public {
    require(balanceOf[msg.sender] >= amount, "Not enough balance");
    balanceOf[msg.sender] -= amount;
    balanceOf[to] += amount;
    emit Transfer(msg.sender, to, amount);
}

function balanceOf(address account) public view returns (uint) {
    return balances[account];
}
```