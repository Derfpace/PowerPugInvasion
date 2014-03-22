package
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.Sfx
	import net.flashpunk.graphics.Text;
	
	public class GameOverEntity extends Entity
	{
		[Embed(source = "assets/Sad-Trombone.mp3")] private const FAIL:Class
		public var fail:Sfx = new Sfx(FAIL);
		public function GameOverEntity()
		{
			graphic = new Text("Game over");
			x = 400 - 50;
			y = 100
		}
		override public function added():void
		{
			fail.play();
		}
	}
}