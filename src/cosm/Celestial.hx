package cosm;

import h2d.col.Point;

class Celestial extends ent.Entity
{
	public var mass:Float;
	public var velocity:Point;

	public function new()
	{
		super(10., 10., 100, 100);
	}

	override public function update(dt:Float) {}
}
