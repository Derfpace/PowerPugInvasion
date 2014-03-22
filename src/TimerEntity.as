package
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Text;
	import PlayerEntity;
	public class TimerEntity extends Entity
	{
		public static var seconds:Number = 0;
		private var minutes:Number = 0;
		
		public function TimerEntity()
		{
			x = PlayerEntity.playerX + 350;
			y = 10;
			graphic = new Text(String(seconds));
		}
		
		override public function update():void
		{
			x = PlayerEntity.playerX + 350;
			seconds += FP.elapsed;
			/*if (seconds >= 60)
			{
				minutes++;
				seconds = 0;
				trace("minutes is", minutes);
			}*/
			graphic = new Text(String(seconds));
		}
	}
}