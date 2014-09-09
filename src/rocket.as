package  
{
	import flash.display.MovieClip;
	/**
	 * ...
	 * @author Nick van Dokkum
	 */
	public class rocket 
	{
		public var rocket:MovieClip;
		public function rocket() 
		{
			stage.addEventListener(MouseEvent.CLICK, test)
		function test(e:MouseEvent):void
		{
			var currentX:Number = parent.mouseX;
			var currentY:Number = parent.mouseY;
			var rocketX:Number = parent.rocket.X;
			var rocketY:Number = parent.rocket.Y;
			
		}
		}
		
	}

}