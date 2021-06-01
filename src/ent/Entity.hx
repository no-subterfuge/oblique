package ent;

class Entity
{
	public var pos : h2d.col.Point;
	public var width : Int;
	public var height : Int;
	#if debug
	public var debugRect : h2d.Graphics;
	#end

	public function new(x : Float, y : Float, width = 0, height = 0)
	{
		pos = new h2d.col.Point(x, y);
		this.width = width;
		this.height = height;
		#if debug
		drawBox(debugRect);
		#end
	}

	public function update(dt : Float) {}

	function drawBox(gphx : h2d.Graphics)
	{
		gphx = new h2d.Graphics(Game.INSTANCE.s2d);
		// gphx.beginFill(0x2C5AFF, 1);
		gphx.lineStyle(1., 0x2C5AFF);
		gphx.drawRect(pos.x, pos.y, cast(width, Float), cast(height, Float));
		gphx.endFill();
	}
}
