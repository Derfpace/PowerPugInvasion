package
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	public class GiantPugEntity extends Entity
	{
		[Embed(source = "assets/bosspug.png")] private const GIANTPUG:Class
		private var xpos:int = 0;
		private var ypos:int = 0;
		public function GiantPugEntity(xpos:int, ypos:int)
		{
			x = xpos * 50
			y = ypos * 50
			graphic = new Image(GIANTPUG);
			type = "pug"
			setHitbox(550, 500)
		}
		
		override public function update():void
		{
			x += 3.5;
		}
	}
}