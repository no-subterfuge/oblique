package cosm;

import h2d.col.Point;

class System
{
	public var celestials(default, null) : Array<Celestial>;

	public function new()
	{
		celestials = [];
	}

	public function add(celestial : Celestial)
	{
		celestials.push(celestial);
	}

	public function update(dt : Float)
	{
		for (c1 in 0...celestials.length)
		{
			var totalGForce = new Point();
			for (c2 in 0...celestials.length)
			{
				if (c1 == c2) // We don't need to apply the force on itself
					continue;

				totalGForce.add(celestials[c1].gForce(celestials[c2]));
			}
		}
	}
}
