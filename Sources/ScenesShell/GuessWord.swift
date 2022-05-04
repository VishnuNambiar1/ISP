import Igis
import Scenes

class Guess: RenderableEntity {

    //let ellipse = Ellipse(center:Point(x:0, y:0), radiusX:30, radiusY:30, fillMode:.fillAndStroke)
    //var rectangle : Rectangle
    //let strokeStyle = StrokeStyle(color:Color(.black))
    var fillStyle = FillStyle(color:Color(.red))
    let lineWidth = LineWidth(width:3)
    var rectX = 0
    var rectY = 0
    var text : Text
    var guess = ""
    var font = "80pt Calibri"
    var colorVal = "black"

    init() {
        //var rect = Rect(topLeft:Point(x:base, y:10), size:Size(width:300, height:(length)))
        //rectangle = Rectangle(rect:rect, fillMode:.fillAndStroke)
        text = Text(location:Point(x:50, y:50), text:"Hello, World!")
        // Using a meaningful name can be helpful for debugging
        super.init(name:"Guess")
    }

    override func render(canvas:Canvas) {
        
        //var rect = Rect(topLeft:Point(x:rectX, y:rectY), size:Size(width:50, height:50))
        //rectangle = Rectangle(rect:rect, fillMode:.fillAndStroke)
        if colorVal == "black" {
            fillStyle = FillStyle(color:Color(.black))
        }
        else if colorVal == "red" {
            fillStyle = FillStyle(color:Color(.red))
        }
        else if colorVal == "green" {
            fillStyle = FillStyle(color:Color(.green))
        }
        else {
            fillStyle = FillStyle(color:Color(.purple))
        }
        //let fillStyle = FillStyle(color:Color(.white))
        let lineWidth = LineWidth(width:3)
        //canvas.render(strokeStyle, fillStyle, lineWidth, rectangle)
        text = Text(location:Point(x:rectX, y:rectY), text:guess)
        text.font = font
        canvas.render(fillStyle, lineWidth, text)
        
        
    }

    func move(x: Int, y: Int, text: String, style: String, color: String) {
        rectX = x
        rectY = y
        guess = text
        font = style
        colorVal = color
    }
    
}
