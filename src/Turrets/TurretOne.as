package Turrets 
{
	import flash.events.Event;
	import Turrets.Turret;
	/**
	 * ...
	 * @author Nick van Dokkum
	 */
	public class TurretOne extends Turret
	{
		
		public function TurretOne() 
		{
			addEventListener(Event.ADDED_TO_STAGE, init);
			
		}
		private function init(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			
			turret.x = 50;
			turret.y = stage.stageHeight;
			addChild(turret);
			
		}
	}

}