package {
	import flash.desktop.NativeApplication;
	import net.flashpunk.FP;
	import net.flashpunk.World;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Text;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.Sfx;
	public class TitleWorld extends World {
		[Embed(source = "assets/maintheme.mp3")] private const MUSIC:Class;
		private var 	titleText:Text 			= new Text("Power Pug Invasion");
		private const 	titleEntity:Entity 		= new Entity(FP.width / 2 - titleText.width * 3 / 2, FP.height / 10 * 2, titleText);
		private var 	playText:Text 			= new Text("Play");
		private const 	playEntity:Entity 		= new Entity(FP.width / 2 - playText.width * 1.5 / 2, FP.height / 10 * 4, playText);
		private var 	exitText:Text 			= new Text("Exit");
		private const 	exitEntity:Entity 		= new Entity(FP.width / 2 - exitText.width * 1.5 / 2, FP.height / 10 * 5, exitText);
		private var 	selection:int 			= 1;
		private var 	mouse:Boolean 			= false;
		private const 	cursorImage:Image 		= new Image(Asset.CURSOR);
		private var 	cursorEntity:Entity 	= new Entity(0, 0, cursorImage);
		public var		music:Sfx 				= new Sfx(MUSIC);
		public function submit(op:int):void {
			switch (op) {
			case 1:
				music.stop();
				Main.lives = 5;
				FP.world = new Level1World;
			break; case 2:
				NativeApplication.nativeApplication.exit();
			break; default:
				trace("Invalid menu operation");
			break;
			}
		}
		public function TitleWorld() {
			Input.mouseCursor = "auto";
			music.loop();
			titleText.size *= 3;
			playText.size *= 1.5;
			exitText.size *= 1.5;
			cursorImage.scale = 2;
			playEntity.setHitboxTo(playText);
			exitEntity.setHitboxTo(exitText);
			add(titleEntity);
			add(playEntity);
			add(exitEntity);
			add(cursorEntity);
			cursorEntity.active = false;
		}
		override public function update():void {
			if (Input.pressed(Key.UP)) {
				if (selection > 1) { selection--; } }
			if (Input.pressed(Key.DOWN)) {
				if (selection < 2) { selection++; } }
			if (playEntity.collidePoint(playEntity.x, playEntity.y, Input.mouseX, Input.mouseY)) {
				selection = 1;
				mouse = true;
			} else if (exitEntity.collidePoint(exitEntity.x, exitEntity.y, Input.mouseX, Input.mouseY)) {
				selection = 2;
				mouse = true;
			} else { mouse = false };
			switch (selection) {
				case 1:
					cursorEntity.y = playEntity.y + playText.height / 2 - cursorImage.scaledHeight / 2;
					cursorEntity.x = playEntity.x - 10;
				break; case 2:
					cursorEntity.y = exitEntity.y + exitText.height / 2 - cursorImage.scaledHeight / 2;
					cursorEntity.x = exitEntity.x - 10;
				break; }
			if (Input.pressed(Key.ENTER)) submit(selection);
			if (Input.mousePressed && mouse) submit(selection);
		}
	}
}