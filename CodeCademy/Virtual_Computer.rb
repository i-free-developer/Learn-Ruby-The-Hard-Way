class Computer
  @@users = {}
  def initialize(username,password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "The file #{filename} has been created by #{@username} at #{time}"
  end
  def update(filename,updates)
    @files[filename] = updates
    puts "The file #{filename} has been updated by #{@username}"
  end
  def Computer.get_users
    return @@users
  end
end
my_computer = Computer.new("xiaohu","123456")
