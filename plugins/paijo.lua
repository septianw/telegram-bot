function sleep(s)
  local ntime = os.clock() + s
  repeat until os.clock() > ntime
end

local function run(msg, matches)
  local text = matches[1]
  local out = ""

  if text == "Keamanan mati" then
    out = "/aktifkan_sekarang"
  end

  if text == "rumah kamu sudah tidak aman" then
    out = "/newaddress"
  end

  if text == "Kamu berhasil memanen" then
    sleep(3)
    out = "/siram"
  end

  if text == "hasil siap diambil" then
    sleep(3)
    out = "/ambilHasil"
  end

  if text == "Kamu memperoleh" then
    sleep(3)
    out = "/beriMakan"
  end

  if text == "siap panen" then
    sleep(3)
    out = "/ambilPanen"
  end

  if text == "/tidur" then
    out = "/tidur"
  end

  return out
end

return {
  description = "Simplest plugin ever!",
  usage = "!echo [whatever]: echoes the msg",
  patterns = {
    "(Keamanan mati)",
    "(rumah kamu sudah tidak aman)",
    "(Kamu berhasil memanen)",
    "(hasil siap diambil)",
    "(Kamu memperoleh)",
    "(siap panen)",
    "(/tidur)"
  }, 
  run = run 
}
