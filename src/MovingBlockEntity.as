package {
	import net.flashpunk.Entity;
	import net.flashpunk.Graphic;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP
	
	public class MovingBlockEntity extends Entity {
		private var xpos:int = 0;
		private var ypos:int = 0;
		private var offsetx:int;
		private var movingright:Boolean = true;
		[Embed(source = "assets/movingblock.png")] private const MOVINGBLOCK:Class;
		public function MovingBlockEntity(xpos:int, ypos:int) {
			graphic = new Image(MOVINGBLOCK);
			x = xpos * 50;
			y = ypos * 50;
			setHitbox(50, 50);
			type = "block";
			offsetx = x;
		}
		override public function update():void {
			var moveright:Boolean;
			if (x - offsetx < 0) movingright = true;
			if (x - offsetx > 100) movingright = false;
			if (movingright) x++;
			else x--;
		}
	}
}