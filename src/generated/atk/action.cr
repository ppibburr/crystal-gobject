module Atk
  module Action
    def do_action(i)
      __return_value = LibAtk.action_do_action(@pointer.as(LibAtk::Action*), Int32.new(i))
      __return_value
    end

    def description(i)
      __return_value = LibAtk.action_get_description(@pointer.as(LibAtk::Action*), Int32.new(i))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def keybinding(i)
      __return_value = LibAtk.action_get_keybinding(@pointer.as(LibAtk::Action*), Int32.new(i))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def localized_name(i)
      __return_value = LibAtk.action_get_localized_name(@pointer.as(LibAtk::Action*), Int32.new(i))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def n_actions
      __return_value = LibAtk.action_get_n_actions(@pointer.as(LibAtk::Action*))
      __return_value
    end

    def name(i)
      __return_value = LibAtk.action_get_name(@pointer.as(LibAtk::Action*), Int32.new(i))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value)) if __return_value
    end

    def set_description(i, desc)
      __return_value = LibAtk.action_set_description(@pointer.as(LibAtk::Action*), Int32.new(i), desc.to_unsafe)
      __return_value
    end

  end
end

