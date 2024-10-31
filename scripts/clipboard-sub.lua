-- clipboard-sub.lua
local utils = require 'mp.utils'

-- 定义一个函数来读取剪贴板内容
function get_clipboard()
    local process = {
        args = {"powershell", "-NoProfile", "-Command", "Get-Clipboard"}
    }
    local res = utils.subprocess(process)
    if res.status == 0 then
        return res.stdout:gsub("%s+$", "")  -- 去除末尾的换行符
    else
        return nil
    end
end

-- 定义一个函数来添加字幕
function add_sub_from_clipboard()
    local url = get_clipboard()
    if url then
        mp.commandv("sub-add", url)
        mp.osd_message("Added subtitle: " .. url)
    else
        mp.osd_message("Failed to read from clipboard")
    end
end

-- 将函数绑定到快捷键
mp.add_key_binding("Ctrl+Shift+s", "add-sub-from-clipboard", add_sub_from_clipboard)
