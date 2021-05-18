package game;

import h2d.Object;
import h2d.col.Point;
import h2d.Drawable;

class Entity extends Object {
	public var sprite(default, set):Drawable;
	public var position(default, null):Point;
	public var velocity(default, null):Point;

	public function new(x:Float, y:Float, ?parent:Object) {
		super(parent);
		position = new Point(x, y);
		velocity = new Point(0., 0.);
	}

	public function set_sprite(sprite:Drawable) {
		this.sprite = sprite;
		addChild(this.sprite);
		return this.sprite;
	}
}