# superclass gives you the class inherited by the current class
#   Every class except BasicObject has at least one superclass
p 5.class
p 3.14.class
p 5.class.superclass
p 3.14.class.superclass
puts
p 5.class.superclass.superclass
p 5.class.superclass.superclass.superclass
p 5.class.superclass.superclass.superclass.superclass
puts
arr = [1, 2, 3]
p arr.class
p arr.class.superclass
p arr.class.superclass.superclass
puts
# we can also use the ancestors method to give us an array
p 5.class.ancestors
p 3.14.class.ancestors
p [1, 2, 3].class.ancestors
p Hash.new(0).class.ancestors
