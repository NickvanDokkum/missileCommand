package  
{
	import flash.display.MovieClip;
	import flash.events.Event;
    import flash.events.MouseEvent;
	/**
	 * ...
	 * @author Nick van Dokkum
	 */
	public class rocket 
	{
		
		var flySpeed:Number = 5;
        var oldPosX;
        var oldPosY;

        public function Guest()
        {
            stage.addEventListener(MouseEvent.CLICK, fly);
        }

		function fly(event:MouseEvent):void
		{
			oldPosX = parent.mouseX;
            oldPosY = parent.mouseY;
            rotation = Math.atan2(oldPosY - y,oldPosX - x) / Math.PI * 180;
            addEventListener(Event.ENTER_FRAME, loop);
        }

        function loop(event:Event):void
        {
            var dx:Number = oldPosX - x;
            var dy:Number = oldPosY - y;
            var distance:Number = Math.sqrt((dx*dx)+(dy*dy));
            if (distance<walkSpeed)
            {
				x = oldPosX;
				y = oldPosY;
				removeEventListener(Event.ENTER_FRAME, loop);
            }
            else
            {
				x = x+Math.cos(rotation/180*Math.PI)*flySpeed;
				y = y+Math.sin(rotation/180*Math.PI)*flySpeed;
            }
        }
	}
}