package unit;

abstract Unit(T) {}

class Unit
{
	public var name : String;
	public var notation : String;
	public var value : Float;

	var baseUnit : Unit;
	var baseUnitMultiplier : Float;

	public function convertTo(to : Unit)
	{
		return to.convertFromBaseUnit(this.inBaseUnit());
	}

	public function convertFromBaseUnit(baseValue : Float)
	{
		return baseValue * baseUnitMultiplier;
	}

	public function toString()
	{
		return Std.string(value) + notation;
	}

	function inBaseUnit()
	{
		return value * baseUnitMultiplier;
	}
}

class DegreeCelsius extends Unit
{
	public function new() {}
}
