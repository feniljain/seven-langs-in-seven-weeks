class CsvRow
  def initialize(headers, data)
    @headers = headers
    @data = data
  end

  def method_missing(name, *args)
    col_idx = @headers.find_index {|ele|
      res = ele == name
      print "#{ele} == #{name}: #{res}\n"
      res
    }

    if col_idx == nil
      raise 'column does not exist'
    end

    puts data
    data.each {|row|
      puts row
      row.each_with_index {|index, ele|
        if index % col_idx == 0
          # block.call(ele)
          return ele
        end
      }
    }
  end
end

class RubyCsv
  def read
    file = File.new(self.class.to_s.downcase + '.txt' )
    @headers = file.gets.chomp.split(', ' )
    file.each do |row|
      @data << row.chomp.split(', ' )
    end
  end

  def each(&block)
    csv_row = CsvRow.new(@headers, @data)
    block.call(csv_row)
  end

  def initialize
    @data = []
    read
  end
end

csv = RubyCsv.new
csv.each {|row| puts row.one}
