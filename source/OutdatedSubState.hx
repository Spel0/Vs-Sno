package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import lime.app.Application;

class OutdatedSubState extends MusicBeatState
{
	public static var leftState:Bool = false;

	public static var needVer:String = "IDFK LOL";
	public static var currChanges:String = "dk";
	

	override function create()
	{
		super.create();
		var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('credit', 'shared'));
		bg.scale.x *= 1.55;
		bg.scale.y *= 1.55;
		bg.screenCenter();
		bg.antialiasing = FlxG.save.data.antialiasing;
		add(bg);
	}
	override function update(elapsed:Float)
	{
		if (controls.ACCEPT)
		{
			leftState = true;
			FlxG.switchState(new OutdatedSubStatetwo());
		}
		else if (controls.ACCEPT)
		{
			leftState = true;
			FlxG.switchState(new OutdatedSubStatetwo());
		}
		if (controls.BACK)
		{
			leftState = true;
			FlxG.switchState(new OutdatedSubStatetwo());
		}
		if (controls.SEC)
		{
			leftState = true;
			FlxG.switchState(new CodeState());
		}
		super.update(elapsed);
	}
}
