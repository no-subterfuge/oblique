import game.Entity;

class Main extends hxd.App {

	override function init() {
		var test = new Entity(0, 0, s2d);
		var tf = new h2d.Text(hxd.res.DefaultFont.get());
		tf.text = "Hello Hashlink !";
		test.sprite = tf;
	}

	static function main() {
		new Main();
	}
}
