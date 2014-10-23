package Turrets 
{
	import flash.events.Event;
	import Turrets.Turret;
	/**
	 * ...
	 * @author Nick van Dokkum
	 */
	public class TurretTwo extends Turret
	{
		
		public function TurretTwo() 
		{
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		private function init(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			var turret : TurretArt = new TurretArt();
			turret.x = stage.stageWidth/2;
			turret.y = stage.stageHeight;
			addChild(turret);
		}
	}
}