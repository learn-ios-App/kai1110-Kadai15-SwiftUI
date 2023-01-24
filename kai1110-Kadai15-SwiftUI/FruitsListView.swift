
import SwiftUI

struct FruitsListView: View {
    @State var fruit: FruitData
    var body: some View {
        HStack {
            Button(action: {
                fruit.isCheck.toggle()
            }) {
                Image(
                    systemName: fruit.isCheck
                    ? "checkmark.circle"
                    : "circle"
                )
            }
            Text(fruit.name)
        }
    }
}

struct FruitsListView_Previews: PreviewProvider {
    static var fruit = FruitData(name: "りんご", isCheck: false)
    static var previews: some View {
        FruitsListView(fruit: fruit)
    }
}
