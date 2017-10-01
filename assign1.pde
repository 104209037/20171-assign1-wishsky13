// 105405200 Lin-Yun-Jing assign1

PImage soil, 
       heart, 
       groundHog, 
       backGround,
       robot,
       soldier;
       
int soldierX, attackSpeed ,attackStar,attackEnd, attackLen;
       
       
void setup() {
	size(640, 480, P2D);
  soil = loadImage("img/soil.png");
  heart = loadImage("img/life.png");
  groundHog = loadImage("img/groundhog.png");
  backGround = loadImage("img/bg.jpg");
  robot = loadImage("img/robot.png");
  soldier = loadImage("img/soldier.png");
  
 
}

void draw() {
  soldierX +=2;
  soldierX %=640;
  attackSpeed += 2;
  attackSpeed %=185;
  attackStar=450;
  attackEnd=450;
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
  image(soldier,soldierX,160);
  
  //robot
  image(robot,425,400);
  
  //attack
  stroke(255,0,0);
  strokeWeight(10);
  line(attackStar-attackSpeed,437,attackEnd-attackSpeed+attackLen,437);
  
}
