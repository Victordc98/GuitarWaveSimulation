import processing.sound.*;


SoundFile guitar;


int xspacing = 4;   // How far apart should each horizontal location be spaced
int w;              // Width of entire wave
int maxwaves = 8;   // total # of waves to add together
float soundRate;
float waveRate;
float triggerWave=-1;

float theta = 0.03;
float[] amplitude = new float[maxwaves];   // Height of wave
float[] dx = new float[maxwaves];          // Value for incrementing X, to be calculated as a function of period and xspacing
float[] yvalues;                           // Using an array to store height values for the wave (not entirely necessary)

void setup() {
  //size(640, 360);
  fullScreen();
  frameRate(30);
  colorMode(RGB, 255, 255, 255, 100);
  w = width-10;
  
  guitar = new SoundFile(this, "Amped Synth Lead_bip_1.wav");

  for (int i = 0; i < maxwaves; i++) {
    amplitude[i] = random(10,30);
    float period = random(100,300); // How many pixels before the wave repeats
    dx[i] = (TWO_PI / period) * xspacing;
  }

  yvalues = new float[w/xspacing];
  
}

void draw() {
  noStroke();
  fill(random(100,150),20,140, 130);
  rect(0,0,width,height);
  
  calcWave();
  
  if(triggerWave == 1){
    renderWave(); 
    if(guitar.isPlaying()!=true){
    guitar.loop();
    }
  }
  
  if(triggerWave == -1){
    renderLine();
    if(guitar.isPlaying()){
    guitar.pause();
    }
  }
  
    
  guitar.rate(soundRate);
  
  
  
  
}
