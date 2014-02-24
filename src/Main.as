package
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;

	public class Main extends Engine
	{
		public function Main()
		{
			super(1024, 768, 60, true);
			FP.world = new TitleWorld;
		}
		
		override public function init():void
		{
			trace("application launched succesfully")
		}
	}
}