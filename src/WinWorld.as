package
{
	import net.flashpunk.World
	import TimerEntity
	
	public class WinWorld extends World
	{
		public function WinWorld()
		{
			add(new YouWonEntity);
			add(new TryAgainEntity);
		}
	}
}