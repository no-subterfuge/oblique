package cosm;

import h3d.Vector;
import hxd.fmt.grd.Data.Color;
import h2d.Graphics;
import h2d.col.Point;

class Celestial extends ent.Entity
{
	public static final COLOR = {red: 0xFF0000, blue: 0x0000FF};

	public var mass : Float;
	public var velocity : Point;
	public var spr : Graphics;

	public function new()
	{
		super(10., 10., 12, 12);
		spr = new Graphics(Game.INSTANCE.s2d);
		spr.beginFill(COLOR.red);
		spr.drawCircle(x + width / 2, y + height / 2, width / 2);
	}

	override public function update(dt : Float) {}
}
