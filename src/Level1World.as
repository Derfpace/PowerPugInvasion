package
{
	import flash.desktop.NativeApplication;
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.World;
	
	public class Level1World extends World {
		/** Timer's graphic */
		private var timeText:Text = new Text(String(minutes) + ":" + String(seconds));
		
		/** Timer Entity */
		private var Timer:Entity = new Entity(FP.camera.x + FP.width - 10 - timeText.textWidth, FP.camera.y + 10, timeText)
		
		/** Lives graphic */
		private var livesText:Text = new Text(String(Main.lives))
		 
		 /** Lives Entity */
		private var Lives:Entity = new Entity(FP.camera.x + 10, 10, livesText)
		public function Level1World() {
			Input.mouseCursor = "hide";
			add(new BrickBackground);
			add(new PlayerEntity(2,9));
			add(Lives); livesText.size = 32
			add(Timer); timeText.size = 32;
			add(new PugEntity(19, 6));
			add(new PugEntity(27, 6));
			add(new BlockEntity(0 , 11, 6, 1));
			add(new BlockEntity(8 , 11, 16, 1));
			add(new BlockEntity(14, 9 , 3, 1));
			add(new BlockEntity(18, 9 , 3, 1));
			add(new BlockEntity(26, 11, 8, 1));
			add(new BlockEntity(36, 10, 2, 1));
			add(new BlockEntity(40, 9 , 2, 1));
			add(new BlockEntity(44, 8 , 1, 1));
			add(new BlockEntity(47, 9 , 1, 1));
			add(new BlockEntity(50, 10, 1, 1));
			add(new BlockEntity(53, 9 , 1, 1));
			add(new BlockEntity(57, 10, 1, 1));
			add(new CheckpointEntity(61, 10));
			add(new BlockEntity(61, 11, 2, 1));
			add(new BlockEntity(63, 10, 1, 1));
			add(new BlockEntity(64, 9 , 1, 1));
			add(new BlockEntity(66, 8 , 2, 1));
			add(new BlockEntity(69, 6 , 1, 1));
			add(new BlockEntity(70, 8 , 1, 1));
			add(new BlockEntity(71, 6 , 1, 1));
			add(new BlockEntity(74, 5 , 1, 1));
			add(new BlockEntity(76, 3 , 2, 1));
			add(new BlockEntity(82, 11, 2, 1));
			add(new BlockEntity(85, 10, 1, 1));
			add(new BlockEntity(86, 9 , 5, 1));
			add(new BlockEntity(94, 9 , 4, 1));
			add(new GoalEntity(96, 8));
		}
		override public function update():void {
			super.update();
			//update graphic and position of internal Entities
			timeText.text = String(minutes) + ":" + String(seconds);
			Timer.x = FP.camera.x + FP.width - 10 - timeText.textWidth;
			Timer.y = FP.camera.y + 10;
			livesText.text = String(Main.lives)
			Lives.x = FP.camera.x + 10;
			//reset world logic
			if (Input.pressed(Key.R)) { 
				FP.world = new Level1World;
			}
			//exit to main menu
			if (Input.pressed(Key.E) || Input.pressed(Key.ESCAPE)) FP.world = new TitleWorld;
		}
	}
}