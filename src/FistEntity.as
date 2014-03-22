package
{
	import net.flashpunk.Entity
	import net.flashpunk.graphics.Image
	import net.flashpunk.utils.Input
	import net.flashpunk.utils.Key
	import net.flashpunk.Sfx
	import PlayerEntity
	
	public class FistEntity extends Entity
	{
		[Embed(source = "assets/Fist.png")] private const FIST:Class;
		private var posx:int = 0;
		private var canPunch:Boolean = true;
		private var momentum:int = 0;
		public function FistEntity()
		{
			graphic = new Image(FIST);
			type = "fist";
			x = PlayerEntity.playerX + 25;
			y = PlayerEntity.PlayerY + 50;
		}
		
		override public function update():void
		{
			x = PlayerEntity.playerX + 25 + posx
			y = PlayerEntity.PlayerY + 50;
			//punching logic
			if (Input.pressed(Key.SPACE) && canPunch == true)
			{
				posx = posx + 75;
			}
			//move fist towards player
			if (posx > 0) 
			{
				posx = posx  - 5
			}
			//stop fist and check if it is back where it started
			if (x <= (PlayerEntity.playerX + 25))
			{
				x = PlayerEntity.playerX + 25;
				canPunch = false;
			}
			else
			{
				canPunch = false;
			}
		}
	}
}