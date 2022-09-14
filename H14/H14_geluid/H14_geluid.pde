import processing.sound.*;

SoundFile file;

void setup(){
  file= new SoundFile(this, "regen.wav");
  file.play();

}
