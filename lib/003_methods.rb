# code you methods for the 003_method spec here
# Note: You will need to pass the school variable to each of these methods to include it in scope

def get_grade(s, name)
  s[:students].each {|s| return s[:grade] if s[:name] == name}
end

def update_subject(s, name, subj)
  s[:instructors].each { |i| i[:subject] = subj if i[:name] == name}
end

def add_new_student(s, name)
  s[:students].push({:name => name, :grade => ""})
end

def add_new_key(s, key, value)
  s[key] = value
end
