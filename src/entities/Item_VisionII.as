package entities 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class Item_VisionII extends Item
	{
		public function Item_VisionII(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, AssetRegistry.visionII);
		}
		public override function onCollected():void {
			AssetRegistry.sightLevel = 2;
		}
	}

}