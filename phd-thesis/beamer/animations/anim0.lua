.. module:: graph

-- define the function
function f(x) return math.sin(x) * x^2 end

-- create a plot of f(x) for x going from 0 to 25
p = graph.plot("y = sin(x) * x^2")
line = graph.fxline(f, 0, 25)
p:addline(line, "red")
p:show()




