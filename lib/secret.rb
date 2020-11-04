class SecretDiary

  attr_accessor :diary
  attr_reader :locked, :entry

  def initialize(locked = true)
    @diary = []
    @entry = entry
    @locked = locked
  end

  def locked?
    @locked
  end

  def unlock
    @locked = false
  end

  def lock
    @locked = true
  end

  def add_entry(entry)
    raise "Secret Diary is locked!" if @locked
    @diary << entry
  end

  def get_entries
    raise "Secret Diary is locked!" if @locked
    @diary

  end

end
