package
{
	import net.flashpunk.World
	
	public class GameOverWorld extends World
	{
		public function GameOverWorld()
		{
			add(new GameOverEntity);
			add(new TryAgainEntity);
		}
	}
}