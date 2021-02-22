module ActiveModel
  class Error

    class << self
      alias :orig_full_message :full_message
    end

    def self.full_message(attribute, message, base)
      txt = orig_full_message(attribute, message, base)

      if message.start_with?('^')
        splits = txt.split("^")
        splits.shift
        txt = splits.join("^")
      end

      txt
    end

  end
end
