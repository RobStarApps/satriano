class ImageS3Uploader  < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

 storage :aws
  process :set_content_type

  def self.image_version_on_s3(version_name, remote_path, options = {})
    size = options.fetch(:size) { size_from_version(version_name) }

    version version_name, options do
      process resize_to_fit_and_pad: size
      process :set_content_type

      define_method(:store_dir) do
        remote_path
      end

      def full_filename(for_file = model.logo.file)
        for_file
      end
    end
  end

  def extension_white_list
    %w(jpg gif png)
  end

  def filename
    original_filename
  end

  def set_content_type
    return unless file.content_type.blank?

    begin
      image = MiniMagick::Image.open(file.path)
      file.content_type = image.mime_type
    rescue MiniMagick::Invalid
      Rails.logger.info "RebelleS3Uploader: Cannot set content type of '#{filename}'"
    end
  end

  protected

  def self.size_from_version(version_name)
    case version_name
    when :large then [800,800]
    when :normal then [370,370]
    when :medium then [210,210]
    when :small, :thumb then [50,50]
    end
  end

  def resize_to_fit_and_pad(width, height)
    manipulate! do |img|
      img.combine_options do |cmd|
        cmd.thumbnail "#{width}x#{height}"
        cmd.background "rgba(255, 255, 255, 1)"
        cmd.gravity "center"
        cmd.extent "#{width}x#{height}"
      end
      img = yield(img) if block_given?
      img
    end
  end



  end