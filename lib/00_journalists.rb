# lib/00_journalists.rb

journalists = [
  "@jcunniet", "@PaulLampon", "@Aziliz31", "@ssoumier", "@marionsouzeau", "@gaellombart", "@bendarag", "@AurelieLebelle",
  "@julienduffe", "@thomaspoupeau", "@LilyRossignol", "@ClairGuedon", "@stephanieauguy", "@claw_prolongeau",
  "@_JulieMenard", "@LColcomb", "@Zlauwereys", "@MeLonguet", "@DorotheeLN", "@NolwennCosson", "@ADaboval", "@Remibaldy",
  "@bderveaux", "@amandechap", "@ELODIESOULIE", "@nbongarcon", "@HeloAb", "@Panamorama", "@gregplou", "@BenoitBerthe",
  "@LauraBruneau89", "@Anthony_Lieures", "@Sharonwaj", "@mcsonkin", "@pverduzier", "@emiliel3", "@Julien_MARION",
  "@SophiFay", "@bdelombre", "@annalecerf", "@AdriaBudry", "@DejNikolic", "@iJaffre", "@CyrusleVirus", "@GPardigon",
  "@e_vallerey", "@IsabelleSouquet", "@AudeDavidRossi", "@Yoann_Pa", "@CeliaPenavaire", "@epenser"
]

def menu
  puts "\nBienvenue dans le menu Big Data des journalistes 🧠"
  puts "\nQue veux-tu savoir ?"
  puts "1 - Nombre de journalistes"
  puts "2 - Nombre d'handles contenant un chiffre"
  puts "3 - Nombre d'handles contenant 'aude' (peu importe la casse)"
  puts "4 - Nombre d'handles commençant par une majuscule"
  puts "5 - Nombre d'handles contenant au moins une majuscule"
  puts "6 - Nombre total de underscores"
  puts "7 - Liste des handles triés alphabétiquement"
  puts "8 - Les 50 handles les plus courts"
  puts "9 - Position de @epenser"
  puts "0 - Quitter le programme"
  print "\n👉 Ton choix : "
end

loop do
  menu
  choice = gets.chomp.to_i

  case choice
  when 1
    puts "\n👥 Il y a #{journalists.size} journalistes."
  when 2
    puts "\n🔢 Il y a #{journalists.count { |h| h =~ /\d/ }} handles avec un chiffre."
  when 3
    puts "\n🧙‍♂️ Il y a #{journalists.count { |h| h.downcase.include?("aude") }} handles contenant 'aude'."
  when 4
    puts "\n🔠 Il y a #{journalists.count { |h| h[1] =~ /[A-Z]/ }} handles qui commencent par une majuscule."
  when 5
    puts "\n🅰️ Il y a #{journalists.count { |h| h =~ /[A-Z]/ }} handles contenant au moins une majuscule."
  when 6
    puts "\n➖ Il y a #{journalists.join.count("_")} underscores en tout."
  when 7
    puts "\n📚 Handles triés par ordre alphabétique :"
    puts journalists.sort
  when 8
    puts "\n✂️ Les 50 handles les plus courts sont :"
    puts journalists.sort_by(&:length).first(50)
  when 9
    index = journalists.find_index("@epenser")
    if index
      puts "\n🔍 @epenser est à la position #{index} dans le tableau."
    else
      puts "\n😢 @epenser n'est pas dans la liste."
    end
  when 0
    puts "\n👋 À bientôt, futur data scientist !"
    break
  else
    puts "\n❌ Choix invalide, réessaie."
  end
end
