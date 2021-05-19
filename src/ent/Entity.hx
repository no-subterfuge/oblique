package ent;

import h2d.Object;

class Entity extends Object
{
	public function new()
	{
		super(Game.instance.s2d);
	}

	public function update(dt:Float) {}
}
