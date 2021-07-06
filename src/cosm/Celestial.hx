package cosm;

import h2d.Graphics;
import h2d.col.Point;

class Celestial extends ent.Entity
{
	public static final COLOR = {red: 0xFF0000, blue: 0x0000FF};

	/** Gravitational constant **/
	public static final G_CONST = 1; // 6.674e-11;

	public var mass : Float;

	public var momentum : Point;

	public var spr : Graphics;

	var line : Graphics;

	var pointArray : Array<Point>;

	public function new(x : Float, y : Float, momentum : Point, mass : Float)
	{
		super(x, y, 16, 16);
		this.momentum = momentum;
		this.mass = mass;
		spr = new Graphics(Game.INSTANCE.s2d);
		line = new Graphics(Game.INSTANCE.s2d);
		line.beginFill(COLOR.blue);

		/*var shader = new PixelizeShader();
			shader.red = 0.5;
			var filter = new h2d.filter.Shader(shader);
			shader.texture = spr.tile.getTexture();
			spr.filter = filter; */
	}

	override public function update(dt : Float)
	{
		velocity.x = momentum.x / mass;
		velocity.y = momentum.y / mass;
		super.update(dt);
		addPoint();
		draw();
	}

	/**
		Calculates the gravitationnal force applied by another celestial object.
	**/
	public function gForce(other : Celestial) : Point
	{
		var distV = new Point(pos.x - other.pos.x, pos.y - other.pos.y);
		var magnitude : Float = G_CONST * mass * other.mass / Math.pow(distV.length(), 2);
		return distV.normalized().multiply(-magnitude);
	}

	function draw()
	{
		spr.clear();
		spr.beginFill(COLOR.blue);
		spr.drawCircle(pos.x + width / 2, pos.y + height / 2, width / 2);
		spr.endFill();
	}

	function addPoint()
	{
		line.drawRect(cx, cy, 1., 1.);
		line.beginFill(COLOR.blue);
	}
}
