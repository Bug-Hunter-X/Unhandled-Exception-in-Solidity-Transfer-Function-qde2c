```solidity
function transfer(address to, uint amount) public {
    require(balanceOf[msg.sender] >= amount, "Not enough balance");
    require(to != address(0), "Invalid recipient address"); // Added check for zero address
    balanceOf[msg.sender] -= amount;
    balanceOf[to] += amount;
    emit Transfer(msg.sender, to, amount);
}

function balanceOf(address account) public view returns (uint) {
    return balances[account];
}
```