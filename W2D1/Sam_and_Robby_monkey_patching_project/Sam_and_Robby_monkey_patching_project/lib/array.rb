# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    return nil if self.length < 1
    self.max - self.min
  end

  def average
    return nil if self.length < 1
    (self.sum.to_f / self.length.to_f)
  end

  def median
    return nil if self.length < 1
    new_arr = self.sort
    if new_arr.length.even?
       tem =  new_arr[new_arr.length / 2] + new_arr[(new_arr.length / 2) - 1]
        return tem / 2.0
    else 
        return new_arr[(new_arr.length / 2) ]
    end
  end


  def counts
    new_hash = Hash.new(0)
    self.each do |ele|
        new_hash[ele] += 1
    end
    new_hash
  end

  def my_count(arg)
    count = 0
    self.each do |ele|
        if ele == arg 
            count += 1
        end
    end
    count 
  end

  def my_index(arg)
    self.each_with_index do |ele, i|
        if arg == ele
            return i
        end
    end
    nil
  end

  def my_uniq
    new_arr = [] 
    self.each do |ele|
        if !new_arr.include?(ele)
            new_arr << ele
        end
    end
    new_arr
  end

  def my_transpose
    dom =  self.length
    answer = Array.new(dom){Array.new(dom)}
    self.each_with_index do |ele, i|    
        ele.each_with_index do |n, j|
            answer[j][i] = self[i][j]
        end
    end
    answer 
  end
# i j [i][j] => [j][i]
  # [[1,2,3]            [[1,4,7]
  # [4,5,6]       =>    [2,5,8]
  # [7,8,9]]            [3,6,9]]
end
