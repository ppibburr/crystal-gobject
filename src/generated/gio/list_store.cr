module Gio
  class ListStore < GObject::Object
    def initialize @gio_list_store
    end

    def to_unsafe
      @gio_list_store.not_nil!
    end

    # Implements ListModel

    def self.new_internal(item_type)
      __return_value = LibGio.list_store_new(UInt64.cast(item_type))
      Gio::ListStore.new(__return_value)
    end

    def append(item)
      __return_value = LibGio.list_store_append((to_unsafe as LibGio::ListStore*), item)
      __return_value
    end

    def insert(position, item)
      __return_value = LibGio.list_store_insert((to_unsafe as LibGio::ListStore*), UInt32.cast(position), item)
      __return_value
    end

    def remove(position)
      __return_value = LibGio.list_store_remove((to_unsafe as LibGio::ListStore*), UInt32.cast(position))
      __return_value
    end

    def remove_all
      __return_value = LibGio.list_store_remove_all((to_unsafe as LibGio::ListStore*))
      __return_value
    end

  end
end
