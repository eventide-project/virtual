module Virtual
  def self.activate(target_class=nil)
    target_class ||= Object

    return if target_class.ancestors.include?(Virtual::Macro)

    target_class.extend(Virtual::Macro)
  end

  module Assertions
    def activated?
      subject = Assertions.subject_class(self)

      ['virtual', 'pure_virtual', 'abstract'].each do |mthd|
        fail mthd unless subject.respond_to?(mthd)
      end
    end

    def self.subject_class(subject)
      if [Module, Class].include?(subject)
        return subject
      else
        return subject.class
      end
    end
  end
end
