package
{
	import net.flashpunk.Entity
	import net.flashpunk.FP
	[Embed(source="assets/NewGame.png")] private const(NEWGAME)
	
	public class NewGameEntity extends Entity
	{
		public function NewGameEntity()
		{
			graphic = new Image(NEWGAME);
			x = halfWidth - 100;
			y = halfHeight;
		}
		
		override public function update():void
		{
			if (Input.mousePressed && collidePoint(x, y, Input.mouseX, Input.mouseY))
			{
				FP.World = new World(Level1World)
			}
		}
	}
}