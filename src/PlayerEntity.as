package
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image
	import net.flashpunk.FP
	import net.flashpunk.utils.Input
	import net.flashpunk.utils.Key
	import net.flashpunk.Sfx
	
	public class PlayerEntity extends Entity
	{
		[Embed(source="assets/Player.png")]
		private const PLAYER:Class;
		[Embed(source="assets/jump.mp3")]
		private const JUMP:Class; //credit: http://soundbible.com/1601-Mario-Jumping.html
		[Embed(source="assets/deadplayer.png")]
		private const DEADPLAYER:Class
		private var rightspeed:int = 0;
		private var leftspeed:int = 0;
		public static var PlayerGravity:int = 0;
		private var momentum:int = 0;
		private var alive:Boolean = true;
		public var jump:Sfx = new Sfx(JUMP);
		public static var playerX:int = 0;
		public static var PlayerY:int = 0;
		public static var lives:int = 3;
		public static var checkpointX:int = 50;
		public static var checkpointY:int = 400;
		
		public function PlayerEntity()
		{
			graphic = new Image(PLAYER);
			y = 400;
			x = 50;
			setHitbox(50, 100)
			type = "player"
		}
		
		override public function added():void
		{
			checkpointX = 50;
			checkpointY = 400;
		}
		
		override public function update():void
		{
			FP.camera.x = x - 400;
			x = x + rightspeed;
			x = x - leftspeed;
			playerX = x;
			PlayerY = y;
			//positive x movement logic
			if (Input.check(Key.RIGHT))
			{
				rightspeed++;
				while (rightspeed > 5)
				{
					rightspeed = 5;
				}
			}
			else
			{
				if (rightspeed > 0)
				{
					rightspeed--;
				}
			}
			
			//negative x movement logic
			if (Input.check(Key.LEFT))
			{
				leftspeed++;
				while (leftspeed > 5)
				{
					leftspeed = 5;
				}
			}
			else
			{
				if (leftspeed > 0)
				{
					leftspeed--;
				}
			}
			
			//stop player if dead
			if (alive == false)
			{
				leftspeed = 0;
				rightspeed = 0;
			}
			
			//gravity, vertical collision and jumping logic
			y = y - PlayerGravity;
			if ((Input.pressed(Key.UP) || Input.pressed(Key.SPACE)) && collide("block", x, y + 5) && (alive == true))
			{
				PlayerGravity = PlayerGravity + 20;
				y = y - 10;
				jump.play();
			}
			if (PlayerGravity > -10)
			{
				PlayerGravity--;
			}
			if (collide("block", x, y + 5) && (alive == true))
			{
				PlayerGravity = 0;
			}
			
			//left side block collision
			if (collide("block", x - 5, y - 5))
			{
				leftspeed = 0;
			}
			//right side block collision
			if (collide("block", x + 5, y - 5))
			{
				rightspeed = 0;
			}
			//inside block stopper
			if (collide("block", x, y - 5))
			{
				alive = false;
			}
			//death-by-fall logic
			if (y > 1000)
			{
				y = checkpointY;
				x = checkpointX;
				lives--
				alive = true;
				PlayerGravity = 0;
			}
			
			//death by pug logic
			if (collide("pug", x - 10, y))
			{
				
				alive = false
			}
			
			//game over logic
			if (lives == 0)
			{
				trace("Game over")
				FP.world = new GameOverWorld
			}
			if (Input.pressed(Key.L))
			{
				lives++;
			}
			
			//sprite updater
			if (alive == true)
			{
				graphic = new Image(PLAYER);
				type = "player"
			}
			else
			{
				graphic = new Image(DEADPLAYER);
				type = "deadplayer"
			}
		}
	}
}