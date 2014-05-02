module Adiwg
    module Json
        module Schemas
            # Return the path to main schema.json file.
            def self.schema_path
                File.join(File.dirname(File.expand_path(__FILE__)), '../../schema/schema.json')
            end

            # Return the path to schema directory.
            def self.schema_dir
                File.join(File.dirname(File.expand_path(__FILE__)), '../../schema')
            end
        end
    end
end