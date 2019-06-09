 float mass=1000;
float gc=1000;
float framerater=30;
asteroid as1;
asteroid asteroids[];
sds space1;
sds space2;
sds space3;
sds space4;
int ascounter=0;
int timerer=0;
float cashew=0.0000000000;
PImage planet;
PImage backg;
PImage ss;
PImage astroid;
PImage won;
PImage lost;
float elevel=10000;
PFont font1;
PFont font2;
PFont gover;
long populous=700000000;
String oldul="";
String oldscore="";
float score=0;
String scorer="";
int firstbanged=100;
int rocknum=10;
String oldthr="";
boolean buildphase=false;
boolean presentation=true;
int limit=0;
String oldcash="0.00";
int nostations=0;
boolean sbuildphase=false;
int buildtimer=0;
int clicktimer=0;
int warnum=0;
boolean wbuildphase=false;
int wbuildtimer=0;
int limtimer=90;
void setup() 

{
  limtimer=90;
  wbuildtimer=0;
  wbuildphase=false;
  warnum=0;
  clicktimer=0;
  sbuildphase=false;
buildtimer=0;
  nostations=0;
  limit=0;
  size(900, 600);
  background(0);
  //as1=new asteroid(290,190,0,86,20);
  //noStroke();
  frameRate(framerater);
  asteroids=new asteroid[1000];
  backg=loadImage("BACKGROUND.JPG");
  planet = loadImage("planet.JPG");
  font1 = loadFont("LCDReg-20.vlw"); 
  font2=loadFont("a20.vlw");
  gover=loadFont("gover.vlw");
  astroid=loadImage("ast.JPG");
  won=loadImage("end.JPG");
  lost=loadImage("badend.JPG");
  ss=loadImage("sds.JPG");
populous=700000000;
elevel=10000;
timerer=0;
ascounter=0;
score=0;
firstbanged=100;
rocknum=10;
buildphase=false;
presentation=true;
cashew=0.00000;
space1=new sds(1);
space1.over=true;
space2=new sds(2);
space2.over=true;
space3=new sds(3);
space3.over=true;
space4=new sds(4);
space4.over=true;
}

void draw()
{
  
  
  if (presentation==true)
  
  { 
    textFont(font2);  
    //textSize(18);
    image(backg,0,0);
    fill(0,240,240);
    text("THE LAST MAYAN CALENDAR ENDS IN 2012. SOME PEOPLE BELIEVE THAT YEAR OUR WORLD WILL END TOO. ",15,30);
    text("THEY MIGHT BE RIGHT!",331,60);
    text("IN 2010 A HIGH-SPEED UNDETECTED PLANETOID HIT MARS, FRAGMENTING AND SENDING THOUSANDS ",20,100);
    text("OF PIECES OF EJECTA INTO THE INNER SOLAR SYSTEM. IN 2012,SOME OF THESE ROCKS REACHED EARTH.",5,150);
    text("WITH LITTLE WARNING, SPACE COMMAND HAS DEVISED A PLAN TO AVERT THE THREAT.BY USING NUCLEAR",15,200);
    text("THRUSTERS THAT FEED ON AN ASTEROID'S MASS AND EJECT MATTER AWAY FROM THE ASTEROID, THESE ",15,250);
    text("INTERPLANETARY INTERLOPERS CAN BE DEFLECTED JUST ENOUGH TO MISS EARTH. CLICK AROUND THE ",5,300);
    text("CIRCUMFERENCE OF AN ASTEROID TO PLACE A THRUSTER AT THAT LOCATION. BE AWARE THAT PLACING A",5,350);
    text("THRUSTER SUCH THAT IT PUSHES DIRECTLY AGAINST THE METEOR WILL HAVE LITTLE EFFECT ON THE",15,400);
    text("PATH OF LARGER BODIES. INSTEAD,TRY TO GET THE ROCKS TO ACCELERATE PARALLEL TO OUR PLANET ",5,450);
    text("AND ACHIEVE STABLE ORBITS...IT IS UP TO YOU TO PREVENT THE EXTINCTION OF THE HUMAN RACE.",20,500);
     text("GOOD LUCK!",380,540);
    text("CLICK THE SCREEN TO START GAME.",276,575);
    
    
  }
    else
    {
      if (limit>100)
      {
        limtimer=limtimer-1;
      }
      if (limtimer<1)
     { 
        textFont(font2);  
    //textSize(18);
    image(won,0,0);
    fill(0,240,240);
    text("CONGRATULATIONS!  EARTH HAS WEATHERED THE COSMIC STORM....THANKS TO YOU! ",30,20);
    text("THE SKY IS PEACEFUL AGAIN....",5,50);
    text("YOUR SCORE IS "+scorer+". CLICK THE SCREEN TO START A NEW GAME.",200,80);
      }
        
  else if (populous>0)
  {
    clicktimer++;
  timerer=timerer+1;
  if ((buildphase==true))
  {
   if (buildtimer==1) 
  
  {
          if (space1.over==true)
          {
          space1.over=false;
          space1.firetimer=0;
          space1.collision=false;
          space1.colframe=0;
          nostations=nostations+1;
          //cashew=cashew-10;
          }
          else if (space2.over==true)
          {
          space2.over=false;
          space2.firetimer=0;
          space2.collision=false;
          space2.colframe=0;
          nostations=nostations+1;
          //cashew=cashew-10;
          }
          else if (space3.over==true)
          {
          space3.over=false;
          space3.firetimer=0;
          space3.collision=false;
          space3.colframe=0;
          nostations=nostations+1;
          //cashew=cashew-10;
          }
          else if (space4.over==true)
          {
          space4.over=false;
          space4.firetimer=0;
          space4.collision=false;
          space4.colframe=0;
          nostations=nostations+1;
          //cashew=cashew-10;
          }
          
          
         sbuildphase=false;
        buildtimer=0; 
        
      }
      else
      {
        buildtimer--;
      }
  }
  
  if ((wbuildphase==true))
  {
   if (wbuildtimer==1) 
  
  {
    
         warnum=warnum+1;
          //cashew=cashew-10;
          
          
         wbuildphase=false;
        wbuildtimer=0; 
        
      }
      else
      {
        wbuildtimer--;
      }
  }
  if (populous<900000000)
  {
  populous=populous+50+round(random(50));
  
  }
  elevel=elevel+1;
  if (timerer%60==0)
  {
    float popul=populous;
    
    
    cashew=cashew+popul/900000000;
    //cashew=cashew+0.01;
    timerer=0;
    /*if (ascounter>firstbanged)
    {
    
    asteroids[firstbanged]=new asteroid(random(2800),0,random(80),random(80),0);
    score=score+elevel/10000;
    }
    else
    {*/
    if (limit<=100)
    {
    ascounter=ascounter+1;
    asteroids[ascounter]=new asteroid(random(2800),0,random(80),random(80),0);
    //print(ascounter);
    }
    score=score+elevel/10000;
    
  }
  /*if (timerer%10==0)
  
  { 
    for (int fp=1;fp<=ascounter;fp++)
    {
    for (int sp=1;sp<=ascounter;sp++)
    {
       if (fp!=sp)
    {
      if (abs(asteroids[fp].x-asteroids[sp].x)<asteroids[fp].rad+asteroids[sp].rad && abs(asteroids[fp].y-asteroids[sp].y)<asteroids[fp].rad+asteroids[sp].rad && asteroids[fp].banged==false && asteroids[sp].banged==false)
     {
       float m1x=asteroids[fp].vx*asteroids[fp].rad;
       float m2x=asteroids[sp].vx*asteroids[sp].rad;
       float newvx=(m1x+m2x)/(asteroids[fp].rad+asteroids[sp].rad);
       float m1y=asteroids[fp].vy*asteroids[fp].rad;
       float m2y=asteroids[sp].vy*asteroids[sp].rad;
       float newvy=(m1y+m2y)/(asteroids[fp].rad+asteroids[sp].rad);
       float newx=(asteroids[fp].x+asteroids[sp].x)/2;
       float newy=(asteroids[fp].y+asteroids[sp].y)/2;
       asteroids[fp].vx=newvx;
       asteroids[fp].vy=newvy;
       asteroids[fp].x=newx;
       asteroids[fp].y=newy;
       asteroids[fp].rad=asteroids[fp].rad+asteroids[sp].rad;
       asteroids[sp].over=true;
       if (firstbanged>sp)
       {
         firstbanged=sp;
       }
       
     } 
    }   
    }
    }
  }*/
  if (timerer%180==0)
  {
    buildphase=false;
    if (rocknum<10)
    {
      rocknum=rocknum+1;
    }
  }
  else
  {
    
      if (rocknum<10)
      {
       buildphase=true; 
      }
    }
  background(0);
  stroke(0,0,255);
  fill(0,0,255);
  image(planet,350,250);
  //ellipse(400,300,100,100);
  boolean picked=false;
  for (int counter=1;counter<=ascounter;counter++)
  {
 

    
  
  if ((asteroids[counter].over==true) && (counter<firstbanged))
    
    {
     firstbanged=counter; 
    }
    asteroids[counter].update();
    asteroids[counter].check_col(counter);
   
    if ((abs(mouseX-asteroids[counter].x)<35) && (abs(mouseY-asteroids[counter].y)<35) && (asteroids[counter].over==false) && (picked==false) && (asteroids[counter].banged==false) && (asteroids[counter].collision==false) && (mouseX<=800))
{
  stroke(255,0,0);
  noFill();
  ellipse(asteroids[counter].x,asteroids[counter].y,30,30);
  float delta=sqrt(pow(mouseX-asteroids[counter].x,2)+pow(mouseY-asteroids[counter].y,2));
  picked=true;
  if (delta>0)
  {
    
  
  
  
  line(int(asteroids[counter].x),int(asteroids[counter].y),int(asteroids[counter].x-15*(mouseX-asteroids[counter].x)/delta),int(asteroids[counter].y-15*(mouseY-asteroids[counter].y)/delta));
  }
}
   asteroids[counter].render();
    
  }
      space1.update();
    space1.render();
     space2.update();
    space2.render();
     space3.update();
    space3.render();
    space4.update();
    space4.render();
    space1.fire();
    space2.fire();
    space3.fire();
    space4.fire();
    
  //as1.update();
  //as1.render();
stroke(100,100,100);
  textMode(MODEL);
  textFont(font1); 
  fill(100,255,100);
text("POPULATION", 800, 20);
text("THRUSTERS", 800, 80); 
if (buildphase==true)
{
text("BUILDING...",800,130);
}

text("WARHEADS", 800, 200);
text(warnum, 820, 230);
text("STATIONS", 800, 320);
text(nostations,820,350);
//noFill();
if ((cashew>10) && (nostations<4) && (sbuildphase==false))
{
fill(100,50,0);
rect(800,365,60,40);
fill(100,255,100);
text("BUILD", 810, 390);
}
else if (sbuildphase==true)

{
  text("BUILDING...",800,390);
  
}

if ((cashew>5) && (wbuildphase==false))
{
fill(100,50,0);
rect(800,245,60,40);
fill(100,255,100);
text("BUILD", 810, 275);
}
else if (wbuildphase==true)

{
  text("BUILDING...",800,275);
  
}

text("CASH", 840, 440);
text("SCORE", 840, 500);



if (timerer % 3==0)
{
if (populous>0)
{
  String trailer="";
  int trai=round(random(9));
  trailer=trai+"";
String popul=populous+trailer;
 oldul=populous+trailer;
text(popul,800,40);
int scorint=0;
scorint=round(score);
scorer="";
scorer=""+scorint;
text(scorer,840,520);
oldscore=scorer;
String cashstr="";
cashstr=cashew+"0000000";
//print(cashew);
cashstr=cashstr.substring(0,5)+" bil.";
oldcash=cashstr;
text(cashstr,820,470);
String thr=rocknum+"";
oldthr=thr;
text(thr,840,100);

}
else
{
  text("0",800,40);
}
  }
  else
  {
    text(oldul,800,40);
    text(oldscore,840,520);
    text(oldthr,840,100);
    text(oldcash,820,470);
  }
  }
  else
  {
    textFont(gover);
    textSize(30);
    background(0);
    fill(200,0,0);
    image(lost,0,0);
    text("GAME OVER!  YOUR SCORE IS  "+scorer+".  CLICK THE SCREEN TO START A NEW GAME.",50,500);
  
}
}
    }
class asteroid {
  boolean nukeblow;
  float x, y;
float rad;
  float vx, vy;
  boolean rocket=false;
  float rockx;
  float rocky;
  float inrad;
  float rockposx;
  float rockposy;
  boolean banged=false;
  int bangedframe=20;
 boolean over=false;
 int colframe=0;
  int pts=12;
float[] pxs;
boolean collision=false;
float[] pys;
  
  asteroid(float ix, float iy, float ivx, float ivy, float irad) {
 /*pxs = new float[pts+1];
 pys=new float[pts+1]; 
    for (int pctr=1;pctr<=12;pctr++)
   {
    pxs[pctr]=random(2)-1;
    //print("x["+pctr+"] is"+pxs[pctr]);
   pys[pctr]=random(2)-1; 
   //print("y["+pctr+"] is"+pys[pctr]);
   }*/
   nukeblow=false;
    if (ix<600)
   {
     x=0;
     y=ix;
     vx=ivx;
     if (y>300)
     {
       vy=-ivy;
     }
     else
     {
       vy=ivy;
     }
   }
   else if (ix<1400)
   {
     
     x=ix-600;
     vy=ivy;
     if (x>400)
     {
       vx=-ivx;
     }
     else
     {
       vy=ivy;
     }     
   }
   else if (ix<2000)
   {
        x=800;
     y=ix-1400;
     vx=-ivx;
     if (y>300)
     {
       vy=-ivy;
     }
     else
     {
       vy=ivy;
     }
   }
   else if (ix<2800)
   {
     
     x=ix-2000;
     vy=-ivy;
     if (x>400)
     {
       vx=-ivx;
     }
     else
     {
       vy=ivy;
     }     
   }
   
   
    rad=elevel/8000*random(10);
    if (rad>25) 
    {rad=25;
    }
    if (rad<5) 
    {rad=5;
    }
    inrad=rad;
    
    rocket=false;
    rockposx=0;
    rockposy=0;
    colframe=0;
   /* for (int cntr=0;cntr<pts;cntr++)
    { pxs[cntr]=0;
      pys[cntr]=0;
      float angler=cntr/pts*2*3.1416;
      float xs=(rad)*cos(angler);
      float ys=(rad)*sin(angler);
      pxs[cntr]=round(xs);
      pys[cntr]=round(ys);
    }*/
banged=false;
over=false;
collision=false;
colframe=0;
rocket=false;
}
  
  // Custom method for updating the variables
  void update() 
  {
     
    if (over==false)
    {
      //print(" asteroid:" +ascounter + " x: "+x+" y:"+y); 
   if (rad>0)
   {
    float distance=sqrt(pow(x-400,2)+pow(y-300,2));
    if (distance>50+rad/2)
    {
    
    float accel=mass*gc/pow(distance,2);
    float accelx=accel*(400-x)/distance;
    float accely=accel*(300-y)/distance;
    vx=vx+accelx/framerater;
    vy=vy+accely/framerater;
    if (inrad-rad>=5)
    {
      rocket=false;
    }
    
    if (rocket==true)
    {
      vx=vx+rockx/framerater;
      vy=vy+rocky/framerater;
      rad=rad-0.1;
      if (rad<=0.1)
      
      {
       limit=limit+1; 
       over=true;
      }
    }
    
    x=x+vx/framerater;
    y=y+vy/framerater;
   
  }
    else
  {
    if (banged==false)
    {
    populous=populous-round(rad)*(round(10000000+random(1000000)));
  }
  banged=true;}
  }
  
  }
  
  
  }
  
  
 
  void render() 
  {
    
    if (over==false)
    {
  if (rad>0)
{  
  
  
  
  if ((x>0) && (x<800-rad) && (y>0) && (y<600) && (banged==false))
 { 
  stroke(100,100,100);
  fill(100,100,100);
/*beginShape();
for (int cntr=0;cntr<pts;cntr++)
{
  vertex(x+pxs[cntr],y+pys[cntr]);
//vertex(x+cntr,y+cntr);
}
endShape(CLOSE);*/
int newxi=0;
newxi=int(x-rad/2);
int newyi=0;
newyi=int(y-rad/2);
if (rad>=2)
{
image(astroid,newxi,newyi,rad,rad);
}
else
{
    stroke(255,255,255);
  fill(255,255,255);
  point(x,y);
}

//ellipse(x,y,rad,rad); 

//triangle(x+rad,y+rad,x-rad,y-rad,x+rad,y-rad);
 if (rocket==true)
 
 {
     
  //fill(200,200,200);
  stroke(255,0,0);
  float magrock=sqrt(pow(rockposx,2)+pow(rockposy,2));
  line(x+rockposx,y+rockposy,x+rockposx+round(rockposx/magrock*10)-random(5)+random(5),y+rockposy+round(rockposy/magrock*10)-random(5)+random(5));
  line(x+rockposx,y+rockposy,x+rockposx+round(rockposx/magrock*10)-random(5)+random(5),y+rockposy+round(rockposy/magrock*10)-random(5)+random(5));
  line(x+rockposx,y+rockposy,x+rockposx+round(rockposx/magrock*10)-random(5)+random(5),y+rockposy+round(rockposy/magrock*10)-random(5)+random(5));
  line(x+rockposx,y+rockposy,x+rockposx+round(rockposx/magrock*10)-random(5)+random(5),y+rockposy+round(rockposy/magrock*10)-random(5)+random(5));
  line(x+rockposx,y+rockposy,x+rockposx+round(rockposx/magrock*10)-random(5)+random(5),y+rockposy+round(rockposy/magrock*10)-random(5)+random(5));
  line(x+rockposx,y+rockposy,x+rockposx+round(rockposx/magrock*10)-random(5)+random(5),y+rockposy+round(rockposy/magrock*10)-random(5)+random(5));
  line(x+rockposx,y+rockposy,x+rockposx+round(rockposx/magrock*10)-random(5)+random(5),y+rockposy+round(rockposy/magrock*10)-random(5)+random(5));
  line(x+rockposx,y+rockposy,x+rockposx+round(rockposx/magrock*10)-random(5)+random(5),y+rockposy+round(rockposy/magrock*10)-random(5)+random(5));
   line(x+rockposx,y+rockposy,x+rockposx+round(rockposx/magrock*10)-random(5)+random(5),y+rockposy+round(rockposy/magrock*10)-random(5)+random(5));
  line(x+rockposx,y+rockposy,x+rockposx+round(rockposx/magrock*10)-random(5)+random(5),y+rockposy+round(rockposy/magrock*10)-random(5)+random(5));
  line(x+rockposx,y+rockposy,x+rockposx+round(rockposx/magrock*10)-random(5)+random(5),y+rockposy+round(rockposy/magrock*10)-random(5)+random(5));
  line(x+rockposx,y+rockposy,x+rockposx+round(rockposx/magrock*10)-random(5)+random(5),y+rockposy+round(rockposy/magrock*10)-random(5)+random(5));
  line(x+rockposx,y+rockposy,x+rockposx+round(rockposx/magrock*10)-random(5)+random(5),y+rockposy+round(rockposy/magrock*10)-random(5)+random(5));
  line(x+rockposx,y+rockposy,x+rockposx+round(rockposx/magrock*10)-random(5)+random(5),y+rockposy+round(rockposy/magrock*10)-random(5)+random(5));
  line(x+rockposx,y+rockposy,x+rockposx+round(rockposx/magrock*10)-random(5)+random(5),y+rockposy+round(rockposy/magrock*10)-random(5)+random(5));
  line(x+rockposx,y+rockposy,x+rockposx+round(rockposx/magrock*10)-random(5)+random(5),y+rockposy+round(rockposy/magrock*10)-random(5)+random(5));
 }
 }
 if ((banged==true) && (bangedframe>0))
 {
   stroke(7*(rad/2+bangedframe),0,0);
   
   fill(7*(rad/2+bangedframe),0,0);
//ellipse(x,y,rad+bangedframe,rad+bangedframe);
if (nukeblow==false)
{
stroke(5*(rad/2+bangedframe),0,0);
 fill(5*(rad/2+bangedframe),0,0);
}
else
{
  stroke(255,5*(rad/2+bangedframe),0);
 fill(255,5*(rad/2+bangedframe),0);
}

 if (rad<10)
 {
ellipse(x+random(rad)-rad/2+random(bangedframe)-bangedframe/2,y+random(rad)-rad/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(rad),random(bangedframe/2)+random(rad));
ellipse(x+random(rad)-rad/2+random(bangedframe)-bangedframe/2,y+random(rad)-rad/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(rad-1),random(bangedframe/2)+random(rad-1));
ellipse(x+random(rad)-rad/2+random(bangedframe)-bangedframe/2,y+random(rad)-rad/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(rad-2),random(bangedframe/2)+random(rad-2));
ellipse(x+random(rad)-rad/2+random(bangedframe)-bangedframe/2,y+random(rad)-rad/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(rad-3),random(bangedframe/2)+random(rad-3));
ellipse(x+random(rad)-rad/2+random(bangedframe)-bangedframe/2,y+random(rad)-rad/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(rad-4),random(bangedframe/2)+random(rad-4));
ellipse(x+random(rad)-rad/2+random(bangedframe)-bangedframe/2,y+random(rad)-rad/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(rad-5),random(bangedframe/2)+random(rad-5));
ellipse(x+random(rad)-rad/2+random(bangedframe)-bangedframe/2,y+random(rad)-rad/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(rad-6),random(bangedframe/2)+random(rad-6));
ellipse(x+random(rad)-rad/2+random(bangedframe)-bangedframe/2,y+random(rad)-rad/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(rad-7),random(bangedframe/2)+random(rad-7));
ellipse(x+random(rad)-rad/2+random(bangedframe)-bangedframe/2,y+random(rad)-rad/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(rad-8),random(bangedframe/2)+random(rad-8));
ellipse(x+random(rad)-rad/2+random(bangedframe)-bangedframe/2,y+random(rad)-rad/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(rad-9),random(bangedframe/2)+random(rad-9));
ellipse(x+random(rad)-rad/2+random(bangedframe)-bangedframe/2,y+random(rad)-rad/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(rad-10),random(bangedframe/2)+random(rad-10));
ellipse(x+random(rad)-rad/2+random(bangedframe)-bangedframe/2,y+random(rad)-rad/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(rad),random(bangedframe/2)+random(rad));
ellipse(x+random(rad)-rad/2+random(bangedframe)-bangedframe/2,y+random(rad)-rad/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(rad),random(bangedframe/2)+random(rad));
ellipse(x+random(rad)-rad/2+random(bangedframe)-bangedframe/2,y+random(rad)-rad/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(rad),random(bangedframe/2)+random(rad));
ellipse(x+random(rad)-rad/2+random(bangedframe)-bangedframe/2,y+random(rad)-rad/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(rad),random(bangedframe/2)+random(rad));
ellipse(x+random(rad)-rad/2+random(bangedframe)-bangedframe/2,y+random(rad)-rad/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(rad),random(bangedframe/2)+random(rad));
 }
 else
 {
   ellipse(x+random(10)-10/2+random(bangedframe)-bangedframe/2,y+random(10)-10/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(10),random(bangedframe/2)+random(10));
   ellipse(x+random(10)-10/2+random(bangedframe)-bangedframe/2,y+random(10)-10/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(10),random(bangedframe/2)+random(10));
   ellipse(x+random(10)-10/2+random(bangedframe)-bangedframe/2,y+random(10)-10/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(10),random(bangedframe/2)+random(10));
   ellipse(x+random(10)-10/2+random(bangedframe)-bangedframe/2,y+random(10)-10/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(10),random(bangedframe/2)+random(10));
   ellipse(x+random(10)-10/2+random(bangedframe)-bangedframe/2,y+random(10)-10/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(10),random(bangedframe/2)+random(10));
ellipse(x+random(10)-10/2+random(bangedframe)-bangedframe/2,y+random(10)-10/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(10),random(bangedframe/2)+random(10)); 
 ellipse(x+random(10)-10/2+random(bangedframe)-bangedframe/2,y+random(10)-10/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(10),random(bangedframe/2)+random(10));
 ellipse(x+random(10)-10/2+random(bangedframe)-bangedframe/2,y+random(10)-10/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(10),random(bangedframe/2)+random(10));
 ellipse(x+random(10)-10/2+random(bangedframe)-bangedframe/2,y+random(10)-10/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(10),random(bangedframe/2)+random(10));
 ellipse(x+random(10)-10/2+random(bangedframe)-bangedframe/2,y+random(10)-10/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(10),random(bangedframe/2)+random(10));
 ellipse(x+random(10)-10/2+random(bangedframe)-bangedframe/2,y+random(10)-10/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(10),random(bangedframe/2)+random(10));
 ellipse(x+random(10)-10/2+random(bangedframe)-bangedframe/2,y+random(10)-10/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(10),random(bangedframe/2)+random(10));
 ellipse(x+random(10)-10/2+random(bangedframe)-bangedframe/2,y+random(10)-10/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(10),random(bangedframe/2)+random(10));
 ellipse(x+random(10)-10/2+random(bangedframe)-bangedframe/2,y+random(10)-10/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(10),random(bangedframe/2)+random(10));
 ellipse(x+random(10)-10/2+random(bangedframe)-bangedframe/2,y+random(10)-10/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(10),random(bangedframe/2)+random(10));
 ellipse(x+random(10)-10/2+random(bangedframe)-bangedframe/2,y+random(10)-10/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(10),random(bangedframe/2)+random(10));
 ellipse(x+random(10)-10/2+random(bangedframe)-bangedframe/2,y+random(10)-10/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(10),random(bangedframe/2)+random(10));
 ellipse(x+random(10)-10/2+random(bangedframe)-bangedframe/2,y+random(10)-10/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(10),random(bangedframe/2)+random(10));
 ellipse(x+random(10)-10/2+random(bangedframe)-bangedframe/2,y+random(10)-10/2+random(bangedframe)-bangedframe/2,random(bangedframe/2)+random(10),random(bangedframe/2)+random(10));
 
 }
bangedframe--;
if ((bangedframe==0) && (over==false))
{
  limit=limit+1;
  over=true;
  nukeblow=false;
}
 }
 if ((banged==false) && (over==false) && (colframe>0) && (collision==true))
 {
   stroke(100,100,100);
 fill(100,100,100);
for (int dust=1;dust<=colframe*50;dust++)
{
 int duster=0;
duster=100/colframe;
point(x+random(duster)-duster/2, y+random(duster)-duster/2);

}

 colframe--;
 if (colframe<=1)
 {
   collision=false;
   colframe=0;
 }
 }
 
 }
}
  }
void addrocket(float vecx, float vecy)
{
  if (rocket==false)
  {
  rocket=true;
  inrad=rad;
  rockx=vecx/sqrt(pow(vecx,2)+pow(vecy,2))*300/rad;
  rocky=vecy/sqrt(pow(vecx,2)+pow(vecy,2))*300/rad;
  rockposx=-rad/2*rad*rockx/300;
  rockposy=-rad/2*rad*rocky/300;  
}

  
}
void check_col(int indexer)

{
  if ((asteroids[indexer].over==false) && (asteroids[indexer].banged==false))
  {
    if ((abs(space1.x-asteroids[indexer].x)<10+asteroids[indexer].rad/2) && (abs(space1.y-asteroids[indexer].y)<10+asteroids[indexer].rad/2) && (space1.collision==false) && (space1.over==false))
    {
     space1.collision=true;
     space1.colframe=20;
     space1.firetimer=0;
     asteroids[indexer].rad=asteroids[indexer].rad/2;
     asteroids[indexer].vx=asteroids[indexer].vx/2+random(-abs(asteroids[indexer].vx),abs(asteroids[indexer].vx));
     asteroids[indexer].vy=asteroids[indexer].vy/2+random(-abs(asteroids[indexer].vy),abs(asteroids[indexer].vy));
       nostations=nostations-1;  
    } 
    if ((abs(space2.x-asteroids[indexer].x)<10+asteroids[indexer].rad/2) && (abs(space2.y-asteroids[indexer].y)<10+asteroids[indexer].rad/2) && (space2.collision==false) && (space2.over==false))
    {
     space2.collision=true;
     space2.colframe=20;
     space2.firetimer=0;
     asteroids[indexer].rad=asteroids[indexer].rad/2;
         asteroids[indexer].vx=asteroids[indexer].vx/2+random(-abs(asteroids[indexer].vx),abs(asteroids[indexer].vx));
     asteroids[indexer].vy=asteroids[indexer].vy/2+random(-abs(asteroids[indexer].vy),abs(asteroids[indexer].vy));
     nostations=nostations-1;
         
    } 
   
   if ((abs(space3.x-asteroids[indexer].x)<10+asteroids[indexer].rad/2) && (abs(space3.y-asteroids[indexer].y)<10+asteroids[indexer].rad/2) && (space3.collision==false) && (space3.over==false))
    {
     space3.collision=true;
     space3.colframe=20;
     space3.firetimer=0;
     asteroids[indexer].rad=asteroids[indexer].rad/2;
     asteroids[indexer].vx=asteroids[indexer].vx/2+random(-abs(asteroids[indexer].vx),abs(asteroids[indexer].vx));
     asteroids[indexer].vy=asteroids[indexer].vy/2+random(-abs(asteroids[indexer].vy),abs(asteroids[indexer].vy));
      nostations=nostations-1;   
    } 
   
    if ((abs(space4.x-asteroids[indexer].x)<10+asteroids[indexer].rad/2) && (abs(space4.y-asteroids[indexer].y)<10+asteroids[indexer].rad/2) && (space4.collision==false) && (space4.over==false))
    {
     space4.collision=true;
     space4.colframe=20; 
     space4.firetimer=0;
     asteroids[indexer].rad=asteroids[indexer].rad/2;
     asteroids[indexer].vx=asteroids[indexer].vx/2+random(-abs(asteroids[indexer].vx),abs(asteroids[indexer].vx));
     asteroids[indexer].vy=asteroids[indexer].vy/2+random(-abs(asteroids[indexer].vy),abs(asteroids[indexer].vy));
       nostations=nostations-1;  
    } 
   
    
    
for (int i=1;i<=ascounter;i++)
{
  if (i!=indexer)
 { 
  if ((asteroids[i].over==false) && (asteroids[i].banged==false) && (asteroids[i].bangedframe==20) && (asteroids[i].rad>0))
  {
    if ((abs(asteroids[i].x-asteroids[indexer].x)<asteroids[i].rad/2+asteroids[indexer].rad/2) && (abs(asteroids[i].y-asteroids[indexer].y)<asteroids[i].rad/2+asteroids[indexer].rad/2))
    {
      asteroids[indexer].vx=(asteroids[indexer].vx*pow(asteroids[indexer].rad,2)+asteroids[i].vx*pow(asteroids[i].rad,2))/(pow(asteroids[indexer].rad,2)+pow(asteroids[i].rad,2));
      asteroids[indexer].vy=(asteroids[indexer].vy*pow(asteroids[indexer].rad,2)+asteroids[i].vy*pow(asteroids[i].rad,2))/(pow(asteroids[indexer].rad,2)+pow(asteroids[i].rad,2));
      asteroids[indexer].rad=sqrt(pow(asteroids[indexer].rad,2)+pow(asteroids[i].rad,2));
      asteroids[indexer].x=(asteroids[indexer].x*asteroids[indexer].rad+asteroids[i].x*asteroids[i].rad)/(asteroids[indexer].rad+asteroids[i].rad);
      asteroids[indexer].y=(asteroids[indexer].y*asteroids[indexer].rad+asteroids[i].y*asteroids[i].rad)/(asteroids[indexer].rad+asteroids[i].rad);
      asteroids[indexer].rocket=false;
      asteroids[indexer].colframe=10;
      asteroids[indexer].collision=true;
      asteroids[i].banged=true;
      asteroids[i].over=true;
      asteroids[i].bangedframe=0;
      asteroids[i].colframe=0;
      asteroids[i].collision=false;
      asteroids[i].x=-100;
      asteroids[i].y=-100;
      asteroids[i].vx=0;
      asteroids[i].vy=0;
      asteroids[i].rocket=false;
      asteroids[i].rad=0;
    } 
    }
  }
 }
}

}

}

class sds
{
  float x, y;
 
  float vx, vy;
  boolean over=false;
  int colframe=0;
  
  boolean collision=false;
  int firetimer=0;
  
  
  sds(int numero) 
  {
    over=false;
   collision=false;
  firetimer=0;
   
    if (numero==1)
   { x=400;
     y=150;
        
    float distance=sqrt(pow(x-400,2)+pow(y-300,2));
    float accel=mass*gc/pow(distance,2);
    vx=sqrt(distance*accel);
    vy=0;
   }
   
   if (numero==2)
   { x=550;
     y=300;
        
    float distance=sqrt(pow(x-400,2)+pow(y-300,2));
    float accel=mass*gc/pow(distance,2);
    vy=sqrt(distance*accel);
    vx=0;
   }
    
     if (numero==3)
   { x=400;
     y=450;
        
    float distance=sqrt(pow(x-400,2)+pow(y-300,2));
    float accel=mass*gc/pow(distance,2);
    vx=-sqrt(distance*accel);
    vy=0;
   }
   if (numero==4)
   { x=250;
     y=300;
        
    float distance=sqrt(pow(x-400,2)+pow(y-300,2));
    float accel=mass*gc/pow(distance,2);
    vy=-sqrt(distance*accel);
    vx=0;
   }
   
  }
  void update() 
  {
     
   

    float distance=sqrt(pow(x-400,2)+pow(y-300,2));
        
    float accel=mass*gc/pow(distance,2);
    float accelx=accel*(400-x)/distance;
    float accely=accel*(300-y)/distance;
    vx=vx+accelx/framerater;
    vy=vy+accely/framerater;
    
    
    x=x+vx/framerater;
    y=y+vy/framerater;
   if (firetimer<45)
   
   {
     firetimer++;
   }
  
  
    
  
  }
  void render() 
  {
    
    if ((over==false) && (collision==false))
    {
 
 
 image(ss,x-10,y-10,20,20);
    
  } else if ((over==false) && (collision==true))
  {
    if (colframe>0) 
    {
      for (int dust=1;dust<=colframe*50;dust++)
      {
     
        stroke(255,255,0);
        int duster=0;
      duster=100/colframe;
        point(x+random(duster)-duster/2, y+random(duster)-duster/2);

      }
     colframe--; 
    }
    else
    {
     over=true; 
    }
      
  }
    
    }
    
  void fire()
  
  {
   if ((firetimer==45) && (over==false) && (collision==false))
  
  {
   firetimer=0;
   int tofr=-1;
  float mindistance=100;
   for (int i=1;i<=ascounter;i++)
   {
     if (asteroids[i].over==false)
     {
     float distance=sqrt(pow(asteroids[i].x-x,2)+pow(asteroids[i].y-y,2));
     if (distance<=mindistance)
     {
       mindistance=distance;
       tofr=i;
     }
     }
   }
   
   if (tofr!=-1)
  
  {
    stroke(0,255,0);
    line(x,y,asteroids[tofr].x,asteroids[tofr].y);
   if (asteroids[tofr].rad>3)
 {
   asteroids[tofr].rad-=3;
 }  
 else
 {
 asteroids[tofr].over=true;
 }
  
  }
  
   
  } 
    



  }
  

}

class warhead
{
  float x, y;
 
  float vx, vy;
  boolean over=false;
  int colframe=0;
  
  boolean collision=false;
  int firetimer=0;
  
  
  warhead(int numero) 
  {
    over=false;
   collision=false;
  firetimer=0;
   
    if (numero==1)
   { x=400;
     y=150;
        
    float distance=sqrt(pow(x-400,2)+pow(y-300,2));
    float accel=mass*gc/pow(distance,2);
    vx=sqrt(distance*accel);
    vy=0;
   }
   
   
   
  }
  void update() 
  {
     
   

    float distance=sqrt(pow(x-400,2)+pow(y-300,2));
        
    float accel=mass*gc/pow(distance,2);
    float accelx=accel*(400-x)/distance;
    float accely=accel*(300-y)/distance;
    vx=vx+accelx/framerater;
    vy=vy+accely/framerater;
    
    
    x=x+vx/framerater;
    y=y+vy/framerater;
   if (firetimer<45)
   
   {
     firetimer++;
   }
  
  
    
  
  }
  void render() 
  {
    
    if ((over==false) && (collision==false))
    {
 
 
 image(ss,x-10,y-10,20,20);
    
  } else if ((over==false) && (collision==true))
  {
    if (colframe>0) 
    {
      for (int dust=1;dust<=colframe*50;dust++)
      {
     
        stroke(255,255,0);
        int duster=0;
      duster=100/colframe;
        point(x+random(duster)-duster/2, y+random(duster)-duster/2);

      }
     colframe--; 
    }
    else
    {
     over=true; 
    }
      
  }
    
    }
    
 
  

}

void mousePressed()
{
  clicktimer=0;
}

void mouseReleased() 

{ 
  if (presentation==true)
  
  {
    presentation=false;
  }
  else
  {
    if ((populous>0) && (limtimer>=1))
    {
      
      
      
      if ((mouseX>800) && (mouseX<860) && (mouseY>365) && (mouseY<405))
      {
        if ((nostations<4) && (cashew>10) && (sbuildphase==false) )
        {sbuildphase=true;
        cashew=cashew-10;
        buildtimer=150;
        rect(800,365,60,40);
      }
        
        
        
      }
      

      else if ((mouseX>800) && (mouseX<860) && (mouseY>245) && (mouseY<285))
      {
        if  ((cashew>5) && (wbuildphase==false) )
        {wbuildphase=true;
        cashew=cashew-5;
        wbuildtimer=150;
        rect(800,245,60,40);
      }
        
        
        
      }
      
      else if (sqrt(pow(mouseX-400,2)+pow(mouseY-300,2))<=50)
      {
      }
      
      else
      {
      
    for (int counter=1;counter<=ascounter;counter++)
  {
    
  if ((abs(mouseX-asteroids[counter].x)<35) && (abs(mouseY-asteroids[counter].y)<35) && (asteroids[counter].over==false))
{
  if (mouseButton==LEFT)
  {
  if (rocknum>0)
      {
        rocknum=rocknum-1;
  asteroids[counter].addrocket(-mouseX+asteroids[counter].x,-mouseY+asteroids[counter].y);
  break;
      }}else if (warnum>0)
      {  asteroids[counter].nukeblow=true;
        asteroids[counter].banged=true;
        asteroids[counter].bangedframe=20;
        warnum=warnum-1;
        if (asteroids[counter].rad>10)
        
        {
         ascounter=ascounter+1;
        
    asteroids[ascounter]=new asteroid(random(2800),0,random(80),random(80),0);
    asteroids[ascounter].rad=asteroids[counter].rad/2;
    asteroids[ascounter].x=asteroids[counter].x+asteroids[counter].rad;
    asteroids[ascounter].y=asteroids[counter].y+asteroids[counter].rad;
    asteroids[ascounter].vx=asteroids[counter].vx+random(20);
    asteroids[ascounter].vy=asteroids[counter].vy+random(20);
    ascounter=ascounter+1;
        
    asteroids[ascounter]=new asteroid(random(2800),0,random(80),random(80),0);
    asteroids[ascounter].rad=asteroids[counter].rad/2;
    asteroids[ascounter].x=asteroids[counter].x-asteroids[counter].rad;
    asteroids[ascounter].y=asteroids[counter].y-asteroids[counter].rad;
    asteroids[ascounter].vx=asteroids[counter].vx-random(20);
    asteroids[ascounter].vy=asteroids[counter].vy-random(20);
        }
        
        //rocknum=rocknum+1;
       break; 
      }
      
}
  }
      }
    }

else
{
  setup();
}
  }

}



