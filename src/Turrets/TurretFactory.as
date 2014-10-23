package Turrets {
	import flash.display.Sprite;
	
	/**
	 * @author Nick van Dokkum
	 */
	public class TurretFactory {
		
		public static const TURRET_ONE : String		=	"turretOne";
		public static const TURRET_TWO : String	=		"turretTwo";
		public static const TURRET_THREE : String	=	"turretThree";
		public function makeTurret( type : String, targetContainer : Sprite ) : Turret
		{
			var turret : Turret;
			
			if(type == TURRET_ONE)
			{
				turret = new Turret(1);
				
			}
			else if(type == TURRET_TWO)
			{
				turret = new Turret(2);
			}
			else
			{
				turret = new Turret(3);
			}
			
			targetContainer.addChild(turret);
			
			return turret;
		}
	}
}
