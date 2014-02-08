int shift = 0;

void setup() {
  size(512, 342);
}

void draw() {
  loadPixels(); // lock 'em
  
  for(int y = 0; y < height; ++y) {
    for(int x = 0; x < width; ++x) {
      int loc = x + y * width;
      pixels[loc] = color(x % 256, y % 256, ((x * y) + shift) % 256); 
    } 
  }
  
  updatePixels();
  
  ++shift;
}
