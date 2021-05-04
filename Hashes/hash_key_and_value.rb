cars = {toyota: "camry", chevrolet: "aveo",
        ford: "F-150", kia: "soul"}

p cars.key?(:toyota)
p cars.key?("toyota")
p cars.key?(:tesla)
p cars.value?(true)
p cars.value?("soul")
p cars.value?("thunderbird")
