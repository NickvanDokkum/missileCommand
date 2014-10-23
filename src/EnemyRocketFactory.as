package {
	/**
	 * @author Nick van Dokkum
	 */
	public class EnemyRocketFactory {
		
		public static const ROCKET_ENEMY_ONE 		: String	=	"rocketEnemyOne";
		public static const ROCKET_ENEMY_TWO 		: String	=	"rocketEnemyTwo";
		public static const ROCKET_ENEMY_THREE 	: String	=	"rocketEnemyThree";
		
		public function makeEnemyShip( type : String ) : EnemyShip
		{
			var enemy : EnemyRocket;
			
			if(type == ROCKET_ENEMY_ONE)
			{
				enemy = new RocketEnemyOne();
			}
			else if(type == ROCKET_ENEMY_TWO)
			{
				enemy = new rocketEnemyTwo();
			}
			else
			{
				enemy = new rocketEnemythree();
			}
			
			return enemy;
		}
		
	}
}
