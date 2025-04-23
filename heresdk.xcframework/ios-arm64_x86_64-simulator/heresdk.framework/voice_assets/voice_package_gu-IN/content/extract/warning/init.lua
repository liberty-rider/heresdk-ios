local common = require 'content.extract.common.init'

local warning = {}


function warning.extract_warning(input)
    local message_content = common.extract_common_content(input)
    if (message_content.trigger == "traffic_merge") then
        message_content.merge_side = common.attributes.get_merge_side(input)
    end
    return message_content
end


return warning
