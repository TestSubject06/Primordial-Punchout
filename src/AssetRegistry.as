package  
{
	import flash.accessibility.AccessibilityProperties;
	import org.flixel.FlxEmitter;
	import org.flixel.FlxSprite;
	import org.flixel.FlxTilemap;
	public class AssetRegistry 
	{
		[Embed(source = "data/vision_low.png")]public static var visionLow:Class;
		[Embed(source = "data/SlimeCharacter.png")]public static var blueSlime:Class;
		[Embed(source = "data/SlimeLegs.png")]public static var blueSlimeLegs:Class;
		[Embed(source = "data/SlimeArms.png")]public static var blueSlimeArms:Class;
		[Embed(source = "data/SlimeWings.png")]public static var blueSlimeWings:Class;
		[Embed(source = "data/SlimeWhipParticle.png")]public static var blueSlimeWhip:Class;
		[Embed(source = "data/SlimeEnemy.png")]public static var redSlime:Class;
		[Embed(source = "data/SlimeRunner.png")]public static var redSlimeRunner:Class;
		[Embed(source = "data/SlimePuncher.png")]public static var redSlimePuncher:Class;
		[Embed(source = "data/SlimeFlyer.png")]public static var redSlimeFlier:Class;
		[Embed(source = "data/RedGibs.png")]public static var redGibs:Class;
		[Embed(source = "data/Laser.png")]public static var laser:Class;
		[Embed(source = "data/ChargeSpark.png")]public static var spark:Class;
		[Embed(source = "data/ChargeEmitter.png")]public static var chargeParticles:Class;
		[Embed(source = "data/vision_high.png")]public static var visionHigh:Class;
		[Embed(source = "data/Turret.png")]public static var turret:Class;
		[Embed(source = "data/Acid.png")]public static var acid:Class;
		[Embed(source = "data/ItemCapsule(Arms).png")]public static var arms:Class;
		[Embed(source = "data/ItemCapsule(Beams).png")]public static var beams:Class;
		[Embed(source = "data/ItemCapsule(Legs).png")]public static var legs:Class;
		[Embed(source = "data/ItemCapsule(Ears).png")]public static var ears:Class;
		[Embed(source = "data/ItemCapsule(Hands).png")]public static var hands:Class;
		[Embed(source = "data/ItemCapsule(PowerFistPowerUpItem_23).png")]public static var power:Class;
		[Embed(source = "data/ItemCapsule(VisionI).png")]public static var visionI:Class;
		[Embed(source = "data/ItemCapsule(VisionII).png")]public static var visionII:Class;
		[Embed(source = "data/ItemCapsule(Whip).png")]public static var whip:Class;
		[Embed(source = "data/ItemCapsule(Wings).png")]public static var wings:Class;
		[Embed(source = "data/Tiles.png")]public static var tiles:Class;
		[Embed(source = "data/LockedDoor.png")]public static var door:Class;
		[Embed(source = "data/BlastDoor.png")] public static var blastDoor:Class;
		[Embed(source = "data/BreakableBlock.png")]public static var breakableBlock:Class;
		[Embed(source = "data/Glass.png")]public static var glass:Class;
		[Embed(source = "data/glassShards.png")]public static var glassShards:Class;
		[Embed(source="data/gravel.png")]public static var gravel:Class;
		public static var sightLevel:int = 0;
		public static var upgradeLevel:String = "none";
		public static var hasWhip:Boolean = false;
		public static var hasPunch:Boolean = false;
		public static var hasLegs:Boolean = false;
		public static var hasWings:Boolean = false;
		public static var hasLaser:Boolean = false;
		public static var hasPunchCharge:Boolean = false;
		public static var hasHands:Boolean = false;
		public static var hasEars:Boolean = false;
		public static var hasEndurance:Boolean = false;
		public static var currentMap:FlxTilemap;
		public static var playerWhip:FlxSprite;
		public static var playerLaser:FlxSprite;
		public static var player:FlxSprite;
		public static var gibsEmitteR:FlxEmitter;
		public static var glassEmitteR:FlxEmitter;
		public static var dustEmitteR:FlxEmitter;
	}
}