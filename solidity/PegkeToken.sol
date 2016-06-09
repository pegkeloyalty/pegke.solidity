contract PegkeToken {
  
  uint256 public totalTokens;
  uint256 initialTokens;
  string public tokenName;
  string public tokenSymbol;
  
  mapping (address => uint256) public balanceOf;
  
  function PegkeToken (){
    initialTokens = 10000;
    totalTokens = initialTokens;
    tokenName = "PegkeCoin";
    tokenSymbol = "℗";
    balanceOf[msg.sender] = initialTokens; 
  }
}