package
{
	import net.flashpunk.World;
	public class Level2World extends World
	{
		public function Level2World()
		{
			TryAgainEntity.currentLevel = 2;
			add(new PlayerEntity);
			add(new LivesEntity);
			//add(new GiantPugEntity(-15, 2));
			add(new BlockEntity(-9, 11));
			add(new BlockEntity(-8, 11));
			add(new BlockEntity(-7, 11));
			add(new BlockEntity(-6, 11));
			add(new BlockEntity(-5, 11));
			add(new BlockEntity(-4, 11));
			add(new BlockEntity(-3, 11));
			add(new BlockEntity(-2, 11));
			add(new BlockEntity(-1, 11));
			add(new BlockEntity(0, 11));
			add(new BlockEntity(1, 11));
			add(new BlockEntity(2, 11));
			add(new BlockEntity(3, 11));
			add(new BlockEntity(7, 11));
			add(new BlockEntity(8, 11));
			
			add(new BlockEntity(11, 9));
			add(new BlockEntity(12, 9));
			
			add(new BlockEntity(17, 11));
			add(new BlockEntity(18, 11));
			add(new BlockEntity(19, 11));
			add(new BlockEntity(20, 11));
			add(new BlockEntity(21, 11));
			add(new BlockEntity(17, 7));
			add(new BlockEntity(18, 7));
			add(new BlockEntity(19, 7));
			add(new BlockEntity(20, 7));
			add(new BlockEntity(21, 7));
			add(new BlockEntity(24, 9));
			
			add(new BlockEntity(27, 11));
			add(new BlockEntity(28, 11));
			add(new BlockEntity(29, 11));
			add(new BlockEntity(30, 11));
			add(new BlockEntity(31, 11));
			add(new BlockEntity(27, 6));
			add(new BlockEntity(28, 6));
			add(new BlockEntity(29, 6));
			add(new BlockEntity(30, 6));
			add(new BlockEntity(31, 6));
			add(new CheckpointEntity(27, 10));
			
			add(new BlockEntity(37, 11));
			add(new BlockEntity(38, 11));
			add(new BlockEntity(40, 8));
			
			add(new BlockEntity(44, 10));
			add(new BlockEntity(45, 10));
			add(new BlockEntity(46, 8));
			add(new BlockEntity(46, 7));
			add(new BlockEntity(47, 10));
			
			add(new BlockEntity(51, 10));
			add(new BlockEntity(52, 11));
			add(new BlockEntity(55, 8));
			add(new BlockEntity(58, 7));
			add(new BlockEntity(59, 8));
			add(new BlockEntity(62, 9));
			add(new BlockEntity(63, 8));
			add(new BlockEntity(64, 7));
			
			add(new BlockEntity(69, 10));
			add(new BlockEntity(70, 10));
			add(new BlockEntity(71, 10));
			add(new BlockEntity(72, 10));
			add(new BlockEntity(73, 10));
			add(new BlockEntity(74, 10));
			add(new BlockEntity(75, 10));
			add(new PugEntity(70, 6));
			
			add(new BlockEntity(75, 10));
			add(new BlockEntity(76, 8));
			add(new BlockEntity(78, 8));
			add(new BlockEntity(81, 9));
			add(new BlockEntity(82, 7));
			add(new BlockEntity(86, 9));
			add(new BlockEntity(89, 8));
		}
	}
}