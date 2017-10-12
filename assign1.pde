// 105405200 Lin-Yun-Jing assign1

PImage soil, 
       heart, 
       groundHog, 
       backGround,
       robot,
       soldier;
       
int soldierX, soldierY, robotX, robotY, attackSpeed ,attackStar,attackEnd, attackLen;
       
       
void setup() {
  size(640, 480, P2D);
  soil = loadImage("img/soil.png");
  heart = loadImage("img/life.png");
  groundHog = loadImage("img/groundhog.png");
  backGround = loadImage("img/bg.jpg");
  robot = loadImage("img/robot.png");
  soldier = loadImage("img/soldier.png");
  
  soldierY=80+80+floor(random(1,3))*80;
  
  robotX=80+80+80*floor(random(5));
  robotY=80+80+floor(random(1,3))*80;
  
}

void draw() {
  soldierX +=2;
  soldierX %=640;
  attackSpeed += 2;
  attackSpeed %=185;
  attackStar=robotX+25;
  attackEnd=robotX+25;
  attackLen = min(40,attackSpeed);
 
  
//background
  //sky
  image(backGround,0,0);

  //soil 
  image(soil,0,160);
  
  //lawn
  stroke(124,204,25);
  strokeWeight(15);
  line(0,160-15/2.0,640,160-15/2.0);
  
  //sun
  strokeWeight(5);
  stroke(255,255,0);
  fill(253,184,19);
  arc(590,50,120,120,0,TWO_PI,CHORD);
  
  //life
  image(heart,10,10);
  image(heart,80,10);
  image(heart,150,10);
  
  //groundhog
  image(groundHog,640/2-40,80);
  
  //soldier
  image(soldier,soldierX,soldierY);
  
  //robot
  image(robot,robotX,robotY);
  
  //attack
  stroke(255,0,0);
  strokeWeight(10);
  line(attackStar-attackSpeed,robotY+37,attackEnd-attackSpeed+attackLen,robotY+37);

  
}
