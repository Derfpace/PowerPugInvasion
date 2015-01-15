package {
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	public class TryAgainEntity extends Entity {
		public static var currentLevel:int = 1;
		private var continueText:Text = new Text("Press enter to continue")
		public function TryAgainEntity() {
			graphic = new Text("press enter to continue");
			x = FP.width / 2 - continueText.width / 2;
			y = FP.height / 3 * 2;
		}
		override public function update():void {
			if (Input.check(Key.ENTER)) {
				if (Main.lives < 1) {
					Main.lives = 5}
				if (currentLevel == 1) {
					trace("starting level 1");
					FP.world = new Level1World; }
				if (currentLevel == 2) {
					FP.world = new Level2World
					Main.lives = 3 }
				if (currentLevel == 3) {
					trace ("game finished") }
			}
		}
	}
}