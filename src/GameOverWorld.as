package {
	import flash.desktop.NativeApplication;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.World;
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.Sfx;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Text;
	
	public class GameOverWorld extends World {
		[Embed(source = "assets/Sad-Trombone.mp3")] private const FAIL:Class;
		public  const	fail:Sfx 				= new Sfx(FAIL);
		private var		gameoverText:Text 		= new Text("Game over");
		private const	gameoverEntity:Entity 	= new Entity(FP.width / 2 - gameoverText.width * 3 / 2, FP.height / 10 * 2, gameoverText);
		private var		tryagainText:Text		= new Text("Try Again");
		private const	tryagainEntity:Entity	= new Entity(FP.width / 2 - tryagainText.width * 1.5 / 2, FP.height / 10 * 4, tryagainText);
		private var		mainmenuText:Text		= new Text("Main menu");
		private const	mainmenuEntity:Entity	= new Entity(FP.width / 2 - mainmenuText.width * 1.5 / 2, FP.height / 10 * 5, mainmenuText);
		private var 	cursorImage:Image 		= new Image(Asset.CURSOR);
		private var 	cursorEntity:Entity 	= new Entity(0, 0, cursorImage);
		private var		currentLevel:uint		= 1;
		private var		selection:uint			= 0;
		public function GameOverWorld() {
			Input.mouseCursor = "auto"
			fail.play();
			gameoverText.size *= 3;
			tryagainText.size *= 1.5;
			mainmenuText.size *= 1.5;
			cursorImage.scale *= 2;
			gameoverEntity.active = false;
			tryagainEntity.active = false;
			mainmenuEntity.active = false;
			cursorEntity.active = false;
			gameoverEntity.setHitboxTo(gameoverText);
			tryagainEntity.setHitboxTo(tryagainText);
			mainmenuEntity.setHitboxTo(mainmenuText);
			cursorEntity.setHitboxTo(cursorImage);
			add(gameoverEntity);
			add(tryagainEntity);
			add(mainmenuEntity);
			add(cursorEntity);
		}
		private function submit(op:uint):void {
			switch (op) {
			case 0:
				if (Main.lives < 1) {
				Main.lives = 5; }
				if (currentLevel == 1) {
					trace("starting level 1");
					FP.world = new Level1World; }
				if (currentLevel == 2) {
					FP.world = new Level2World;
					Main.lives = 3; }
			break; case 1:
				FP.world = new TitleWorld;
			break; case 2:
				NativeApplication.nativeApplication.exit();
			break; }
		}
		override public function update():void {
			if (Input.pressed(Key.DOWN)) { if (selection < 2) { selection++; } }
			if (Input.pressed(Key.UP)) { if (selection > 0) { selection--; } }
			if (Input.pressed(Key.ENTER)) { submit(selection); }
			switch (selection) {
				case 0:
					cursorEntity.y = tryagainEntity.y + tryagainText.height / 2 - cursorImage.height / 2;
					cursorEntity.x = tryagainEntity.x - 10;
				break; case 1:
					cursorEntity.y = mainmenuEntity.y + mainmenuText.height / 2 - cursorImage.height / 2;
					cursorEntity.x = mainmenuEntity.x - 10;
				break;
			}
		}
	}
}