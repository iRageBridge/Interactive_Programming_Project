package  {
	import flash.display.MovieClip;
	public class Simon_Standbridge_Interactive_Programming_Project {
		public function Simon_Standbridge_Interactive_Programming_Project() {
			// constructor code
			import flash.events.KeyboardEvent;
			var alexandro:AlexandroAnimation=new AlexandroAnimation();//Initialises Side View
			var alexandroFront:AlexandroFront=new AlexandroFront();//Initialises Front View
			addChild(alexandroFront);
			alexandroFront.y=181.35;
			stage.addEventListener(KeyboardEvent.KEY_DOWN, addChar);
			function addChar(event:KeyboardEvent):void{//Removes fronf view, and adds side view when right arrow is pressed
				if(event.keyCode==39){
					removeChild(alexandroFront);
					addChild(alexandro);
				}//end if
			}//end function
			stage.addEventListener(KeyboardEvent.KEY_DOWN, start_parralax);
			function start_parralax(event:KeyboardEvent):void{//Moves background in parallax when right key is pressed
				if(event.keyCode==37){
					foreground.x+=20;
					mountains.x+=2;
					road.x+=5;
					tumbleweeds.x+=25;		
				}//end if
				if(event.keyCode==39){
					alexandro.y=181.35;
					foreground.x-=20;
					mountains.x-=2;
					road.x-=5;
					tumbleweeds.x-=25;
				}//end if
			}//end function
			stage.addEventListener(KeyboardEvent.KEY_DOWN, alexandro_jumpHandler)
			function alexandro_jumpHandler(event:KeyboardEvent):void{//Makes Character jump when up arrow is pressed
				if(event.keyCode==38){
					alexandro.y-=20;
					alexandro.y+=20;
				}//end if
				if(event.keyCode==40){
					alexandro.y=181.35;
				}//end if
			}//end function
		}
	}//end class
}
