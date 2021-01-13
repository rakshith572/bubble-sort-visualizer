float []values;
int i=0;
int j=0;
void setup() {
  //fullScreen(P2D);
  size(1000, 800);
  values=new float[width];
  for (int i=0; i<values.length; i++) {
    values[i]=random(height);
  }
}
void draw() {
  background(0);
  if (i<values.length) {
    for (j=0 ;j <values.length-i-1; j++) {
      if (values[j]> values[j+1]) {
        float temp=values[j];
        values[j]=values[j+1];
        values[j+1]=temp;
      }
    }
  }else{
     println("finished");
    noLoop();
  }
  i++;
  for (int i=0; i<values.length; i++) {
    stroke(255);
    line(i, height, i, height-values[i]);
  }
}
