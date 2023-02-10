//0.618
//Rectangle centered at upper left
//positive rotates clockwise

public void setup(){
  size(1620, 1000);
}

public void draw(){
  goldenSpiral(1000);
}

float goldenRatio = 1.618;
public void goldenSpiral(float length){
  if(length < 1)
    return;
  
  fill(0);
  noStroke();
  rect(0, 0, length, length);
  
  fill(255);
  stroke(255, 215, 0);
  strokeWeight(2);
  arc(length, length, 2*length-1, 2*length-1, PI, 3*PI/2);  
  
  translate(length*goldenRatio, 0);
  rotate(PI/2);
  
  goldenSpiral(length/goldenRatio);
}
