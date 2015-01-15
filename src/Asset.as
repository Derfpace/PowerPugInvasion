package {
	import net.flashpunk.Graphic;
	import net.flashpunk.graphics.Image;
	public class Asset {
		[Embed(source = "assets/LargeBrightBrick.png")] public static const BLOCK:Class;
		[Embed(source = "assets/Brick.png")] public static const BRICK:Class;
		[Embed(source = "assets/cursor.png")] public static const CURSOR:Class;
		public static var block:Graphic = new Image(BLOCK);
		public static var cursor:Graphic = new Image(CURSOR);
		public function Asset() {
			
		}
	}
}