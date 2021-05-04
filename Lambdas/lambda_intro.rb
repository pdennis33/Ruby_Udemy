squares_lambda = lambda { |num| num ** 2 }
squares_proc = Proc.new { |num| num ** 2 }

p [1, 2, 3].map(&squares_proc)
p squares_proc.call(5)
puts
p [1, 2, 3].map(&squares_lambda)
p squares_lambda.call(5)
puts

# lambdas care about unexpected ars where procs assign them nil
some_proc = Proc.new { |name, age| "Your name is #{name} and your age is #{age}" }
p some_proc.call("Paul", 38)
p some_proc.call("Paul")
p some_proc.call
some_lambda = lambda { |name, age| "Your name is #{name} and your age is #{age}" }
p some_lambda.call("Paul", 38)
#p some_lambda.call("Paul")
puts

# lambdas give back control to the method when you use the return keyword in them,
#     whereas procs do not
def diet
  status = lambda { return "You gave in" }
  status.call
  "You completed the diet!"
end
p diet

def diet_fail
  status = Proc.new { return "You gave in" }
  status.call
  "You completed the diet!"
end
p diet_fail
