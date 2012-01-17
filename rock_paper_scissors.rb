def verbose_play(m)
  p = -> s { s.sub(?R,'Rock').sub(?P,'Paper').sub(?S,'Scissors').sub(?W,'Win').sub(?L,'Lose').sub(?D,'Draw') }
  m = %{Rock Paper Scissors}.include?(m)? m.gsub(/[a-z]/,'') : ?X

  h = {?R => {?R => ?D, ?P => ?L, ?S => ?W},
    ?P => {?R => ?W, ?P => ?D, ?S => ?L},
    ?S => {?R => ?L, ?P => ?W, ?S => ?D}}
  c = %w{R P S}[rand 3]
  m == ?X ? p.call(c + ',L') : p.call(c + ?, + h[m][c])
end

def play(m)
  p = -> s { s.sub(?R,'Rock').sub(?P,'Paper').sub(?S,'Scissors').sub(?W,'Win').sub(?L,'Lose').sub(?D,'Draw') }
  m = %{Rock Paper Scissors}.include?(m)? m.gsub(/[a-z]/,'') : ?X

  h = {?R => {?R => ?D, ?P => ?L, ?S => ?W},
    ?P => {?R => ?W, ?P => ?D, ?S => ?L},
    ?S => {?R => ?L, ?P => ?W, ?S => ?D}}
  c = %w{R P S}[rand 3]
  m == ?X ? p.call(c + ',L') : p.call(c + ?, + h[m][c])
end

p play("Rock")
p play("Paper")
p play("Scissors")
p play("Soap")
p play("Doap")
p play("asdf")
