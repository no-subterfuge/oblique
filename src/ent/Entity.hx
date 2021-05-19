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
		drawOutline();
		#end
	}

	public function update(dt:Float) {}

	function drawOutline()
	{
		debugRect = new h2d.Graphics(Game.instance.s2d);
		debugRect.beginFill(0, 0.);
		debugRect.lineStyle(1., 0x2C5AFF);
		debugRect.drawRect(x, y, cast(width, Float), cast(height, Float));
		debugRect.endFill();
	}
}
