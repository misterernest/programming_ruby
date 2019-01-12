# fibbonaci
## el parallel assignment puede revisarlo en el capitulo 9,2
def fibbonaci_up_to(max)
  i1, i2 = 0, 1 #parallel assignment (i1 = 1,i2 = 2)
  while i1 <= max
    yield i1
    i1, i2 = i2, i1 + i2
  end
end

fibbonaci_up_to(1000) {|f| print f, '--'}
# => 0--1--1--2--3--5--8--13--21--34--55--89--144--233--377--610--987--=> nil
