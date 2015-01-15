package {
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.FP;
	
	public class LivesEntity extends Entity {
		private var livesnumber:String = String(Main.lives);
		public function LivesEntity() {
			graphic = new Text(livesnumber)
			x = FP.camera.x + (FP.width / 2);
			y = 0;
		}
		override public function update():void {
			x = FP.camera.x + (FP.width / 2);
			y = FP.camera.y;
			livesnumber = String(Main.lives);
			graphic = new Text(livesnumber)
		}
	}
}