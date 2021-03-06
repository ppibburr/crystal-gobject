module Gdk
  class EventPadButton
    include GObject::WrappedType

    def self.new(type : Gdk::EventType|Nil = nil, window : Gdk::Window|Nil = nil, send_event : Int8|Nil = nil, time : UInt32|Nil = nil, group : UInt32|Nil = nil, button : UInt32|Nil = nil, mode : UInt32|Nil = nil) : self
      ptr = Pointer(UInt8).malloc(40, 0u8)
      new(ptr.as(LibGdk::EventPadButton*)).tap do |object|
        object.type = type unless type.nil?
        object.window = window unless window.nil?
        object.send_event = send_event unless send_event.nil?
        object.time = time unless time.nil?
        object.group = group unless group.nil?
        object.button = button unless button.nil?
        object.mode = mode unless mode.nil?
      end
    end

    @pointer : Void*
    def initialize(pointer : LibGdk::EventPadButton*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGdk::EventPadButton*)
    end

    def type
      (to_unsafe.as(LibGdk::EventPadButton*).value.type)
    end

    def type=(value : Gdk::EventType)
      to_unsafe.as(LibGdk::EventPadButton*).value.type = value
    end

    def window
      Gdk::Window.new((to_unsafe.as(LibGdk::EventPadButton*).value.window))
    end

    def window=(value : Gdk::Window)
      to_unsafe.as(LibGdk::EventPadButton*).value.window = value.to_unsafe.as(LibGdk::Window*)
    end

    def send_event
      (to_unsafe.as(LibGdk::EventPadButton*).value.send_event)
    end

    def send_event=(value : Int8)
      to_unsafe.as(LibGdk::EventPadButton*).value.send_event = Int8.new(value)
    end

    def time
      (to_unsafe.as(LibGdk::EventPadButton*).value.time)
    end

    def time=(value : UInt32)
      to_unsafe.as(LibGdk::EventPadButton*).value.time = UInt32.new(value)
    end

    def group
      (to_unsafe.as(LibGdk::EventPadButton*).value.group)
    end

    def group=(value : UInt32)
      to_unsafe.as(LibGdk::EventPadButton*).value.group = UInt32.new(value)
    end

    def button
      (to_unsafe.as(LibGdk::EventPadButton*).value.button)
    end

    def button=(value : UInt32)
      to_unsafe.as(LibGdk::EventPadButton*).value.button = UInt32.new(value)
    end

    def mode
      (to_unsafe.as(LibGdk::EventPadButton*).value.mode)
    end

    def mode=(value : UInt32)
      to_unsafe.as(LibGdk::EventPadButton*).value.mode = UInt32.new(value)
    end

  end
end

