
import SwiftUI

struct FruitsListItemView: View {
    @Binding var fruit: FruitData
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

private struct Preview: View {
    @State var fruit = FruitData(name: "apple", isCheck: false)

    var body: some View {
        FruitsListItemView(fruit: $fruit)
    }
}

struct FruitsListView_Previews: PreviewProvider {
    static var previews: some View {
        Preview()
    }
}
