package {
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.Sfx;
	import net.flashpunk.World;
	
	public class PlayerEntity extends Entity {
		[Embed(source="assets/Player.png")] 	private const PLAYER:Class;
		[Embed(source="assets/jump.mp3")] 		private const JUMP:Class; //credit: http://soundbible.com/1601-Mario-Jumping.html
		[Embed(source="assets/deadplayer.png")] private const DEADPLAYER:Class
		private var 	rightspeed:int		= 0;
		private var 	leftspeed:int		= 0;
		private var 	speed:int			= 0;
		private var 	gravity:int			= 0;
		private var 	mingrav:int			= -15;
		private var 	alive:Boolean		= true;
		private var 	stopper:String		= "block";
		public var 		jump:Sfx			= new Sfx(JUMP);
		
		public function PlayerEntity(posX:int = 0, posY:int = 0) {
			graphic = new Image(PLAYER);
			y = posY * 50;
			x = posX * 50;
			setHitbox(50, 100);
			type = "player";
		}
		public function RespawnPlayer():void {
			y = FP.world.checkpointY;
			x = FP.world.checkpointX;
			Main.lives--;
			if (Main.lives == 0) { FP.world = new GameOverWorld; }
			alive = true;
			gravity = 0;
			/*var giantpugcall:GiantPugEntity = world.getInstance("giantpug") as GiantPugEntity;
			if (giantpugcall) {
				giantpugcall.PlayerDied(); }*/
		}
		
		override public function added():void {
			FP.world.checkpointX = x;
			FP.world.checkpointY = y;
			FP.camera.x = x - FP.halfWidth;
		}
		override public function update():void {
			//positive x speed logic
			if (Input.check(Key.RIGHT) || Input.check(Key.D) && alive) {
				if (rightspeed < 5) {
					rightspeed++; } }
			else {
				if (rightspeed > 0)	{
					rightspeed--; } }
			//negative x speed logic
			if (Input.check(Key.LEFT) || Input.check(Key.A) && alive) {
				if (leftspeed < 5) {
					leftspeed++; } }
			else if (leftspeed > 0) leftspeed--;
			//stop player if dead
			if (!alive) {
				leftspeed = 0;
				rightspeed = 0; }
			speed = rightspeed - leftspeed
			//Speed/horizontal movement logic
			var horicounter:int = speed;
			while (horicounter > 0) {
				if (!collide(stopper, x + 1, y)) { x++; FP.camera.x++; }
				horicounter--; }
			while (horicounter < 0) {
				if (!collide(stopper, x - 1, y)) { x--; FP.camera.x--; }
				horicounter++; }
			//jumping logic
			if ((Input.check(Key.UP) || Input.check(Key.SPACE) || Input.check(Key.W)) && collide("block", x, y + 1) && alive) {
				gravity = 20;
				jump.play(); }
			if (collide(stopper, x, y + 1)) {
				mingrav = 0;
			} else {
				mingrav = -20; }
			if (gravity > mingrav) {
				gravity -= 1; 
			} else if (gravity < mingrav) {
				while (gravity < mingrav) {
					gravity++; }
			}
			//gravity/vertical movement logic
			var vertcounter:int = gravity * -1;
			while (vertcounter > 0) {
				if (!collide(stopper, x, y + 1)) {y++;}
				vertcounter--; }
			while (vertcounter < 0) {
				if (!collide(stopper, x, y - 1)) {y--;}
				vertcounter++; }
			//crappy respawn logic
			if (y > 1000) {
				RespawnPlayer(); }
			//death by pug logic
			if (collide("pug", x, y)) { alive = false; }
			//bounce on pug
			if (collide("pug", x, y + 1) && alive) { gravity = 10; }
			//set camera x position
			FP.camera.x = x - FP.halfWidth;
			//Increase amount of lives by one. For "debugging" purposes only.
			if (Input.pressed(Key.L)) {
				Main.lives++; }
			//update Player graphic & movement updater
			if (alive) {
				graphic = new Image(PLAYER);
				type = "player";
				stopper = "block" }
			else {
				graphic = new Image(DEADPLAYER);
				type = "deadplayer";
				stopper = "none";}
		}
	}
}