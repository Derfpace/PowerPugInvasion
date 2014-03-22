package
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.Sfx
	import net.flashpunk.graphics.Text;
	import TimerEntity
	
	public class YouWonEntity extends Entity
	{
		[Embed(source = "assets/Sad-Trombone.mp3")] private const WIN:Class
		public var win:Sfx = new Sfx(WIN);
		public function YouWonEntity()
		{
			graphic = new Text(String(TimerEntity.seconds));
			x = 300;
			y = 100;
		}
		override public function added():void
		{
			trace("Game completed")
		}
	}
}