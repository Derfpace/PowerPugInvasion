package
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Text;
	
	public class TitleEntity extends Entity
	{
		public function TitleEntity()
		{
			graphic = new Text("Power Pug Ivasion");
			x = super.halfWidth - 50;
			y = super.halfHeight - 200;
			
		}
	}
}