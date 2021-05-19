import ent.Entity;

class Game extends hxd.App
{
	public static var instance(default, null):Game;

	public var entities:Array<Entity>;

	override function init()
	{
		instance = this;
		entities = [];
		var test = new cosm.Celestial();
		var tf = new h2d.Text(hxd.res.DefaultFont.get());
		tf.text = "Hello Hashlink !";
		entities.push(test);
	}

	static function main()
	{
		new Game();
	}

	override function update(dt:Float)
	{
		for (en in entities)
		{
			en.update(dt);
		}
	}
}
