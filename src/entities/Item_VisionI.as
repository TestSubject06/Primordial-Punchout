package entities 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class Item_VisionI extends Item
	{
		public function Item_VisionI(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, AssetRegistry.visionI);
		}
		public override function onCollected():void {
			AssetRegistry.sightLevel = 1;
		}
	}

}