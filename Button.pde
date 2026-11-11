class Button extends Object {
  String label;
  color defaultCol, hoverCol;
  int fontSize = 14;
  
  Button(String text, color bg_col, color hv_col) {
    label = text;
    
    defaultCol = bg_col;
    hoverCol = hv_col;
    
    borderRadius = 15;
  }
  
  boolean isHovered() {
    if (
      (mouseX > pos.x && mouseX < pos.x + size.x) &&
      (mouseY > pos.y && mouseY < pos.y + size.y)
    ) {
      return true;
    } else {
      return false;
    }
  }
  
  void update() {
    pos = truePos.copy();
    
    if (isHovered()) {
      hovered = this;
      
      if (mousePressed) {
        bgCol = defaultCol;
      } else {
        bgCol = hoverCol;
        pos.sub(new PVector(5, 5));
      }
    } else {
      bgCol = defaultCol;
    }
    
    fill(defaultCol);
    rect(truePos.x, truePos.y, size.x, size.y, borderRadius);
    
    super.update();
    
    float cw = textWidth(label);
    
    fill(frCol);
    textSize(fontSize);
    text(label,
      pos.x + (size.x/2) - (cw/2),
      pos.y + (size.y/2) + (fontSize/2)
     );
  }
}
