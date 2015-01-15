package {
	import net.flashpunk.Entity;
	import net.flashpunk.Graphic;
	import net.flashpunk.graphics.TiledImage;
	import Asset;
	
	public class BlockEntity extends Entity {
		/**
		 * 
		 * @param	xpos			The horizontal tile the block should be spawned on.
		 * @param	ypos			The vertical tile the block should be spawned on.
		 * @param	blockwidth		The width of the block in tiles.
		 * @param	blockheight		The heigt of the block in tiles.
		 */
		public function BlockEntity(xpos:int, ypos:int, blockwidth:int = 1, blockheight:int = 1) {
			var blockGraphic:TiledImage = new TiledImage(Asset.BLOCK, blockwidth * 50, blockheight * 50);
			graphic = blockGraphic;
			x = xpos * 50;
			y = ypos * 50;
			setHitbox(50 * blockwidth, 50 * blockheight);
			type = "block";
			active = false;
		}
	}
}