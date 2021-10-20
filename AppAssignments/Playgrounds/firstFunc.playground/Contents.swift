


class Person{
    var favoriteColor: String
    
    init(favoriteColor: String) {
        self.favoriteColor = favoriteColor
    }
}

var jonasFavoriteColor = Person(favoriteColor: "Purple")
var yourMomsFavoriteColor = jonasFavoriteColor

print(jonasFavoriteColor.favoriteColor)
print(yourMomsFavoriteColor.favoriteColor)

jonasFavoriteColor.favoriteColor = "Pink"

print(yourMomsFavoriteColor.favoriteColor)




