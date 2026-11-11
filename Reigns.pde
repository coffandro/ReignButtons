ArrayList<Object> objects;
Object hovered;

void setupObjects() {
  objects = new ArrayList<Object>();
  
  Button luButton = new Button("left, up", color(150, 0, 0), color(255, 0, 0));
  luButton.size = new PVector(200, 100);
  luButton.setup_alignment(Direction.Left, Direction.Up);
  objects.add(luButton);
  
  Button ruButton = new Button("right, up", color(150, 0, 0), color(255, 0, 0));
  ruButton.size = new PVector(200, 100);
  ruButton.setup_alignment(Direction.Right, Direction.Up);
  objects.add(ruButton);
  
  Button ldButton = new Button("left, down", color(150, 0, 0), color(255, 0, 0));
  ldButton.size = new PVector(200, 100);
  ldButton.setup_alignment(Direction.Left, Direction.Down);
  objects.add(ldButton);
  
  Button rdButton = new Button("right, down", color(150, 0, 0), color(255, 0, 0));
  rdButton.size = new PVector(200, 100);
  rdButton.setup_alignment(Direction.Right, Direction.Down);
  objects.add(rdButton);
  
  Button cButton = new Button("Center", color(150, 0, 0), color(255, 0, 0));
  cButton.size = new PVector(200, 100);
  cButton.setup_alignment(Direction.Center, Direction.Center);
  objects.add(cButton);
}

void setup() {
  size(640, 480);
  
  setupObjects();
}

void draw() {
  background(0);
  hovered = null;
  
  for(int i = 0; i < objects.size(); i++) {
    objects.get(i).update();
  }
  
  if (hovered != null) {
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}
