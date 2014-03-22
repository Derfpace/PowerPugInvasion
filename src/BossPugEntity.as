package
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	import net.flashpunk.Sfx;
	import net.flashpunk.graphics.Spritemap;
	import PugEntity;
	
	public class BossPugEntity extends Entity
	{
		[Embed(source = "assets/bosspug.png")] private const BOSSPUG:Class;
		[Embed(source = "assets/invertedbosspug.png")] private const INVERTEDBOSSPUG:Class;
		[Embed(source = "assets/dog - Kopi.mp3")] private const BOSSHOWL:Class;
		private var xpos:int;
		private var ypos:int;
		private var time:Number = 0;
		private var movingright:Boolean = false;
		private var gravity:int = 0;
		public var BossHowl:Sfx = new Sfx(BOSSHOWL);
		
		public function BossPugEntity(xpos:int, ypos:int)
		{
			graphic = new Image(BOSSPUG);
			x = xpos * 50;
			y = ypos * 50;
			setHitbox(500, 550);
			type = "pug";
		}
		override public function update():void
		{
			//death logic
			if (collide("player", x, y - 10))
			{
				BossHowl.play();
				type = "deadpug"
			}
			
			//gravity logic
			y = y - gravity;
			if (gravity > -10)
			{
				gravity--;
			}
			//vertical collision logic
			if (collide("block", x, y + 50) && type == "pug")
			{
				gravity = 0;
			}
			
			//movement logic
			time += FP.elapsed;
			if (time >= 2)
			{
				//Resets the counter after 2 seconds, and flips pug.
				time = 0;
				if (movingright == false)
				{
					movingright = true;
					graphic = new Image(BOSSPUG);
				}
				else
				{
					movingright = false;
					graphic = new Image(INVERTEDBOSSPUG);
				}
			}
			if (movingright == true)
			{
				x = x + 1;
			}
			else
			{
				x = x - 1;
			}
		}
	}
}