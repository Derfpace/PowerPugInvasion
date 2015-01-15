package {
	import net.flashpunk.Entity
	import net.flashpunk.FP;
	import net.flashpunk.World
	import net.flashpunk.graphics.Text
	
	public class WinWorld extends World {
		private var winnerText:Text = new Text("Level completed!\nYour time was:");
		private var WinnerEnity:Entity = new Entity(FP.width / 2 - winnerText.width, FP.height / 5, winnerText);
		private var timeText:Text = new Text(String(FP.world.minutes) + " minutes and " + String(FP.world.seconds) + " seconds.");
		private var TimeEntity:Entity = new Entity(FP.width / 2 - timeText.width / 2, FP.height / 3, timeText);
		public function WinWorld() {
			winnerText.size *= 2;
			winnerText.align = "center"
			add(WinnerEnity);
			add(TimeEntity);
			add(new TryAgainEntity); 
		}
	}	
}