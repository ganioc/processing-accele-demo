int cube_width = 200;
int cube_length = 400;
int cube_height = 40;

int mark_width=200;
int mark_length=20;
int mark_height=20;

int film_width = 150;
int film_length = 300;
int film_height = 5;

int btn_width = 60;
int btn_length = 20;
int btn_height = 50;

void rectangle_setup(){

}
void rectangle_draw(){
  background(255);
  stroke(0);
  fill(175);
  rectMode(CENTER);
  rect(width/2, height/2,r,r);
  r++;
}
void rectangle_test(){
  background(255);
  stroke(255);
  fill(100);
  
  translate(width/2, height/2, z);
  rectMode(CENTER);
  rect(0,0,8,8);
  z++;
}

void rectangle_3d(){
   background(255);
   fill(200);
   beginShape();
   vertex(50,50);
   vertex(150,50);
   vertex(150,150);
   vertex(50,150);
   endShape(CLOSE);
   fill(255,0,0, 125);
   translate(width/2, height/2);
   rotate(radians(45));
   rectMode(CENTER);
   rect(0, 0, 100,100);
}
void rectangle_rotate(){
  background(255);
  stroke(0);
  fill(255,0,0,125);
  
  translate(width/2,height/2);
  rotateX(PI*mouseY/height);
  rotateY(PI*mouseX/width);
  rectMode(CENTER); //<>// //<>// //<>//
  rect(0,0,100,100);
  //theta+=0.02;
  
}
void drawPyramid(int t){
  stroke(0);
  fill(155,0,0,127);
  beginShape(TRIANGLES);
  vertex(-t,-t,-t);
  vertex(t,-t,-t);
  vertex(0, 0, t);
  fill(0,150,0,127);
  vertex(t,-t,-t);
  vertex(t, t, -t);
  vertex(0,0,t);
  fill(0,0,150,127);
  vertex(t, t, -t);
  vertex(-t, t, -t);
  vertex(0,0,t);
  fill(150,0,150,127);
  vertex(-t,t,-t);
  vertex(-t, -t, -t);
  vertex(0,0,t);
  endShape();
  
}
void rectangle_draw_pyramid(){
  background(144);
  theta += 0.01;
  
  translate(100,100,0);
  rotateX(theta);
  rotateY(theta);
  drawPyramid(50);
  
  translate(50,50,20);
  drawPyramid(10);
  
}

void rectangle_cube(){
  background(255);
  fill(255,0,0,150);
  //pushMatrix();
  translate(width/2,height/2,0);
  rotateX(theta_x + offset_x);
  rotateY(theta_y + offset_y);
  rotateZ(theta_z + offset_z);

  box( cube_width, cube_length, cube_height);
  
  fill(255,255,255,200);
  translate(0, -(cube_length - film_length -20)/2, cube_height/2 + film_height/2 );
  box(film_width, film_length,film_height);
  
  fill(255,255,0, 255);
  translate(0, cube_length/2, (-cube_height )/2);
  box(btn_width, btn_length, btn_height);

  //theta_x+=0.005;
  // theta_y+=0.005;
  // theta_z+=0.01;
  // offset_x += 0.01;
}
