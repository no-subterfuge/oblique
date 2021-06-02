package cosm;

import Pixelize.PixelizeShader;
import h2d.Graphics;
import h2d.col.Point;

class Celestial extends ent.Entity
{
	public static final COLOR = {red: 0xFF0000, blue: 0x0000FF};

	/** Gravitational constant **/
	public static final G_CONST = 6.674e-11;

	public var mass : Float;

	public var velocity : Point;
	public var spr : Graphics;

	public function new()
	{
		super(10., 10., 120, 120);
		spr = new Graphics(Game.INSTANCE.s2d);
		spr.beginFill(COLOR.blue);
		spr.drawCircle(pos.x + width / 2, pos.y + height / 2, width / 2);
		var shader = new PixelizeShader();
		shader.red = 0.5;
		var filter = new h2d.filter.Shader(shader);
		shader.texture = spr.tile.getTexture();
		spr.filter = filter;
	}

	override public function update(dt : Float) {}

	/**
		Calculates the gravitationnal force applied by another celestial object.
	**/
	public function gForce(other : Celestial) : h2d.col.Point
	{
		var distV = new h2d.col.Point(pos.x - other.pos.x, pos.y - other.pos.y);
		var magnitude : Float = G_CONST * mass * other.mass / Math.pow(distV.length(), 2);
		return distV.normalized().multiply(-magnitude);
	}
}
