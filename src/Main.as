package {
	import flash.system.Capabilities;
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	public class Main extends Engine {
		
		/**
		 * Current amount of lives.
		 */
		public static var lives:int = 5;
		
		public function Main() {
			super(Capabilities.screenResolutionX, Capabilities.screenResolutionY, 60, true);
			FP.world = new TitleWorld;
			FP.screen.color = 0x200000;
		}
	}
}