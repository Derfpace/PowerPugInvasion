package {
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Backdrop;
	
	public class BrickBackground extends Entity {
		private var brickTexture:Backdrop = new Backdrop(Asset.BRICK)
		public function BrickBackground() {
			graphic = brickTexture;
			graphic.scrollX = 0.5;
			graphic.x += 10;
		}
		override public function update():void {
		}
		
	}
}