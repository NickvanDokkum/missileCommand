package Turrets 
{
	import flash.display.Sprite;
    import flash.events.Event;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author Nick van Dokkum
	 */
	public class Turret extends Sprite
	{
		private var turret : TurretArt = new TurretArt();
		public function Turret (placement:int )
		{
			//addEventListener(Event.ENTER_FRAME, updateFunction);
			
			switch(placement)
			{
				case 1:
					
				break;
				case 2:
					
				break;
				case 3:
					
				break;
			}
			//stage.addEventListener(MouseEvent.MOUSE_MOVE, lookAtMouse);
		}

		private function lookAtMouse(event:MouseEvent):void
        {
			trace("mouse move");
			var dist_Y:Number =stage.mouseY - this.y ;
			var dist_X:Number =stage.mouseX - this.x ;
			var angle:Number = Math.atan2(dist_Y,dist_X);
			var degrees:Number = angle * 180/ Math.PI;
			this.rotation = degrees;
        }
	}
}