
package ;

import openfl.display.Shape;
import openfl.display.Sprite;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.utils.ByteArray;
import openfl.geom.Rectangle;

class ShapeMaker extends Sprite
{

	private var pixelHeight:Int;
	private var pixelWidth:Int;
	//int[][] myPoints = new int[pixelHeight][pixelWidth];
	private var myPoints:Array<Array<Int>>;
  // 	var int[][] myPoints = new int[pixelHeight][pixelWidth];
  // PGraphics pg;
  // boolean isSaved = false;
  	private var myBitmapData:BitmapData;

	public function new(_pW:Int, _pH:Int) {
		super();
		this.pixelHeight = _pH;
		this.pixelWidth = _pW;

		myPoints = [for (x in 0...pixelWidth) [for (y in 0...pixelHeight) 0]];
		trace("New ShapeMaker Created");

		myBitmapData = new BitmapData(pixelWidth, pixelHeight, false, 0xFFFFFF);
		
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

         			// DRAW WITH BITMAP

         			//for (var i:uint = 0; i < 100; i++) { 
    				var black = 0x000000; 
    				myBitmapData.setPixel(i, j, black); 
    				var myBitmapImage:Bitmap = new Bitmap(myBitmapData); 
    				myBitmapImage.x = _xPos;
    				myBitmapImage.y = _yPos;
    				addChild(myBitmapImage);
					//} 
					// DRAW WITH SHAPES         			
    				// this.graphics.beginFill(0x339933);
    				// this.graphics.drawRect(i+_xPos,j+_yPos,1,1);
    				// this.graphics.endFill();
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