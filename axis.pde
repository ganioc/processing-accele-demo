/*


*/
float BigG=9.8;
float degree_unit=1/360.0*PI;

void update_theta(float firstVal, float secondVal, float thirdVal){
  float x_val = -(firstVal/BigG)*PI/2;
  float y_val = (secondVal/BigG)*PI/2;
  float z_val = -(thirdVal/BigG)*PI/2;
  println("transformed", x_val, y_val, z_val);
   
   theta_x = x_val;
   theta_y = y_val;
   theta_z = z_val;
}
/*
  z, 0~360,
  x, -180~180,
  y, -90~90, 
  
*/
void update_orientation(float firstVal, float secondVal, float thirdVal){
  float z_val = firstVal/180.0*PI;
  float x_val = secondVal/180.0*PI;
  float y_val = -thirdVal/180.0*PI;
  println("transformed(z,x,y)", z_val,x_val,y_val);
  
  theta_z = z_val;
  theta_x = x_val;
  theta_y = y_val;
  

}
