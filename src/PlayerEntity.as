package
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image
	import net.flashpunk.FP
	import net.flashpunk.utils.Input
	import net.flashpunk.utils.Key
	
	public class PlayerEntity extends Entity
	{
		private var yspeed:int = 0;
		[Embed(source="assets/Player.png")] private const PLAYER:Class
		public function PlayerEntity()
		{
			graphic = new Image(PLAYER);
			y = 450;
			x = 50;
		}
		
		override public function update():void
		{
			FP.camera.x = x - 400;
			y = y + speed;
			if (Input.check(Key.RIGHT))
			{
				speed++;
				while (speed > 5)
				{
					speed = 5;
				}
			}
		}
	}
}