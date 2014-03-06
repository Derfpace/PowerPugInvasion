package
{
	import net.flashpunk.Entity
	
	public class PugEntity extends Entity
	{
		[Embed(source="assets/powerpug.png")] private const POWERPUG:Class
		public function PugEntity()
		{
			graphic = new Image(POWERPUG);
			hitbox(313,268);
		}
	}
}