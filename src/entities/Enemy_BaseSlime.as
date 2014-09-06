package entities 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class Enemy_BaseSlime extends FlxSprite 
	{
		private var moving:Boolean;
		private var moveLeft:Boolean;
		private var moveTimer:Number;
		private var moveRandomTimer:Number;
		public function Enemy_BaseSlime(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, SimpleGraphic);
			loadGraphic(AssetRegistry.redSlime, false, true);
			acceleration.y = 400;
			moving = true;
			moveLeft = true;
			moveTimer = 0;
			moveRandomTimer = FlxG.random() * 3 + 1;
		}
		override public function kill():void 
		{
			super.kill();
		}
		override public function update():void 
		{
			super.update();
			moveTimer += FlxG.elapsed;
			
			if (moveTimer > moveRandomTimer) {
				if(!moving){
					moving = true;
					moveLeft = (FlxG.random() < .5) ? true : false;
					moveRandomTimer = FlxG.random() * 3 + 1;
				}else {
					moving = false;
					velocity.x = 0;
					moveRandomTimer = FlxG.random() * 3 + 1;
				}
				moveTimer = 0;
			}
			if (moving) {
				if (moveLeft) {
					facing = LEFT;
					velocity.x = -80;
					if (AssetRegistry.currentMap.getTile(Math.floor((x+8) / 16) - 1, Math.floor(y / 16) + 1) == 0) {
						moving = false;
						velocity.x = 0;
					}
				}else{
					velocity.x = 80;
					facing = RIGHT;
					if (AssetRegistry.currentMap.getTile(Math.floor((x+8) / 16) + 1, Math.floor(y / 16) + 1) == 0) {
						moving = false;
						velocity.x = 0;
					}
				}
			}
		}
	}
}