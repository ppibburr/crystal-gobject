module Gst
  class ValueList
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGst::ValueList*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGst::ValueList*)
    end

    def self.append_and_take_value(value, append_value)
      LibGst.value_list_append_and_take_value(value.to_unsafe.as(LibGObject::Value*), append_value.to_unsafe.as(LibGObject::Value*))
      nil
    end

    def self.append_value(value, append_value)
      LibGst.value_list_append_value(value.to_unsafe.as(LibGObject::Value*), append_value.to_unsafe.as(LibGObject::Value*))
      nil
    end

    def self.concat(dest, value1, value2)
      LibGst.value_list_concat(dest, value1.to_unsafe.as(LibGObject::Value*), value2.to_unsafe.as(LibGObject::Value*))
      nil
    end

    def self.size(value)
      __return_value = LibGst.value_list_get_size(value.to_unsafe.as(LibGObject::Value*))
      __return_value
    end

    def self.value(value, index)
      __return_value = LibGst.value_list_get_value(value.to_unsafe.as(LibGObject::Value*), UInt32.new(index))
      GObject::Value.new(__return_value)
    end

    def self.merge(dest, value1, value2)
      LibGst.value_list_merge(dest, value1.to_unsafe.as(LibGObject::Value*), value2.to_unsafe.as(LibGObject::Value*))
      nil
    end

    def self.prepend_value(value, prepend_value)
      LibGst.value_list_prepend_value(value.to_unsafe.as(LibGObject::Value*), prepend_value.to_unsafe.as(LibGObject::Value*))
      nil
    end

  end
end

