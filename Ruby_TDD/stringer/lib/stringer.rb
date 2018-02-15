# require "stringer/version"

module Stringer
  def self.spacify *strings
    string = ""
    strings.each_with_index do |str, index|
      index == 0 ? string += str : string += " #{str}"
    end
    string
  end

  def self.minify string, max_length
      string.length > max_length ? "#{string[0...max_length]}..." : string
  end

  def self.replacify original, to_be_replaced, replacement
    original.gsub! to_be_replaced, replacement
  end

  def self.tokenize sentence
    sentence.split(" ")
  end

  def self.removify sentence, remove
    sentence.slice!("#{remove} ")
    sentence
  end
end
