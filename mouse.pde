void mouseDragged(){
  
  waveRate= map(mouseX,0,width,.01,.8);
  soundRate= map(mouseX,0,width,.5,1.4);



}

void mouseClicked(){
  
  triggerWave  = -triggerWave;
  
  


}
