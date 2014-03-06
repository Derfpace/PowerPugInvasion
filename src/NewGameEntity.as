package
{
	import net.flashpunk.Entity
	import net.flashpunk.FP
	import net.flashpunk.World
	import net.flashpunk.graphics.Text
	import net.flashpunk.utils.Input
	import net.flashpunk.utils.Key
	
	public class NewGameEntity extends Entity
	{
		public function NewGameEntity()
		{
			graphic = new Text("press X to start");
			x = 400 - 60;
			y = 300 - halfHeight;
		}
		
		override public function update():void
		{
			if (Input.check(Key.X))
			{
				trace("starting level 1");
				FP.world = new Level1World;
			}
		}
	}
}