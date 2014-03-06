package
{
	import net.flashpunk.World
	
	public class TitleWorld extends World
	{
		public function TitleWorld()
		{
			add(new TitleEntity);
			add(new NewGameEntity);
		}
	}
}