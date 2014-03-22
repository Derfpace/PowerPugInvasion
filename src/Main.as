package
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP
	
	public class Main extends Engine
	{
		public function Main()
		{
			super(1366, 768, 60, true);
			FP.world = new TitleWorld;
			FP.screen.color = 0x444499;
		}
		
		override public function init():void
		{
			trace("FlashPunk has started successfully!");
		}
	}
}