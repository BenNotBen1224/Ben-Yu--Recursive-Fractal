//0.618
//Rectangle centered at upper left
//positive rotates clockwise

public void setup(){
  size(1000, 1000);
}

public void draw(){
  goldenSpiral(500);
  /*
  //test rotation
  rotate(PI/6);
  rect(0, 0, 100, 100);
  rotate(-PI/6);
  */
}

float goldenRatio = 1.618;
public void goldenSpiral(float h){
  // Base case
  if (h < 2) {
    return;
  }

  // Draw bounding box and quarter circle.
  rect(0, 0, h, h);
  arc(h, h, 2 * h-1, 2 * h-1, PI, PI + HALF_PI);

  // Reposition canvas for next iteration.
  translate(h * goldenRatio, 0);
  rotate(HALF_PI);

  // Perform recursive call (with height scaled down by golden ratio).
  goldenSpiral(h / goldenRatio);
}
