pragma solidity >0.4.21 <0.6.5;

contract SimpleStorage {

	uint public storedData;

	function set(uint x) public {
		storedData = x;
	}
}