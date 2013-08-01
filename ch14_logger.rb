$logger_depth = 0

def logger desc, &block
  prefix = '  ' * $logger_depth

  puts prefix + "Starting #{desc.inspect}..."

  $logger_depth += 1
  block.call
  $logger_depth -= 1

  puts prefix + "Excellent. #{desc.inspect} is finished."
end

logger "the first block" do
  logger "the square of one" do
    puts "One what?"
  end
  logger "the square of two" do
    puts "with one stone"
  end
end