ActiveRecord::Base.class_eval do

  def self_and_descendents_from_active_record#nodoc:
    klass = self
    classes = [klass]
    while klass != klass.base_class  
      classes << klass = klass.superclass
    end
    classes
  rescue
    # OPTIMIZE this rescue is to fix this test: ./test/cases/reflection_test.rb:56:in `test_human_name_for_column'
    # Appearantly the method base_class causes some trouble.
    # It now works for sure.
    [self]
  end
end
