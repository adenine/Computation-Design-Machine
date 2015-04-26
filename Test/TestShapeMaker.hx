package;

class TestShapeMaker extends haxe.unit.TestCase {
	
	public function testBasic() {
		var t = new ShapeMaker(0,0);
		assertEquals(t.getSize(), 0);

		var t2 = new ShapeMaker(1,10);
		//trace(t2.getWidth());
		assertEquals(t2.getWidth(), 1);
		assertEquals(t2.getHeight(), 10);
		
		// var t3 = new ShapeMaker(10,1);
		// assertEquals(t3.getSize(), 10);

		// var t4 = new ShapeMaker(160,160);
		// assertEquals(t4.getSize(),160*160);
		// Check that the array equals the h*w
		// check ok with 0
		// chech ok with 1
		//assertEquals(t.pixelHeight, "A");
	}

	public function new() {
		super();
	}

}