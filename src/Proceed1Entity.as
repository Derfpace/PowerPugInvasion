package
{
	import net.flashpunk.Entity
	import net.flashpunk.FP
	import net.flashpunk.graphics.Text
	import net.flashpunk.utils.Input
	import net.flashpunk.utils.Key
	import PlayerEntity
	import TimerEntity
	
	public class Proceed1Entity extends Entity
	{
		public function Proceed1Entity()
		{
			graphic = new Text("press X to start level 2");
			x = 400 - 60;
			y = 300 - halfHeight;
		}
		
		override public function update():void
		{
			if (Input.check(Key.X))
			{
				trace("starting level 2");
				PlayerEntity.lives = 3;
				FP.world = new Level2World;
				TimerEntity.seconds = 0;
			}
		}
	}
}