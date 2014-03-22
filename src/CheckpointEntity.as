package
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Text
	
	public class CheckpointEntity extends Entity
	{
		private var xpos:int;
		private var ypos:int;
		private var collected:Boolean = false;
		
		public function CheckpointEntity(xpos:int, ypos:int)
		{
			x = xpos * 50
			y = ypos * 50
			type = "checkpoint"
			graphic = new Text("checkpoint")
			setHitbox(100, 50)
		}
		
		override public function update():void
		{
			if (collide("player", x, y))
			{
				PlayerEntity.checkpointX = x
				PlayerEntity.checkpointY = (y - 100)
				collected = true
			}
			if (collected == true)
			{
				graphic = new Text("")
			}
		}
	}
}