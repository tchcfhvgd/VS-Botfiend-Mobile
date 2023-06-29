package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.util.FlxColor;

using StringTools;

class PreSongCutscene extends FlxState
{
	var oldFPS:Int = VideoHandler.MAX_FPS;
	var video:VideoHandler;
	var PlayState = new PlayState();

	override public function create():Void
	{

		super.create();

		VideoHandler.MAX_FPS = 60;

		video = new VideoHandler();

		video.playMP4(Paths.video('cutscene'), function(){
			next();
			#if web
				VideoHandler.MAX_FPS = oldFPS;
			#end
		}, false, false);

		video.updateHitbox();
		video.setPosition(0,0);

		add(video);
	}

	override public function update(elapsed:Float){

		super.update(elapsed);

	}

	function next():Void{
		FlxG.switchState(PlayState);
	}
	
}
