package;
import flixel.*;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import flixel.FlxSprite;

class EndingState extends MusicBeatState
{
	override public function create():Void 
	{
		super.create();
	    var ending:FlxSprite = new FlxSprite(0, 0).loadGraphic(Paths.image('thankyouforplaying'));
	    add(ending);
	    FlxG.camera.fade(FlxColor.BLACK, 0.8, true);
	}
	
    override public function update(elapsed:Float):Void 
	{
		super.update(elapsed);

	    if (FlxG.keys.pressed.ENTER)
	    {
			ended();
		}
	}

    public function ended()
    {
		trace("ENDED");
		FlxG.switchState(new StoryMenuState());
	}
}