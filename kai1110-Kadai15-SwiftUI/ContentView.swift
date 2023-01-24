
import SwiftUI

struct ContentView: View {
    @State var Fruits: [FruitData] = [
        FruitData(name: "リンゴ", isCheck: false),
        FruitData(name: "ミカン", isCheck: true),
        FruitData(name: "パイナップル", isCheck: false),
        FruitData(name: "バナナ", isCheck: true)
    ]
    @State var isAddView = false
    
    var body: some View {
        NavigationStack {
            List(Fruits) { fruit in
                FruitsListView(fruit: fruit)
            }
            .listStyle(InsetListStyle())
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        isAddView = true
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
        .sheet(isPresented: $isAddView) {
            AddFruitView(
                save: { name in
                    Fruits.append(FruitData(name: name, isCheck: false))
                    isAddView = false
                },
                cancel: {
                    isAddView = false
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
