def colorize(color_code, string)
  puts "\e[#{color_code}m#{string}\e[0m"
end

def red(string)
  red_color_code = 31
  colorize(red_color_code, string)
end

def green(string)
  green_color_code = 32
  colorize(green_color_code, string)
end

def check(method_to_check, it_passed)
  if it_passed
    green("Awesome! #{method_to_check} works")
  else
    red("#{method_to_check} doesn't work yet")
  end
end