import Foundation

// TODO: Define the Position struct
struct Position {
  var x: Int = 0
  var y: Int = 0

  mutating func moveTo(newX: Int, newY: Int) {
    x = newX
    y = newY
  }
}
// TODO: Define the Size struct
struct Size {
  var width: Int = 80
  var height: Int = 60

  mutating func resize(newWidth: Int, newHeight: Int) {
    width = newWidth
    height = newHeight
  }
}
// TODO: Define the Window class
class Window {
    var title: String = "New Window"
    var screenSize = Size(width: 800, height: 600)
    var size = Size()
    var position = Position()
    var contents: String?
    
    func resize(to size: Size) {
        let minWidth = max(size.width, 1)
        let minHeight = max(size.height, 1)
        
        let maxWidth = screenSize.width - position.x
        let maxHeight = screenSize.height - position.y
        
        let width = min(minWidth, maxWidth)
        let height = min(minHeight, maxHeight)
        
        self.size = Size(width: width, height: height)
    }
    
    func move(to position: Position) {
        let minX = max(position.x, 0)
        let minY = max(position.y, 0)
        
        let maxX = screenSize.width - size.width
        let maxY = screenSize.height - size.height
        
        let x = min(minX, maxX)
        let y = min(minY, maxY)
        
        self.position = Position(x: x, y: y)
    }
    
    func update(title: String) {
        self.title = title
    }
    
    func update(text: String?) {
        self.contents = text
    }
    
    func display() -> String {
        "\(title)\nPosition: (\(position.x), \(position.y)), Size: (\(size.width) x \(size.height))\n\(contents ?? "[This window intentionally left blank]")\n"
    }
}

var mainWindow: Window {
    var window = Window()
    window.update(title: "Main Window")
    window.resize(to: Size(width: 400, height: 300))
    window.move(to: Position(x: 100, y: 100))
    window.update(text: "This is the main window")
    return window
}
