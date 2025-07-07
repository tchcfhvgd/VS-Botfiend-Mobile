package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.util.FlxColor;

#if sys
import sys.FileSystem;
import sys.io.File;
#end

#if VIDEOS_ALLOWED
#if hxvlc
import hxvlc.flixel.*;
import hxvlc.util.*;
#end
#end

using StringTools;

class PreSongCutscene extends FlxState
{
	var PlayState = new PlayState();

	override public function create():Void
	{

		super.create();

		startVideo('cutscene');
	}

	override public function update(elapsed:Float){

		super.update(elapsed);

	}

	function next():Void{
		FlxG.switchState(PlayState);
	}
	
	public function startVideo(name:String)
	{
		#if VIDEOS_ALLOWED

		var filepath:String = Paths.video(name);
		#if sys
		if(!FileSystem.exists(filepath))
		#else
		if(!OpenFlAssets.exists(filepath))
		#end
		{
			FlxG.log.warn('Couldnt find video file: ' + name);
			next();
			return;
		}

		var video:FlxVideo = new FlxVideo();
		video.load(filepath);
		video.play();
		video.onEndReached.add(function()
		{
			video.dispose();
			next();
			return;
		}, true);

		#else
		FlxG.log.warn('Platform not supported!');
		next();
		return;
		#end
	}
	
}
