module Gio
  class AppInfoMonitor < GObject::Object
    @pointer : Void*
    def initialize(pointer : LibGio::AppInfoMonitor*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGio::AppInfoMonitor*)
    end

    def self.get
      __return_value = LibGio.app_info_monitor_get
      Gio::AppInfoMonitor.new(__return_value)
    end

    alias ChangedSignal = AppInfoMonitor ->
    def on_changed(&__block : ChangedSignal)
      __callback = ->(_arg0 : LibGio::AppInfoMonitor*) {
       __return_value = __block.call(AppInfoMonitor.new(_arg0))
       __return_value
      }
      connect("changed", __callback)
    end

  end
end

