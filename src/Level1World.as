package
{
	import net.flashpunk.World
	
	public class Level1World extends World
	{
		public function Level1World()
		{
			add(new BlockEntity(0, 0));
			add(new BlockEntity(1, 0));
			add(new BlockEntity(2, 0));
			add(new BlockEntity(3, 0));
			add(new BlockEntity(4, 0));
			add(new BlockEntity(5, 0));
		}
	}
}