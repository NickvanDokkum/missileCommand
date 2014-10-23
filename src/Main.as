package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import Turrets.TurretFactory;
	import Turrets.Turret;
	
	/**
	 * ...
	 * @author Nick van Dokkum
	 */
	public class Main extends Sprite 
	{
		public static var main: Main;
		private var turretFactory :TurretFactory;
		public function Main():void 
		{
			turretFactory = new TurretFactory();
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			main = this;
			var turretOne : Turret = turretFactory.makeTurret(TurretFactory.TURRET_ONE, this);
			turretOne.x = 50;
			turretOne.y = stage.stageHeight;
			var turretTwo : Turret = turretFactory.makeTurret(TurretFactory.TURRET_TWO, this);
			var turretThree : Turret = turretFactory.makeTurret(TurretFactory.TURRET_THREE, this);
		}
		
		
	}
	
	
}