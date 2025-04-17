# blockchain.rb

# Les deux tableaux fournis
currencies = [
  "Bitcoin", "Ethereum", "Litecoin", "Ripple", "Dogecoin",
  "Cardano", "Polkadot", "Solana", "Chainlink", "Stellar"
]

prices = [
  64852.23, 3221.75, 198.24, 1.23, 0.325,
  1.02, 6.75, 21.89, 7.23, 0.11
]

# 1. On crée le hash crypto => prix
crypto_hash = {}
currencies.each_with_index do |name, index|
  crypto_hash[name] = prices[index]
end

puts "\n📊 Hash des cryptomonnaies :"
puts crypto_hash

# 2. Afficher les cryptos dont le prix > 1000€
puts "\n💸 Cryptos avec un prix supérieur à 1000€ :"
crypto_hash.each do |name, price|
  puts "#{name} => #{price}€" if price > 1000
end

# 3. Trier les cryptos par prix croissant
puts "\n🔽 Cryptos triées par prix croissant :"
crypto_hash.sort_by { |_, price| price }.each do |name, price|
  puts "#{name} => #{price}€"
end

# 4. Trier les cryptos par prix décroissant
puts "\n🔼 Cryptos triées par prix décroissant :"
crypto_hash.sort_by { |_, price| -price }.each do |name, price|
  puts "#{name} => #{price}€"
end

# 5. Afficher la crypto la plus chère
most_expensive = crypto_hash.max_by { |_, price| price }
puts "\n💰 Crypto la plus chère : #{most_expensive[0]} => #{most_expensive[1]}€"

# 6. Afficher la crypto la moins chère
least_expensive = crypto_hash.min_by { |_, price| price }
puts "\n🪙 Crypto la moins chère : #{least_expensive[0]} => #{least_expensive[1]}€"
