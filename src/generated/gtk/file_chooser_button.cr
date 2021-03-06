require "./box"

module Gtk
  class FileChooserButton < Box
    @pointer : Void*
    def initialize(pointer : LibGtk::FileChooserButton*)
      @pointer = pointer.as(Void*)
    end

    def to_unsafe
      @pointer.not_nil!.as(LibGtk::FileChooserButton*)
    end

    # Implements ImplementorIface
    # Implements Buildable
    # Implements FileChooser
    # Implements Orientable

    def title
      gvalue = GObject::Value.new(GObject::Type::UTF8)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "title", gvalue)
      gvalue.string
    end

    def width_chars
      gvalue = GObject::Value.new(GObject::Type::INT32)
      LibGObject.object_get_property(@pointer.as(LibGObject::Object*), "width_chars", gvalue)
      gvalue
    end

    def self.new(title, action : Gtk::FileChooserAction) : self
      __return_value = LibGtk.file_chooser_button_new(title.to_unsafe, action)
      cast Gtk::Widget.new(__return_value)
    end

    def self.new_with_dialog(dialog) : self
      __return_value = LibGtk.file_chooser_button_new_with_dialog(dialog.to_unsafe.as(LibGtk::Dialog*))
      cast Gtk::Widget.new(__return_value)
    end

    def focus_on_click
      __return_value = LibGtk.file_chooser_button_get_focus_on_click(@pointer.as(LibGtk::FileChooserButton*))
      __return_value
    end

    def title
      __return_value = LibGtk.file_chooser_button_get_title(@pointer.as(LibGtk::FileChooserButton*))
      (raise "Expected string but got null" unless __return_value; ::String.new(__return_value))
    end

    def width_chars
      __return_value = LibGtk.file_chooser_button_get_width_chars(@pointer.as(LibGtk::FileChooserButton*))
      __return_value
    end

    def focus_on_click=(focus_on_click)
      LibGtk.file_chooser_button_set_focus_on_click(@pointer.as(LibGtk::FileChooserButton*), focus_on_click)
      nil
    end

    def title=(title)
      LibGtk.file_chooser_button_set_title(@pointer.as(LibGtk::FileChooserButton*), title.to_unsafe)
      nil
    end

    def width_chars=(n_chars)
      LibGtk.file_chooser_button_set_width_chars(@pointer.as(LibGtk::FileChooserButton*), Int32.new(n_chars))
      nil
    end

    alias FileSetSignal = FileChooserButton ->
    def on_file_set(&__block : FileSetSignal)
      __callback = ->(_arg0 : LibGtk::FileChooserButton*) {
       __return_value = __block.call(FileChooserButton.new(_arg0))
       __return_value
      }
      connect("file-set", __callback)
    end

  end
end

