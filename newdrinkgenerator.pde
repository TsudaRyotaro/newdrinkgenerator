PImage[][] main = new PImage[3][12];//quantity 0-2,numofdrink0-11
PImage[] ice_quantity = new PImage[4];
PImage[] whipped_cream_quantity = new PImage[4];
PImage[] shot = new PImage[2]; //0:none 1:added
PImage[] temperature = new PImage[2];//0:cold 1:hot
int count = 1;

//0:none
//1:small
//2:middle
//3:large

void setup(){
  size(250,350);
  background(255);
  addedImages();
  //main[n[0]]; 0-11
  //ice_quantity[n[1]]; 0-3
  //whipped_cream_quantity[n[2]]; 0-3
  //shot[n[3]]; 0-1
  //temperature[n[4]]; 0-1
  //quantity[n[5]]; 0-2
  for(int main = 0;main<12;main++){
    for(int temp = 0;temp<2;temp++){
      for(int ice = 0;ice<4;ice++){
        for(int whipped = 0;whipped<4;whipped++){
          for(int shot =0;shot<2;shot++){  
            for(int quan = 0;quan<3;quan++){
              int[] array = {main,ice,whipped,shot,temp,quan};
              showImages(array);
              showText(array);
              saveImage(count);
              println(count +"/2304" );
              count++;
            }
          }
        }
      }
    }
  }
}

void saveImage(int[] n){
  String path = "result/";
  for(int i = 0;i<n.length;i++){
    path += n[i];
    path += ",";
  }
  path += ".png";
  save(path);
  fill(255);
  rect(0,0,width,height);
}

void saveImage(int n){
  String path = "result/";
  path += n;
  path += ".png";
  save(path);
  fill(255);
  rect(0,0,width,height);
}

void showText(int[] n){
  PFont font = createFont("uzura_font",24);
  textFont(font);
  String s = "";
  
  
  //add temperature state-----------------------------
  String n4 = "";
  switch(n[4]){
    case 0:n4 = "アイス";break;
    case 1:n4 = "ホット";break;
    default:n4 ="";break;
  }
  s += n4;
  
  //add main name---------------------------------------
  String n0 = "";
  switch(n[0]){
    case 0: n0 = "コーヒー"; break;
    case 1: n0 = "ティー"; break;
    case 2: n0 = "ルイボスティー"; break;
    case 3: n0 = "抹茶ラテ"; break;
    case 4: n0 = "豆乳"; break;
    case 5: n0 = "ソイラテ"; break;
    case 6: n0 = "カフェラテ"; break;
    case 7: n0 = "カフェモカ"; break;
    case 8: n0 = "チョコレート"; break;
    case 9: n0 = "キャラメル"; break;
    case 10: n0 = "チャイラテ"; break;
    case 11: n0 = "オレンジ"; break;
    default: n0 = "";break;
  }
  s += n0;
  
  //added ice state-----------------------
  String n1 = "";
  switch(n[1]){
    case 0:n1 = "氷なし";break;
    case 1:n1 = "氷少なめ";break;
    case 2:n1 = "";break;
    case 3:n1 = "氷多め";break;
    default: n1 = "";break;
  }
  s += n1;
  
  //added whipped state-------------------
  String n2 = "";
  switch(n[2]){
    case 0:n2 = "";break;
    case 1:n2 = "ホイップ少なめ";break;
    case 2:n2 = "ホイップ普通";break;
    case 3:n2 = "ホイップ多め";break;
    default: n2 = "";
  }
  s += n2;
  
  //added shot state---------------------
  String n3 = "";
  switch(n[3]){
    case 0:n3 = "";break;
    case 1:n3 = "ショット追加";break;
  }
  s += n3;
  
  //added quantity state------------------
  String n5 = "";
  switch(n[5]){
    case 0:n5 = "量少なめ";break;
    case 1:n5 = "";break;
    case 2:n5 = "量多め";break;
    default: n5="";break;
  }
  s += n5;
  
  textSize(14);
  fill(0);
  text(s,5,300,245,340);
}

void showImages(int[] n){
  img(main[n[5]][n[0]]);
  img(ice_quantity[n[1]]);
  img(whipped_cream_quantity[n[2]]);
  img(shot[n[3]]);
  img(temperature[n[4]]);
}

void img(PImage m){
  image(m,0,0);
}

void addedImages(){
  for(int j = 0;j < 3;j++){
    for(int i = 0;i<12;i++){
      //added main image
      String s = "main/"+j+"/"+i+".png";
      main[j][i] = loadImage(s);
    }
  }
  for(int i = 0;i<ice_quantity.length;i++){
    //added ice_quantity image
    String s = "ice_quantity/"+i+".png";
    ice_quantity[i] = loadImage(s);
  }
  for(int i = 0;i<whipped_cream_quantity.length;i++){
    //added whipped_cream_quantity image
    String s = "whipped_cream_quantity/"+i+".png";
    whipped_cream_quantity[i] = loadImage(s);
  }
  for(int i = 0;i<shot.length;i++){
    //added shot image
    String s = "shot/"+i+".png";
    shot[i] = loadImage(s);
  }
  for(int i = 0;i<temperature.length;i++){
    //added temperature image
    String s = "temperature/"+i+".png";
    temperature[i] = loadImage(s);
  }
}
  
