package
{
	import net.flashpunk.Entity
	import net.flashpunk.FP
	import net.flashpunk.graphics.Text
	import net.flashpunk.utils.Input
	import net.flashpunk.utils.Key
	import PlayerEntity
	import TimerEntity
	
	public class TryAgainEntity extends Entity
	{
		public static var currentLevel:int = 1
		public function TryAgainEntity()
		{
			graphic = new Text("press X to continue");
			x = 400 - 60;
			y = 300 - halfHeight;
		}
		
		override public function update():void
		{
			if (Input.check(Key.X))
			{
				if (currentLevel == 1) 
				{
					trace("starting level 1");
					PlayerEntity.lives = 3;
					FP.world = new Level1World;
				}
				if (currentLevel == 2)
				{
					FP.world = new Level2World
					PlayerEntity.lives = 1
				}
				TimerEntity.seconds = 0;
			}
		}
	}
}