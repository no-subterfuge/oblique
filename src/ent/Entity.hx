package ent;

class Entity
{
	public var x:Float;
	public var y:Float;
	public var width:Int;
	public var height:Int;
	#if debug
	public var debugRect:h2d.Graphics;
	#end

	public function new(x:Float, y:Float, width = 0, height = 0)
	{
		this.x = x;
		this.y = y;
		this.width = width;
		this.height = height;
		#if debug
		drawBox(debugRect);
		#end
	}

	public function update(dt:Float) {}

	function drawBox(gphx:h2d.Graphics)
	{
		gphx = new h2d.Graphics(Game.INSTANCE.s2d);
		// gphx.scaleX = gphx.scaleY = 2;
		gphx.rotation = 1.0;
		gphx.beginFill(0, 0.);
		gphx.lineStyle(1., 0x2C5AFF);
		gphx.drawRect(x, y, cast(width, Float), cast(height, Float));
		gphx.endFill();
	}
}
