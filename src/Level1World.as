package
{
	import net.flashpunk.World
	
	public class Level1World extends World
	{
		public function Level1World()
		{
			add(new PlayerEntity);
			add(new BlockEntity(0, 11));
			add(new BlockEntity(1, 11));
			add(new BlockEntity(2, 11));
			add(new BlockEntity(3, 11));
			add(new BlockEntity(4, 11));
			add(new BlockEntity(5, 11));
		}
	}
}