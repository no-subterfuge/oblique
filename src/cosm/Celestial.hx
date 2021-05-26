package cosm;

import Pixelize.PixelizeShader;
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
		super(10., 10., 120, 120);
		spr = new Graphics(Game.INSTANCE.s2d);
		spr.beginFill(COLOR.blue);
		spr.drawCircle(x + width / 2, y + height / 2, width / 2);
		var shader = new PixelizeShader();
		shader.red = 0.5;
		var filter = new h2d.filter.Shader(shader);
		shader.texture = spr.tile.getTexture();
		spr.filter = filter;
	}

	override public function update(dt : Float) {}
}
