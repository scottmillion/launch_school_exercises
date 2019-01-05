def minilang(string)
  register = 0
  stack = []
  command = {
    PUSH:  lambda { stack.push(register) },
    ADD:   lambda { register += stack.pop },
    SUB:   lambda { register -= stack.pop },
    MULT:  lambda { register *= stack.pop },
    DIV:   lambda { register /= stack.pop },
    MOD:   lambda { register %= stack.pop },
    POP:   lambda { register = stack.pop },
    PRINT: lambda { print(register, "\n") }
  }
  
  string_array = string.split
  string_array.each do |elem|
    command[elem.to_sym] ? command[elem.to_sym].call : \
    register = elem.to_i
  end
end




minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8



minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8


minilang('6 PUSH')
# (nothing printed; no PRINT commands)


minilang('-15 PUSH 5 SUB PRINT')
# 20

