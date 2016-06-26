contract PegkeToken {

	uint256 public totalTokens;
	uint256 initialTokens;
	string public tokenName;
	string public tokenSymbol;

	mapping (address => uint256) public balanceOf;

	event SendLog(address indexed_from, address indexed_to, uint256 value);

	function PegkeToken() {
		initialTokens = 10000;
		totalTokens = initialTokens;
		tokenName = "PegkeCoin";
		tokenSymbol = "℗";
		balanceOf[msg.sender] = initialTokens; 
	}

	function sendToken(address reciever,uint256 tokenAmount) {
		if (balanceOf[msg.sender] < tokenAmount) throw; 
		balanceOf[msg.sender] -= tokenAmount;
		balanceOf[reciever] += tokenAmount;
		SendLog(msg.sender, reciever, tokenAmount);
	}

	function loyaltyStake(address reciever, uint256 tokenAmount, uint8 tokenPercentage){
		if (balanceOf[reciever] < tokenAmount) throw;
		balanceOf[reciever] += (tokenPercentage/100) * tokenAmount;
	}

	function () {
	    throw;   
	}
}