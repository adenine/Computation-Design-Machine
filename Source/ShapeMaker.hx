
package ;

import openfl.display.Shape;
import openfl.display.Sprite;

class ShapeMaker extends Sprite
{

	private var pixelHeight:Int;
	private var pixelWidth:Int;
	//int[][] myPoints = new int[pixelHeight][pixelWidth];
	private var myPoints:Array<Array<Int>>;
  // 	var int[][] myPoints = new int[pixelHeight][pixelWidth];
  // PGraphics pg;
  // boolean isSaved = false;

	public function new(_pW:Int, _pH:Int) {
		super();
		this.pixelHeight = _pH;
		this.pixelWidth = _pW;

		myPoints = [for (x in 0...pixelWidth) [for (y in 0...pixelHeight) 0]];
		trace("New ShapeMaker Created");
		
	}

	public function getSize():Int {
		return this.myPoints.length;
	}

	public function getWidth():Int {
		return pixelWidth;
	}

	public function getHeight():Int {
		return pixelHeight;
	}


  	public function shapeDraw(_xPos:Int, _yPos:Int) {  
  		for (i in 0...pixelWidth) {
     		for (j in 0...pixelHeight) {
         		if (myPoints[i][j] == 1) {
    				this.graphics.beginFill(0x339933);
    				this.graphics.drawRect(i+_xPos,j+_yPos,1,1);
    				this.graphics.endFill();
         		}
     		}    
   		}
 
   		//trace("Drew the Shape");
  	}

	public function genNewShape() {
   		for (i in 0...pixelWidth) {
     		for (j in 0...pixelHeight) {
           		myPoints[i][j] = 0;
     		}  
		}
		// for (i in 0...pixelHeight) {
  //   		for (j in 0...pixelWidth) {
  //     			if (Math.random()>0.7) {
  //       			//point(i,j);
  //       			myPoints[i][j] = 1;
  //     			} else {
  //       			//table.setInt(i,j,0);
  //       			myPoints[i][j] = 0;
  //     			} 
  //   		}    
  // 		}
  		for (i in 0...Std.int(pixelWidth/2)) {
    		for (j in 0...pixelHeight) {
      			if (Math.random()>0.7) {
        			myPoints[i][j] = 1;
        			myPoints[(pixelWidth-1)-i][j] = 1;
      			} else {
        			myPoints[i][j] = 0;
         			myPoints[(pixelWidth-1)-i][j] = 0;
      			} 
    		}
    	} 
  		trace("Setup a new Shape");
	}
}