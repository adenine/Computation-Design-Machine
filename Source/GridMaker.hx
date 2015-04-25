
package ;

class GridMaker 
{

	private var colsInGrid:Int;  
	private var rowsInGrid:Int;   
	private var offSetX:Int;
	private var offSetY:Int;
	private var thisShape:ShapeMaker;
	private var gridOfShapes:Array<Array<ShapeMaker>>;

	public function new() {
		colsInGrid = 16;
		rowsInGrid = 16;
		offSetX = 42;
		offSetY = 42;
		gridOfShapes = [for (x in 0...colsInGrid) [for (y in 0...rowsInGrid) new ShapeMaker()]];

    	trace("Making a grid");
    	for (i in 0...colsInGrid) {
    		for (j in 0...rowsInGrid) {
    			gridOfShapes[i][j] = new ShapeMaker();
    			gridOfShapes[i][j].genNewShape();
    			trace(gridOfShapes[i][j]);
    		}
    	}
    	// for (int k=0; k<colsInGrid; k++) {
     //  		for(int m=0; m<rowsInGrid; m++) {
     //   			gridOfShapes[k][m] = new ShapeMaker();
     //   			gridOfShapes[k][m].genNewShape();
     //  		} 
    	// }
    
    genNewGrid();

	}

	public function gridDraw() {
    // for (int i=0; i<colsInGrid; i++) {
    //   for (int j=0; j<rowsInGrid; j++) {
    //     pushMatrix();
    //     translate(i*20+offSetX, j*20+offSetY);
    //     if (j%2 == 0) {
    //       gridOfShapes[i][j].shapeDraw();
    //     } else {
    //       gridOfShapes[i][j].imageDraw();
    //     }
    //     popMatrix();
    //   }
    // } 
  }

	public function genNewGrid() {
    	for (i in 0...colsInGrid) {
    		for (j in 0...rowsInGrid) {
    			gridOfShapes[i][j].genNewShape();
    		}
    	}
	}

}