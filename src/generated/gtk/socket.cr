require "./container"

module Gtk
  class Socket < Container
    @pointer : Void*
    def initialize(pointer : LibGtk::Socket*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::Socket*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    def self.new : self
      __return_value = LibGtk.socket_new
      cast Gtk::Widget.new(__return_value)
    end

    def add_id(window)
      LibGtk.socket_add_id(@pointer.as(LibGtk::Socket*), UInt64.new(window))
      nil
    end

    def id
      __return_value = LibGtk.socket_get_id(@pointer.as(LibGtk::Socket*))
      __return_value
    end

    def plug_window
      __return_value = LibGtk.socket_get_plug_window(@pointer.as(LibGtk::Socket*))
      Gdk::Window.new(__return_value) if __return_value
    end

    alias PlugAddedSignal = Socket ->
    def on_plug_added(&__block : PlugAddedSignal)
      __callback = ->(_arg0 : LibGtk::Socket*) {
       __return_value = __block.call(Socket.new(_arg0))
       __return_value
      }
      connect("plug-added", __callback)
    end

    alias PlugRemovedSignal = Socket -> Bool
    def on_plug_removed(&__block : PlugRemovedSignal)
      __callback = ->(_arg0 : LibGtk::Socket*) {
       __return_value = __block.call(Socket.new(_arg0))
       __return_value
      }
      connect("plug-removed", __callback)
    end

  end
end

