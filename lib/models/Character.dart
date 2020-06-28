import 'package:flutter/material.dart';

class Character {
  final String name;
  final String image;
  final String description;
  final List<Color> colors;

  Character({@required this.name, @required this.image, @required this.description, @required this.colors});
}

List characters = [
  Character(
    name: "Kakashi Hatake",
    image: "https://i.skyrock.net/4116/88964116/pics/3178536747_1_2_wHP218L4.png",
    description: "Kakashi has an ongoing, albeit slightly one-sided, rivalry with Might Guy, with Guy constantly proclaiming that Kakashi is his rival, and considering his and Kakashi's subordinates rivals. Kakashi, however, seems indifferent to their rivalry, which annoys Guy to no end. Guy randomly challenges Kakashi to contests of skill, and Kakashi has acquired a record of 49 wins and 50 losses in doing so. Given that the contests that make up this figure are so varied (ranging from Rock, Paper, Scissors to sumo-wrestling), this is not much of an achievement on Guy's part. Nevertheless, Guy is proud of his record.",
    colors: [Color(0xFFE5D8F6), Color(0xFF281743)]
  ),
  Character(
    name: "Sasuke Uchiha",
    image: "https://i.pinimg.com/originals/80/39/fb/8039fb0d297750f9121e7c776db86aec.png",
    description: "When Sasuke was young, his clan was murdered by his older brother, Itachi. With his parents and family now gone, his brother spared him and left him to survive by himself. He told Sasuke to hate him. Sasuke tried to forget about the past by applying himself in the ninja academy and fitting in with the rest of the leaf village.",
    colors: [Color(0xFF5BC6F4), Color(0xFF830511)]
  ),
  Character(
    name: "Naruto Uzumaki",
    image: "https://pluspng.com/img-png/png-naruto-imagem-naruto-uzumaki-renderizacao-png-wiki-naruto-fandom-powered-by-wikia-624.png",
    description: "Born in Konohagakure, a ninja village hidden in the leaves, Naruto Uzumaki was destined for greatness. When born, a powerful nine-tailed demon fox attacked his village. With a wave of its tail, the demon fox could raise tsunamis and shatter mountains. In a valiant attempt to save the village from destruction, the Fourth Hokage, the leader of the Hidden Leaf Village, sealed the demon fox within Naruto's newborn body. This was his final act, for the battle with the fox cost him his life.",
    colors: [Color(0xFFF8F93B), Color(0xFFF99932)]
  ),
  Character(
    name: "Gon Freecss",
    image: "https://vignette.wikia.nocookie.net/hunterxhunter/images/0/02/Gon_1999.png/revision/latest/scale-to-width-down/340?cb=20130407191141&path-prefix=ar",
    description: "Gon is the son of Ging Freecss, a legendary hunter whose current whereabouts are unknown. He never knew his father was alive, much less a hunter until he met Kite; a hunter who was also looking for Ging. From this point on, he became determined to find his father and decided to take the Hunter exam to do so. He became friends with Killua almost instantly when they met at the Hunter exam.",
    colors: [Color(0xFF009540), Color(0xFFE1511C)]
  )
];