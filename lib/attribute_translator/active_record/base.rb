module ActiveRecord
  class Base
    def self.translates(*attributes)
      attributes.each do |attribute|
        define_method attribute do
          value = send("#{attribute}_before_type_cast")
          begin
            I18n.t(value, :scope => "activerecord.values.#{self.class.name.underscore}.#{attribute}")
          rescue
            value
          end
        end
      end
    end
  end
end
