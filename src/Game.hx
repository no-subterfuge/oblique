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
		var sol = new System();
		var earth = new cosm.Celestial(10., 10, new Point(0., 12.), 1.0);
		sol.add(earth);
		var sun = new cosm.Celestial(30., 30., new Point(0, 0), 40000.0);
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
