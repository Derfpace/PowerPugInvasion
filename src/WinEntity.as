package
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Text
	import net.flashpunk.FP
	
	public class WinEntity extends Entity
	{
		private var xpos:int;
		private var ypos:int;
		private var collected:Boolean = false;
		
		public function WinEntity(xpos:int, ypos:int)
		{
			x = xpos * 50
			y = ypos * 50
			type = "goal"
			graphic = new Text("goal")
			setHitbox(100, 50)
		}
		
		override public function update():void
		{
			if (collide("player", x, y))
			{
				TryAgainEntity.currentLevel++;
				FP.world = new WinWorld;
				collected = true
			}
			if (collected == true)
			{
				graphic = new Text("")
			}
		}
	}
}