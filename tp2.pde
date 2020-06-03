PImage foto,vaquita,mariposa,gusanito,abeja,logo,hda;
float pyv,pxv,pxm,pym,py,px,pxg,pyg,pxa,pya;
PFont fuenteg,fuentec,fuentecc;
float pxx,pyy; // Texto

void setup(){
  size(1184,564);
  foto=loadImage("fondoo.png");
  vaquita=loadImage("vaquita.png");
  mariposa=loadImage("mariposa.png");
  gusanito=loadImage("gusanito.png");
  abeja=loadImage("abeja.png");
  logo=loadImage("logo.png");
  hda=loadImage("hda.png");
  pyv=100;
  pxm=630;
  pym=430;
  py=height;
  pyg=height;
  pya=height;
  pxa=width;
  fuenteg = createFont("Thunderman.ttf", 50);
  fuentec = createFont("Thunderman.ttf", 30);
  fuentecc = createFont("Thunderman.ttf", 15);
  
  // Texto
  pxx=width/2;
  pyy=0;
  
}

void draw(){
  background(foto);
  image(vaquita,pxv,pyv,200,200);
  pyv=pyv-0.5;
  pxv ++;
  
  image(mariposa,px+200,py+250,200,200);
  //pym=pym-0.3;
  //pxm ++;
  px ++;
  py=py-0.5;
  
  image(gusanito,pxg-50,pyg/2,200,200);
  pxg ++;
  pyg ++;
  
  image(abeja,pxa,pya/2,200,200);
  pxa --;
  pya --;
  
  // Texto
  
 
 
  fill(0);
  textFont(fuentec);
  textAlign(CENTER); 
  text("Producer", pxx, pyy+250);
  text("story editor", pxx, pyy+450);
  text("staff writer", pxx, pyy+650);
  text("co Producer", pxx, pyy+850);
  text("production manager", pxx, pyy+1050);
  text("production coordinator", pxx, pyy+1250);
  text("for cartoon network studios", pxx, pyy+1450);
  text("executive producers", pxx, pyy+1550);
  text("for cartoon network", pxx, pyy+1800);
  text("executive producers", pxx, pyy+1850);
  
  textFont(fuenteg);
  textAlign(CENTER); 
  text("Kelly Crews", pxx, pyy+325);
  text("Merriwether Williams", pxx, pyy+525);
  text("Tim McKeon", pxx, pyy+725);
  text("Pendleton Ward", pxx, pyy+925);
  text("Keith Mack", pxx, pyy+1125);
  text("Dick Grunert", pxx, pyy+1325);
  text("Brian A.Miller", pxx, pyy+1625);
  text("Jennifer Pelphrey", pxx, pyy+1700);
  text("Curtis Lelash", pxx, pyy+1925);
  text("Rob Swartz", pxx, pyy+2000);
  text("Rob Sorcher", pxx, pyy+2080);
  
  pyy=pyy-2;
  
  imageMode(CENTER);
  image(logo,pxx,pyy+2300,160,100);
  
  textFont(fuentecc);
  text("© 2010. The Cartoon Network. A Time Warner Company. All Rights Reserved.", pxx, pyy+2400);
  
  // Imagen final
  
  imageMode(CENTER);
  image(hda,pxx,pyy+2800,592,282);
  
}

void keyPressed(){
  loop();
}

void mousePressed(){
  noLoop();
}
