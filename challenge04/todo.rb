class ToDo
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
    puts "【追加】 [No.#{task.id}] #{task.title}:#{task.content}"
  end

  def delete(id:)
    @tasks.delete_if { |task| task.id == id }
  end

  def info
    if @tasks.empty?
      puts '【！】 タスクはありません。'
    else
      puts '*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*'
      @tasks.each do |task|
        puts "[No.#{task.id}] #{task.title}:#{task.content}"
      end
      puts '*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*'
    end
  end
end
