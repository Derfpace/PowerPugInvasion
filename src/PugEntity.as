package {
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.Sfx;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.FP;
	import PlayerEntity;
	public class PugEntity extends Entity {
		[Embed(source = "assets/powerpug.png")] private const POWERPUG:Class
		[Embed(source="assets/invertedpowerpug.png")] private const INVERTEDPUG:Class
		[Embed(source="assets/dog.mp3")] private const HOWL:Class
		private var gravity:int = 0;
		private var gravcounter:int = 0;
		private var xpos:int = 0;
		private var ypos:int = 0;
		private var movingright:Boolean = false;
		private var time:Number = 0;
		public var Howl:Sfx = new Sfx(HOWL);
		public function PugEntity(xpos:int, ypos:int) {
			graphic = new Image(INVERTEDPUG);
			setHitbox(200, 100);
			x = xpos * 50;
			y = ypos * 50;
			type = "pug";
		}
		override public function update():void {
			//death logic
			if (collide("fist", x, y)) {
				type = "deadpug" }
			if (collide("player", x, y - 1)) {
				Howl.play();
				type = "deadpug" }
			//gravity logic
			if (gravity > -10) { gravity--; }
			if (collide("block", x, y - 5) && type == "pug") { gravity = 0; }
			gravcounter = gravity;
			for (gravcounter; gravcounter > 0; gravcounter--) {	
				if (type == "pug") {
					if (!collide("block", x, y)) { y-- } }
				else {
					y--; } }
			if (collide("block", x, y - 5) && type == "pug") { gravity = 0; }
			gravcounter = gravity;
			for (gravcounter; gravcounter < 0; gravcounter++) {
				if (type == "pug") {
					if (!collide("block", x, y)) { y++ } }
				if (type == "deadpug") {
					y++; } }
			//vertical collision logic
			if (collide("block", x, y - 5) && type == "pug") {
				gravity = 0; }
			//movement logic
			time += FP.elapsed;
			if (time >= 1) {
				time = 0;
				if (movingright == false) {
					movingright = true;
					graphic = new Image(POWERPUG); }
				else {
					movingright = false;
					graphic = new Image(INVERTEDPUG); } }
			if (movingright == true) {
				x += 2
				if (!collide("block",x, y + 1)) {x -= 2}}
			else {
				x -= 2
				if (!collide("block",x, y + 1)) {x += 2} } } } }