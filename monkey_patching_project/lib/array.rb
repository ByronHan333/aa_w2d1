# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    return nil if self.length == 0
    self.max - self.min
  end

  def average
    return nil if self.length == 0
    1.0*self.sum/self.length
  end

  def median
    return nil if self.length == 0
    arr = self.sort
    if arr.length.even?
      return (arr[arr.length/2 - 1] + arr[arr.length/2])/2.0
    else
      return arr[arr.length/2]
    end
  end

  def counts
    h = Hash.new(0)
    self.each{|e| h[e]+=1}
    h
  end

  def my_count(s)
    c = 0
    self.each{|e| c+=1 if e==s}
    c
  end

  def my_index(t)
    self.each_with_index{|e, i| return i if e==t}
    nil
  end

  def my_uniq
    arr = []
    self.each{|e| arr<<e if !arr.include?(e)}
    arr
  end

  def my_transpose
    n_r = self.length
    n_c = self[0].length
    arr = Array.new(n_r){Array.new(n_c)}
    (0...n_r).each do |r|
      (0...n_c).each do |c|
        arr[r][c] = self[c][r]
      end
    end
    arr
  end
end
