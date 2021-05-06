class Hash
  def identify_duplicate_values
    result = []
    self.values.uniq.each { |val| result << val if self.values.count(val) > 1 }
    result
  end

  def identify_dup_values
    self.values.select { |val| self.values.count(val) > 1 }.uniq
  end
end

test = {
  paul: "cool",
  lena: "pretty",
  bear: "awesome",
  simba: "awesome",
  justin: "legend",
  urlacher: "legend",
  butkus: "legend"
}
p test.identify_duplicate_values
p test.identify_dup_values

scores = {a: 100, b: 100, c: 83, d: 50, e: 13,
          f: 6, g: 100, h: 13, i: 55, j: 80}
p scores.identify_duplicate_values
p scores.identify_dup_values
puts

class Fixnum
  def seconds
    self
  end

  def minutes
    self * 60
  end

  def hours
    self.minutes * 60
  end

  def days
    self.hours * 24
  end

  def custom_times
    i = 1
    until i > self
      yield(i)
      i += 1
    end
  end
end

now = Time.now
puts now
puts now + 45.minutes
puts now + 4.hours
puts now + 10.days
puts 7.days
puts
5.times { |i| p i }
puts
5.custom_times { |i| p i }
