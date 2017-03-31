package {
	import flash.external.ExternalInterface;
	import flash.display.Sprite;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.Font;
	import flash.events.Event;
	[SWF(width="640", height="480", frameRate="30")]

	public class Fontlist extends Sprite {
		public static function main():void {
			if (ExternalInterface.available) {
	            ExternalInterface.call("console.log", "hello mxmlc");
	        }
		}

		public function Fontlist() {
			if (ExternalInterface.available) {
				ExternalInterface.call("fonts", Font.enumerateFonts(true));
			}
		}
	}
}