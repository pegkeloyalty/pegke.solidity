contract PegkeToken {
  
  mapping (address => uint) balanceOf;
  
  function PegkeToken (){
    balanceOf[msg.sender] = 10000;  
  }
}