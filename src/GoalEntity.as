package {
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Text
	import net.flashpunk.FP
	
	public class GoalEntity extends Entity {
		private var xpos:int;
		private var ypos:int;
		private var goalText:Text = new Text("goal")
		private var collected:Boolean = false;
		
		public function GoalEntity(xpos:int, ypos:int) {
			x = xpos * 50;
			y = ypos * 50;
			type = "goal";
			goalText.size = 32;
			graphic = goalText;
			setHitbox(100, 50) 
		}
		override public function update():void {
			if (collide("player", x, y)) {
				//TryAgainEntity.currentLevel++;
				FP.world = new WinWorld;
				collected = true }
			if (collected) {
				graphic = new Text("") }
		}
	}
}