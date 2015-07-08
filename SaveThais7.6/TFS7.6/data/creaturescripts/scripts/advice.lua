function onAdvance(cid, skill, oldlevel, newlevel)
  array = {"Test message."}
  if skill == SKILL__LEVEL then
    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, array[0])
  end
  return true
end
