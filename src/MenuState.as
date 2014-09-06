package
{

	import org.flixel.*;

	public class MenuState extends FlxState
	{
		
		private var playButton:FlxButton;
		private var playButton2:FlxButton;
		private var devButton:FlxButton;
		private var Title:FlxText;
		
		override public function create():void
		{
			FlxG.bgColor = 0xff000000;
			
			Title = new FlxText(0, FlxG.height / 3, FlxG.width, "Primordial Punchout");
			Title.alignment = "center";
			add(Title);
			
			devButton = new FlxButton(FlxG.width/2-40,FlxG.height / 3 + 60, "Insert Site", onSite);
			devButton.soundOver = null;  //replace with mouseOver sound
			devButton.color = 0xffD4D943;
			devButton.label.color = 0xffD8EBA2;
			add(devButton);
			
			playButton = new FlxButton(FlxG.width/2-40,FlxG.height / 3 + 100, "Click To Play", onPlay);
			playButton.soundOver = devButton.soundOver;
			playButton.color = devButton.color;
			playButton.label.color = devButton.label.color;
			add(playButton);
			
			if(AssetRegistry.hasEndurance){
				playButton2 = new FlxButton(FlxG.width/2-40,FlxG.height / 3 + 120, "Endurance", onEndurance);
				playButton2.soundOver = devButton.soundOver;
				playButton2.color = devButton.color;
				playButton2.label.color = devButton.label.color;
				add(playButton2);
			}
			
			
			FlxG.mouse.show();
			
		}
		
		override public function update():void
		{
			super.update();	
		}
		
		protected function onSite():void
		{
			
			FlxU.openURL("http://example.com/");  //replace with your site's URL 
		}
		
		protected function onPlay():void
		{
			playButton.exists = false;
			FlxG.switchState(new PlayState(1));
		}
		protected function onEndurance():void
		{
			playButton.exists = false;
			AssetRegistry.sightLevel = 2;
			AssetRegistry.upgradeLevel = "wings";
			AssetRegistry.hasWhip = true;
			AssetRegistry.hasPunch = true;
			AssetRegistry.hasLegs = true;
			AssetRegistry.hasWings = true;
			AssetRegistry.hasLaser = true;
			AssetRegistry.hasPunchCharge = true;
			AssetRegistry.hasHands = true;
			AssetRegistry.hasEars = true;
			FlxG.switchState(new PlayState(0));
		}
		
		
	}
}

