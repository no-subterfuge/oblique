class Game extends hxd.App
{
	public static var instance:Game;

	override function init()
	{
		var test = new cosm.Celestial();
		var tf = new h2d.Text(hxd.res.DefaultFont.get());
		tf.text = "Hello Hashlink !";
		test.addChild(tf);
		instance = this;
	}

	static function main()
	{
		new Game();
	}

	override function update(dt:Float)
	{
		// s2d.
	}
}
