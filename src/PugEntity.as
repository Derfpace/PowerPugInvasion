package
{
	import net.flashpunk.Entity
	
	[Embed(source="assets/powerpug.png")] private const(POWERPUG)
	
	public class PugEntity extends Entity
	{
		public function PugEntity()
		{
			graphic = new Image(POWERPUG);
			hitbox(313,268);
		}
	}
}