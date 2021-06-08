import hxd.Window;
import cosm.System;
import h2d.col.Point;

class Game extends hxd.App
{
	public static var INSTANCE(default, null) : Game;

	public var systems : List<System>;

	override function init()
	{
		if (INSTANCE == null)
			INSTANCE = this;
		systems = new List<System>();
		var cx = Window.getInstance().width / 2;
		var cy = Window.getInstance().height / 2;
		var sol = new System();
		var earth = new cosm.Celestial(cx + 30., cy + 30., new Point(-10., 6.), 1.0);
		sol.add(earth);
		var sun = new cosm.Celestial(cx, cy, new Point(0, 0), 4000.0);
		sol.add(sun);
		systems.add(sol);
	}

	static function main()
	{
		new Game();
	}

	override function update(dt : Float)
	{
		for (sys in systems)
		{
			sys.update(dt);
		}
	}
}
