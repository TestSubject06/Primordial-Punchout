package entities 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Zachary Tarvit
	 */
	public class Item_Legs extends Item
	{
		public function Item_Legs(X:Number=0, Y:Number=0, SimpleGraphic:Class=null) 
		{
			super(X, Y, AssetRegistry.legs);
		}
		public override function onCollected():void {
			AssetRegistry.upgradeLevel = "legs";
			AssetRegistry.hasLegs = true;
		}
	}

}