class Task
  attr_reader :id, :title, :content

  @@count = 0
  def initialize(title:, content:)
    @@count += 1
    @id = @@count
    @title = title
    @content = content
  end

  def info
    print "[NO.#{@id}] #{@title}:#{@content}"
  end
end
