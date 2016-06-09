contract PegkeToken {
  
  uint public totalTokens;
  uint initialTokens;
  
  mapping (address => uint) balanceOf;
  
  function PegkeToken (){
    initialTokens = 10000;
    totalTokens = 10000;
    balanceOf[msg.sender] = initialTokens; 
  }
}