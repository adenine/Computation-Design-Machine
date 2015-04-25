package;


import openfl.display.Sprite;


class Main extends Sprite {
	
	private var thisGrid:GridMaker;
	
	static function main() {
		var r = new haxe.unit.TestRunner();
	    r.add(new TestGridMaker());
	    // add other TestCases here
	    
	    // finally, run the tests
	    r.run();
	}
	public function new () {
		
		super ();
		
		
		
	}
	
	
}