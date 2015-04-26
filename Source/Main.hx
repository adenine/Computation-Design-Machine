package;


import openfl.display.Sprite;
import openfl.events.Event;


class Main extends Sprite {
	
	private var thisGrid:GridMaker;
	private var onePiece:ShapeMaker;
	
	public function new () {
		
		super ();
		
		// Run Unit Tests
		var r = new haxe.unit.TestRunner();
	    //r.add(new TestGridMaker());
	    r.add(new TestShapeMaker());
	    r.run();

		// Program Functions
		setup();
		
		// Event Handlers
		this.addEventListener (Event.ENTER_FRAME, draw);
	}
	
	public function setup () {
		// Background color is set in project.xml - <window background="#FF0000" />

		trace("Creating a ShapeMaker");
		onePiece = new ShapeMaker(16,16);
		onePiece.genNewShape();
		this.addChild(onePiece);

		thisGrid = new GridMaker(3,3);
		this.addChild(thisGrid);
	}

	public function draw (e:Event) {
 		thisGrid.gridDraw(); 
 		onePiece.shapeDraw(0,0);
 		//trace("Drew the ShapeMaker");
	}

}