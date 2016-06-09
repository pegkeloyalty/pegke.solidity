contract PegkeToken {
  
  uint256 public totalTokens;
  uint256 initialTokens;
  
  mapping (address => uint256) public balanceOf;
  
  function PegkeToken (){
    initialTokens = 10000;
    totalTokens = 10000;
    balanceOf[msg.sender] = initialTokens; 
  }
}