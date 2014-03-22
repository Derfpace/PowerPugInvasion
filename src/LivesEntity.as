package
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Text;
	import PlayerEntity
	
	public class LivesEntity extends Entity
	{
		private var livesnumber:String = PlayerEntity.lives.toString();
		public function LivesEntity()
		{
			graphic = new Text(livesnumber)
			x = PlayerEntity.playerX + 400
			y = 10
		}
		
		override public function update():void
		{
			x = PlayerEntity.playerX + 25
			y = 10
			livesnumber = String(PlayerEntity.lives);
			graphic = new Text(livesnumber)
		}
	}
}