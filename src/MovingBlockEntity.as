package
{
	import net.flashpunk.Entity;
	import net.flashpunk.Graphic;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP
	
	public class MovingBlockEntity extends Entity
	{
		private var xpos:int = 0;
		private var ypos:int = 0;
		private var time:Number = 0;
		private var movingright:Boolean
		[Embed(source = "assets/movingblock.png")] private const MOVINGBLOCK:Class;
		public function MovingBlockEntity(xpos:int, ypos:int)
		{
			graphic = new Image(MOVINGBLOCK);
			x = xpos * 50;
			y = ypos * 50;
			setHitbox(50, 50);
			type = "block";
		}
		
		override public function update():void
		{
			//movement logic
			time += FP.elapsed;
			if (time >= 1)
			{
				// Reset the counter after 2 seconds, and flip block.
				time = 0;
				if (movingright == false)
				{
					movingright = true;
				}
				else
				{
					movingright = false;
				}
			}
			if (movingright == true)
			{
				x = x + 2;
			}
			else
			{
				x = x - 2;
			}
		}
	}
}