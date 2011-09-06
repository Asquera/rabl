require File.expand_path('../teststrap', __FILE__)
require File.expand_path('../../lib/rabl', __FILE__)

context 'Rabl::Configuration' do
  context 'defaults' do
    setup { Rabl.configuration }

    asserts(:include_json_root).equals true
    asserts(:include_xml_root).equals false
    asserts(:enable_json_callbacks).equals false
    asserts(:json_engine).equals MultiJson.engine
  end

<<<<<<< HEAD
  context "with configuration" do
    class CustomEncodeEngine; end
    setup do
      Rabl.configure do |config|
        config.include_json_root     = false
        config.include_xml_root      = true
        config.enable_json_callbacks = true
        config.json_engine           = CustomEncodeEngine
=======
  context 'custom JSON engine' do
    setup do
      Rabl.configure do |c|
        c.json_engine = :yajl
>>>>>>> template_names_in_trace
      end
    end

<<<<<<< HEAD
    asserts(:include_json_root).equals false
    asserts(:include_xml_root).equals true
    asserts(:enable_json_callbacks).equals true
    asserts(:json_engine).equals CustomEncodeEngine

    teardown do
      Rabl.reset_configuration!
    end
=======
    asserts('uses a custom JSON engine') { topic.json_engine == MultiJson::Engines::Yajl }
>>>>>>> template_names_in_trace
  end
end
