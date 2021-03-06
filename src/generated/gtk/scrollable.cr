module Gtk
  module Scrollable
    def border(border)
      __return_value = LibGtk.scrollable_get_border(@pointer.as(LibGtk::Scrollable*), border)
      __return_value
    end

    def hadjustment
      __return_value = LibGtk.scrollable_get_hadjustment(@pointer.as(LibGtk::Scrollable*))
      Gtk::Adjustment.new(__return_value)
    end

    def hscroll_policy
      __return_value = LibGtk.scrollable_get_hscroll_policy(@pointer.as(LibGtk::Scrollable*))
      __return_value
    end

    def vadjustment
      __return_value = LibGtk.scrollable_get_vadjustment(@pointer.as(LibGtk::Scrollable*))
      Gtk::Adjustment.new(__return_value)
    end

    def vscroll_policy
      __return_value = LibGtk.scrollable_get_vscroll_policy(@pointer.as(LibGtk::Scrollable*))
      __return_value
    end

    def hadjustment=(hadjustment)
      LibGtk.scrollable_set_hadjustment(@pointer.as(LibGtk::Scrollable*), hadjustment ? hadjustment.to_unsafe.as(LibGtk::Adjustment*) : nil)
      nil
    end

    def hscroll_policy=(policy : Gtk::ScrollablePolicy)
      LibGtk.scrollable_set_hscroll_policy(@pointer.as(LibGtk::Scrollable*), policy)
      nil
    end

    def vadjustment=(vadjustment)
      LibGtk.scrollable_set_vadjustment(@pointer.as(LibGtk::Scrollable*), vadjustment ? vadjustment.to_unsafe.as(LibGtk::Adjustment*) : nil)
      nil
    end

    def vscroll_policy=(policy : Gtk::ScrollablePolicy)
      LibGtk.scrollable_set_vscroll_policy(@pointer.as(LibGtk::Scrollable*), policy)
      nil
    end

  end
end

