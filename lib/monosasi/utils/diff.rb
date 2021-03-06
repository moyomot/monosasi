class Monosasi::Utils
  module Diff
    def diff(obj1, obj2, options = {})
      diffy = Diffy::Diff.new(
        obj1.pretty_inspect,
        obj2.pretty_inspect,
        :diff => '-u'
      )

      diffy.to_s(options[:color] ? :color : :text).gsub(/\s+\z/m, '')
    end
    module_function :diff
  end
end
