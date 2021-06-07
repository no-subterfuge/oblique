package cosm;

import h2d.col.Point;

class System
{
	public var celestials(default, null) : List<Celestial>;

	public function new()
	{
		celestials = new List<Celestial>();
	}

	public function add(celestial : Celestial)
	{
		celestials.add(celestial);
	}

	public function update(dt : Float)
	{
		for (c1 in celestials)
		{
			var totalGForce = new Point();
			for (c2 in celestials)
			{
				if (c1 == c2) // We don't need to apply the force on itself
					continue;

				totalGForce = totalGForce.add(c1.gForce(c2));
			}
			c1.momentum = c1.momentum.add(new Point(totalGForce.x * dt, totalGForce.y * dt));
		}

		for (c in celestials)
		{
			c.update(dt);
		}
	}
}
