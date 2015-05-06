module Virtual
  def self.activate(target_class=nil)
    target_class ||= Object

    return if target_class.ancestors.include? Virtual::Macro

    target_class.extend Virtual::Macro
  end
end
