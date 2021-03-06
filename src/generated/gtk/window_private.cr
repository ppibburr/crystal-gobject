module Gtk
  class WindowPrivate
    include GObject::WrappedType

    @pointer : Void*
    def initialize(pointer : LibGtk::WindowPrivate*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::WindowPrivate*)
    end

  end
end

