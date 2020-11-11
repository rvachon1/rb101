def op_case(arr, num)
  op, int = arr
  case op
  when :*
    int * num
  when :+
    int + num
  when :-
    num - int
  when :/
    num / int
  end
end

def num_case(num, arr=nil)
  if arr.class == Array
    op_case(arr, num)
  else
    num
  end
end

def zero(arr=0)
  num_case(0, arr)
end
def one(arr=1)
  num_case(1, arr)
end
def two(arr=2)
  num_case(2, arr)
end
def three(arr=3)
  num_case(3, arr)
end
def four(arr=4)
  num_case(4, arr)
end
def five(arr=5)
  num_case(5, arr)
end
def six(arr=6)
  num_case(6, arr)
end
def seven(arr=7)
  num_case(7, arr)
end
def eight(arr=8)
  num_case(8, arr)
end
def nine(arr=9)
  num_case(9, arr)
end
def plus(num)
  [:+, num]
end
def minus(num)
  [:-, num] 
end
def times(num)
  [:*, num]
end
def divided_by(num)
  [:/, num]
end

p seven(times(five)) # must return 35
p four(plus(nine)) # must return 13
p eight(minus(three)) # must return 5
p six(divided_by(two)) # must return 3