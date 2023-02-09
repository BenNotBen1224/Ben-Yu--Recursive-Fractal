//0.618
//Rectangle centered at upper left
//positive rotates clockwise
public void setup(){
  size(1000, 1000);
}

public void draw(){
  goldenSpiral(500);
  /*
  rotate(PI/6);
  rect(0, 0, 100, 100);
  rotate(-PI/6);
  */
}

float goldenRatio = (1 + sqrt(5)) / 2;
public void goldenSpiral(float h){
    /*
    beginShape();
    curveVertex(0, length/1.618);
    curveVertex(0, length/1.618);
    curveVertex(3*length/(4*1.618), 3*length/(1.618*4));
    curveVertex(length/1.618, 0);
    curveVertex(length/1.618, 0);
    endShape();
    rotate(PI/2);
    Thing(length/1.618);
    */
    /*
    curveVertex(0, length);
    curveVertex(0, length);
    curveVertex(3*length/5, 3*length/5);
    curveVertex(length, 0);
    curveVertex(length, 0);
    rotate(PI/2);
    //translate(-length*0.618, 0);
    Thing(length*2);
    */
    // Base case: stop drawing if the height is too small.
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
