module Gtk
  class SettingsValue
    include GObject::WrappedType

    def self.new(origin : String|Nil = nil, value : GObject::Value|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(32, 0u8)
      new(ptr.as(LibGtk::SettingsValue*)).tap do |object|
        object.origin = origin unless origin.nil?
        object.value = value unless value.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGtk::SettingsValue*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::SettingsValue*)
    end

    def origin
      (raise "Expected string but got null" unless (to_unsafe.as(LibGtk::SettingsValue*).value.origin); ::String.new((to_unsafe.as(LibGtk::SettingsValue*).value.origin)))
    end

    def origin=(value : String)
      to_unsafe.as(LibGtk::SettingsValue*).value.origin = value.to_unsafe
    end

    def value
      GObject::Value.new((to_unsafe.as(LibGtk::SettingsValue*).value.value))
    end

    def value=(value : GObject::Value)
      to_unsafe.as(LibGtk::SettingsValue*).value.value = value
    end

  end
end

