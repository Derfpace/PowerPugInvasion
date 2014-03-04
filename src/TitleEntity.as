package
{
	import net.flashpunk.Entity
	import net.flashpunk.FP
	
	[Embed(source="assets/Title.png")] private const(TITLE)
	
	public class TitleEntity extends Entity
	{
		public function TitleEntity
		{
			graphic = new Image(TITLE);
			x = FP.halfWidth - 50;
			y = FP.halfHeight - 200;
			
		}
	}
}