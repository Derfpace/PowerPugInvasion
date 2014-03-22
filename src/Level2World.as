package
{
	import net.flashpunk.World;
	public class Level2World extends World
	{
		public function Level2World()
		{
			TryAgainEntity.currentLevel = 2;
			add(new PlayerEntity);
			add(new TimerEntity);
			add(new GiantPugEntity(-15, 2));
			add(new BlockEntity(-9, 11) );
			add(new BlockEntity(-8, 11) );
			add(new BlockEntity(-7, 11) );
			add(new BlockEntity(-6, 11) );
			add(new BlockEntity(-5, 11) );
			add(new BlockEntity(-4, 11) );
			add(new BlockEntity(-3, 11) );
			add(new BlockEntity(-2, 11) );
			add(new BlockEntity(-1, 11) );
			add(new BlockEntity(0, 11) );
			add(new BlockEntity(1, 11) );
			add(new BlockEntity(2, 11));
			add(new BlockEntity(3, 11));
			add(new BlockEntity(6, 11));
			add(new BlockEntity(7, 11));
			
			add(new BlockEntity(9, 11));
			add(new BlockEntity(10, 11));
			
			add(new BlockEntity(14, 11));
			
			add(new BlockEntity(17, 10));
			add(new BlockEntity(18, 10));
			add(new BlockEntity(19, 10));
			add(new BlockEntity(20, 10));
			add(new BlockEntity(21, 10));
			add(new BlockEntity(23, 9));
			
			add(new BlockEntity(25, 11));
			add(new BlockEntity(26, 11));
			add(new BlockEntity(27, 11));
			add(new BlockEntity(28, 11));
			add(new BlockEntity(29, 11));
			add(new BlockEntity(31, 11));
			add(new CheckpointEntity(27, 10));
			add(new BlockEntity(36, 10));
			
			add(new BlockEntity(39, 9));
			
			add(new BlockEntity(42, 6));
			add(new BlockEntity(43, 7));
			add(new BlockEntity(44, 7));
			add(new BlockEntity(45, 7));
			add(new BlockEntity(46, 7));
			add(new BlockEntity(47, 7));
			add(new CheckpointEntity(44, 6));
			
			add(new BlockEntity(48, 11));
			add(new BlockEntity(49, 11));
			
			add(new BlockEntity(54, 10));
			
			add(new BlockEntity(56, 8));
			add(new BlockEntity(58, 5));
			add(new BlockEntity(60, 7));
			
			add(new MovingBlockEntity(67, 10));
			
			add(new BlockEntity(72, 11));
			add(new BlockEntity(73, 11));
			
			add(new BlockEntity(76, 11));
			add(new BlockEntity(77, 11));
			add(new BlockEntity(78, 11));
			add(new BlockEntity(81, 11));
			add(new BlockEntity(83, 8));
			add(new CheckpointEntity(77, 10));
			add(new MovingBlockEntity(87, 8));
			add(new BlockEntity(92, 11));
			add(new BlockEntity(93, 11));
			add(new BlockEntity(94, 11));
			add(new BlockEntity(95, 11));
			add(new BlockEntity(96, 11));
			add(new BlockEntity(97, 11));
			add(new WinEntity(94, 10));
		}
	}
}