# frozen_string_literal: true

module ActiveRecord
  class Error

protected

    def generate_full_message(options = {})
      keys = [
        "full_messages.#{@message}""full_messages.#{@message}",
        'full_messages.format''full_messages.format'
      ]

      if message.start_with?('^')
        keys.push('{{message}}')

        options.merge!(default: message[1..])
      else
        keys.push('%{attribute} %{message}')

        options.merge!(default: keys, message: message)
      end

      I18n.translate(keys.shift, **options)
    end
  end
end