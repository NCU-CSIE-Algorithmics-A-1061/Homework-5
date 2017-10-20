probabilities = [0] + [5] * 2 + [0] + [5] * 2 + [0, 5, 4, 1, 5, 0] + [5] * 2 + [0, 3] + [5] * 2 + [1, 2]
draw_box = [] of Int32
winners = [] of Int32

probabilities.each_with_index do |p, i|
  draw_box += [i + 1] * p
end

7.times do
  winner = draw_box.sample
  draw_box.delete winner
  winners << winner
end

p winners
