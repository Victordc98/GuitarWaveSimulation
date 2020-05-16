void calcWave() {
  // theta (angular velocity) is controlled by the MouseX position while dragging 
  theta += waveRate;

  // Set all height values to zero
  for (int i = 0; i < yvalues.length; i++) {
    yvalues[i] = 0;
  }
 
  // Accumulate wave height values
  for (int j = 0; j < maxwaves; j++) {
    float x = theta;
    for (int i = 0; i < yvalues.length; i++) {
      // Every other wave is cosine instead of sine
      if (j % 2 == 0){
        yvalues[i] += 2*sin(3*x)*amplitude[j];
      }
      else{
        yvalues[i] += 3*cos(x)*amplitude[j];
      }
      x+=dx[j];
    }
  }
  
  
}
