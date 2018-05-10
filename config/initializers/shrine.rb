require "shrine"
require "shrine/storage/file_system"
require "image_processing/mini_magick"
 

 
Shrine.storages = {
  cache: Shrine::Storage::FileSystem.new("public", prefix: "uploads/cache"),
  store: Shrine::Storage::FileSystem.new("public", prefix: "uploads/store")
}

Shrine.plugin :activerecord
Shrine.plugin :logging, logger: Rails.logger
Shrine.plugin :validation_helpers
Shrine.plugin :cached_attachment_data