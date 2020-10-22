pragma solidity >=0.4.22 <0.8.0;

contract Test {
    address private owner = msg.sender;
    string public name;

    event NameSet(string name);

    modifier restricted() {
        require(
            msg.sender == owner,
            "This function is restricted to the contract's owner"
        );
        _;
    }

    function setName(string memory n) public {
        name = n;
        emit NameSet(n);
    }
}
