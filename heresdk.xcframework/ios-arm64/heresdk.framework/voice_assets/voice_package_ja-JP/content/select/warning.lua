local warning = {}


function warning.select_common_content()
    local content = {}
    content.prompt_class = 'notification'
    return content
end


function warning.get_merge_side(merge_side)
    if merge_side == 'left' or merge_side == 'right' then
        return 'nav.variable.FROMSIDE.'..string.lower(merge_side)
    else
        return ''
    end
end


function warning.select_warning(message_table)
    local content = warning.select_common_content()
    if message_table.trigger == 'gps_signal_lost' then content.action = 'gpslost'
    elseif message_table.trigger == 'gps_signal_restored' then content.action = 'gpsrestored'
    elseif message_table.trigger == 'route_recalculation' then content.action = 'newroute'
    elseif message_table.trigger == 'safety_camera' then content.action = 'speedcamera'
    elseif message_table.trigger == 'traffic_merge' then
        content.action = 'trafficmerge'
        content.merge_side = warning.get_merge_side(message_table.merge_side)
    end
    return content
end


return warning
