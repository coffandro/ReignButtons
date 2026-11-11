class Object {
  Object parent;
  PVector pos, truePos;
  PVector size;
  color bgCol = color(0), frCol = color(255);
  int borderRadius;
  
  Object() {
    
  }
  
  void setup_alignment(Direction h_align, Direction v_align) {
    PVector sourcePos;
    PVector sourceSize;
    
    pos = new PVector();
    
    if (parent != null) {
      sourcePos = parent.pos.copy();
      sourceSize = parent.size.copy();
    } else {
      sourcePos = new PVector(0, 0);
      sourceSize = new PVector(width, height);
    }
    
    if (h_align == Direction.Left) {
      pos.x = sourcePos.x;
    } else if (h_align == Direction.Center) {
      pos.x = sourcePos.x + (sourceSize.x/2) - (size.x/2);
    } else if (h_align == Direction.Right) {
      pos.x = sourcePos.x + sourceSize.x - size.x;
    }
    
    if (v_align == Direction.Up) {
      pos.y = sourcePos.y;
    } else if (v_align == Direction.Center) {
      pos.y = sourcePos.y + (sourceSize.y/2) - (size.y/2);
    } else if (v_align == Direction.Down) {
      pos.y = sourcePos.y + sourceSize.y - size.y;
    }
    
    truePos = pos.copy();
  }
  
   void update() {
     fill(bgCol);
     stroke(frCol);
     rect(pos.x, pos.y, size.x, size.y, borderRadius);
  }
}
