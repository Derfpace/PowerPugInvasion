package
{
	import net.flashpunk.Entity;
	import net.flashpunk.Graphic;
	import net.flashpunk.graphics.Image;
	
	public class BlockEntity extends Entity
	{
		public static var xpos:int = 0;
		public static var ypos:int = 0;
		[Embed(source = "assets/Block.png")] private const BLOCK:Class;
		public function BlockEntity(xpos:int, ypos:int)
		{
			graphic = new Image(BLOCK);
			x = xpos * 50;
			y = ypos * 50;
			setHitbox(50,50)
		}
	}
}