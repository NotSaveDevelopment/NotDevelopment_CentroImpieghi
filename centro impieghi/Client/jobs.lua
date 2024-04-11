
-------------FUNZIONI JOBS--------------


exports.ox_target:addBoxZone({
  coords = vector3(1200.6412, -1277.3497, 35.5710),
  size = vec3(2, 2, 2),
  rotation = 45,
  debug = drawZones,
  options = {
      {

          icon = 'fa-solid fa-home',
          label = 'Prendi Lavoro',
          onSelect = function()
              TriggerEvent('menu_lavoro')
          end
      }
  }
})

CreateThread(function()
  local model = lib.requestModel('s_m_m_postal_02')

  if not model then return end

  local npc = CreatePed(0, model, 1200.6412, -1277.3497, 34.5710, 358.5569, false, false)

  FreezeEntityPosition(npc, true)
  SetEntityInvincible(npc, true)
end)

-------------FUNZIONI JOBS 2--------------

exports.ox_target:addBoxZone({
  coords = vector3(718.7283, 152.7491, 80.7544),
  size = vec3(2, 2, 2),
  rotation = 45,
  debug = drawZones,
  options = {
      {

          icon = 'fa-solid fa-home',
          label = 'Accedi al menu elettricista',
          onSelect = function()
              TriggerEvent('menu_elettricista')
          end
      }
  }
})

CreateThread(function()
  local model = lib.requestModel('cs_floyd')

  if not model then return end

  local npc = CreatePed(0, model, 718.7283, 152.7491, 79.7544, 150.8333, false, false)

  FreezeEntityPosition(npc, true)
  SetEntityInvincible(npc, true)
end)

exports.ox_target:addBoxZone({
  coords = vector3(735.1123, 130.9188, 80.7165),
  size = vec3(2, 2, 2),
  rotation = 45,
  debug = drawZones,
  options = {
      {

          icon = 'fa-solid fa-home',
          label = 'Accedi al menu elettricista',
          onSelect = function()
              TriggerEvent('menu_elettricista2')
          end
      }
  }
})

CreateThread(function()
  local model = lib.requestModel('cs_floyd')

  if not model then return end

  local npc = CreatePed(0, model, 735.1123, 130.9188, 79.7165, 238.1048, false, false)

  FreezeEntityPosition(npc, true)
  SetEntityInvincible(npc, true)
end)

-------------FUNZIONI JOBS (elettricista)--------------

RegisterNetEvent('menu_elettricista', function()
  lib.registerContext({
    id = 'menu_elettricista',
    title = 'Apri menu elettricista',
    options = {
      {
        title = 'Finisci lavoro',
        onSelect = function()
          if ESX.PlayerData.job.name == 'elettricista' then
            SetEntityCoords(PlayerPedId(), 735.7746, 132.3341, 80.7241)
            TriggerEvent("ox_lib:notify", {title = 'Notifica', duration = 5000, type = typeNot, description = 'hai smesso di lavorare'})
          end
        end
      },
    }
  })

  lib.showContext('menu_elettricista')
end)

RegisterNetEvent('menu_elettricista2', function()
  lib.registerContext({
    id = 'menu_elettricista2',
    title = 'Apri menu elettricista',
    options = {
      {
        title = 'Inizia lavoro',
        onSelect = function()
          if ESX.PlayerData.job.name == 'elettricista' then
            SetEntityCoords(PlayerPedId(), 722.4285, 138.3564, 80.7545)
            TriggerEvent("ox_lib:notify", {title = 'Notifica', duration = 5000, type = typeNot, description = 'stai lavorando'})
          else
            TriggerEvent("ox_lib:notify", {title = 'Notifica', duration = 5000, type = typeNot, description = 'non sei un elettricista'})
          end
        end
      },
    }
  })

  lib.showContext('menu_elettricista2')
end)

-------------FUNZIONI JOBS (continuo 1)--------------

RegisterNetEvent('menu_lavoro', function()
  lib.registerContext({
    id = 'menu_lavoro',
    title = 'Menu Lavori',
    options = {
      {
        title = 'BOSCAIOLO',
        onSelect = function()
          TriggerServerEvent('job_boscaiolo')
          TriggerEvent("ox_lib:notify", {title = 'Ghost City Life', duration = 5000, type = typeNot, description = 'lavoro cambiato , sei un boscaiolo'})
        end
      },
      {
        title = 'MINATORE',
        onSelect = function()
          TriggerServerEvent('job_minatore')
          TriggerEvent("ox_lib:notify", {title = 'Ghost City Life', duration = 5000, type = typeNot, description = 'lavoro cambiato , sei un minatore'})
        end
      },
      {
        title = 'AGRICOLTORE',
        onSelect = function()
          TriggerServerEvent('job_agricoltore')
          TriggerEvent("ox_lib:notify", {title = 'Ghost City Life', duration = 5000, type = typeNot, description = 'lavoro cambiato , sei un agricoltore'})
          if ESX.PlayerData.job.name == 'agricoltore' then
            SetNewWaypoint(424.4513, 6526.8867)
            TriggerEvent("ox_lib:notify", {title = 'Ghost City Life', duration = 5000, type = typeNot, description = 'gps impostato al civico 3027'})
          end
        end
      },
      {
        title = 'ELETTRICISTA',
        onSelect = function()
          TriggerServerEvent('job_elettricista')
          TriggerEvent("ox_lib:notify", {title = 'Ghost City Life', duration = 5000, type = typeNot, description = 'lavoro cambiato , sei un elettricista'})
          if ESX.PlayerData.job.name == 'elettricista' then
            SetNewWaypoint(744.3446, 125.7916)
            TriggerEvent("ox_lib:notify", {title = 'Ghost City Life', duration = 5000, type = typeNot, description = 'gps impostato al civico 598'})
            end
          end
      }
    }
  })

  lib.showContext('menu_lavoro')
end)

lib.notify({
  title = 'Ghost City Life',
  description = 'Lavoro cambiato con successo',
  type = 'success'
})


------------------GARAGE------------------

exports.ox_target:addBoxZone({
  coords = vector3(1213.7794, -1263.0947, 35.2268),
  size = vec3(2, 2, 2),
  rotation = 45,
  debug = drawZones,
  options = {
      {

          icon = 'fa-solid fa-home',
          label = 'Prendi veicolo lavoro',
          onSelect = function()
              TriggerEvent('menu_garage_centro_impieghi')
          end
      }
  }
})

CreateThread(function()
  local model = lib.requestModel('s_m_m_postal_02')

  if not model then return end

  local npc = CreatePed(0, model, 1213.7794, -1263.0947, 34.2268, 85.5649, false, false)

  FreezeEntityPosition(npc, true)
  SetEntityInvincible(npc, true)
end)



RegisterNetEvent('menu_garage_centro_impieghi', function()
  lib.registerContext({
    id = 'menu_garage_centro_impieghi',
    title = 'Menu Veicolo Centro Impieghi',
    options = {
      {
        title = 'TAXI',
        onSelect = function()
          veicolotaxi()
        end
      },
      {
        title = 'CAMION BOSCAIOLO',
        onSelect = function()
          veicoloboscaiolo()
        end
      },
      {
        title = 'CAMION MINATORE',
        onSelect = function()
          veicolominatore()
        end
      },
      {
        title = 'VEICOLO AGRICOLTORE',
        onSelect = function()
          veicoloagricoltore()
        end
      },
      {
        title = 'VEICOLO ELETTRICISTA',
        onSelect = function()
          veicoloelettricista()
        end
      }
    }
  })

  lib.showContext('menu_garage_centro_impieghi')
end)



--------------------------FUNZIONE GARAGE------------------------

local lastAlertTime = 0
local alertCooldown = 60000
function veicoloboscaiolo()
  if ESX.PlayerData.job.name == 'boscaiolo' then
    local currentTime = GetGameTimer()

    if currentTime - lastAlertTime >= alertCooldown then
      local modelHash = GetHashKey('dloader')
      if not IsModelInCdimage(modelHash) then return end
      RequestModel(modelHash)
      while not HasModelLoaded(modelHash) do
          Wait(0)
      end
      vehicle = CreateVehicle(modelHash, 1206.1288, -1268.8944, 35.2268, 172.5203, true, false)
      TriggerEvent("ox_lib:notify", {title = 'Ghost City Life', duration = 5000, type = typeNot, description = 'veicolo spawnato con successo'})

        lastAlertTime = currentTime
    else
      TriggerEvent("ox_lib:notify", {title = 'Ghost City Life', duration = 5000, type = typeNot, description = 'non puoi prendere un veicolo cosi velocemente'})
    end
  end
end

local lastAlertTime = 0
local alertCooldown = 60000
function veicolominatore()
  if ESX.PlayerData.job.name == 'minatore' then
    local currentTime = GetGameTimer()

    if currentTime - lastAlertTime >= alertCooldown then
      local modelHash = GetHashKey('rubble')
      if not IsModelInCdimage(modelHash) then return end
      RequestModel(modelHash)
      while not HasModelLoaded(modelHash) do
          Wait(0)
      end
      vehicle = CreateVehicle(modelHash, 1206.1288, -1268.8944, 35.2268, 172.5203, true, false)
      TriggerEvent("ox_lib:notify", {title = 'Ghost City Life', duration = 5000, type = typeNot, description = 'veicolo spawnato con successo'})

        lastAlertTime = currentTime
    else
      TriggerEvent("ox_lib:notify", {title = 'Ghost City Life', duration = 5000, type = typeNot, description = 'non puoi prendere un veicolo cosi velocemente'})
    end
  end
end

local lastAlertTime = 0
local alertCooldown = 60000
function veicoloagricoltore()
  if ESX.PlayerData.job.name == 'agricoltore' then
    local currentTime = GetGameTimer()

    if currentTime - lastAlertTime >= alertCooldown then
      local modelHash = GetHashKey('bobcatxl')
      if not IsModelInCdimage(modelHash) then return end
      RequestModel(modelHash)
      while not HasModelLoaded(modelHash) do
          Wait(0)
      end
      vehicle = CreateVehicle(modelHash, 1206.1288, -1268.8944, 35.2268, 172.5203, true, false)
      TriggerEvent("ox_lib:notify", {title = 'Ghost City Life', duration = 5000, type = typeNot, description = 'veicolo spawnato con successo'})

        lastAlertTime = currentTime
    else
      TriggerEvent("ox_lib:notify", {title = 'Ghost City Life', duration = 5000, type = typeNot, description = 'non puoi prendere un veicolo cosi velocemente'})
    end
  end
end

local lastAlertTime = 0
local alertCooldown = 60000
function veicoloelettricista()
  if ESX.PlayerData.job.name == 'elettricista' then
    local currentTime = GetGameTimer()

    if currentTime - lastAlertTime >= alertCooldown then
      local modelHash = GetHashKey('gburrito2')
      if not IsModelInCdimage(modelHash) then return end
      RequestModel(modelHash)
      while not HasModelLoaded(modelHash) do
          Wait(0)
      end
      vehicle = CreateVehicle(modelHash, 1206.1288, -1268.8944, 35.2268, 172.5203, true, false)
      TriggerEvent("ox_lib:notify", {title = 'Ghost City Life', duration = 5000, type = typeNot, description = 'veicolo spawnato con successo'})

        lastAlertTime = currentTime
    else
      TriggerEvent("ox_lib:notify", {title = 'Ghost City Life', duration = 5000, type = typeNot, description = 'non puoi prendere un veicolo cosi velocemente'})
    end
  end
end

-----------RITIRO VEICOLO CENTRO IMPIEGHI-----------

exports.ox_target:addBoxZone({
  coords = vector3(1213.8260, -1256.5234, 35.2268),
  size = vec3(2, 2, 2),
  rotation = 45,
  debug = drawZones,
  options = {
      {

          icon = 'fa-solid fa-home',
          label = 'Deposita veicolo lavoro',
          onSelect = function()
              DeleteVehicle(vehicle)
              TriggerEvent("ox_lib:notify", {title = 'Notifica', duration = 5000, type = typeNot, description = 'veicolo depositato con successo'})
          end
      }
  }
})

CreateThread(function()
  local model = lib.requestModel('s_m_m_postal_02')

  if not model then return end

  local npc = CreatePed(0, model, 1213.8260, -1256.5234, 34.2268, 86.5669, false, false)

  FreezeEntityPosition(npc, true)
  SetEntityInvincible(npc, true)
end)

-----------------BLIP CENTRO IMPIEGHI-------------

--------------MARKER--------------

TriggerEvent('gridsystem:registerMarker', {
  name = 'taxi',
  pos = vector3(897.0527, -179.3250, 73.7243),
  size = vector3(0.8, 0.8, 0.8),
  scale = vector3(0.7, 0.7, 0.7),
  type = 9,
  control = 'E',
  rotate = 0.0,
  rotate2 = 0.0,
  shouldBob = false,
  shouldRotate = true,
  color = { r = 255, g = 255, b = 255 },
  trasparent = 255,
  customt = 'marker',
  msg = 'Prendi lavoro tassista',
  msg2 = '',
  action = function()
      
  end
})

TriggerEvent('gridsystem:registerMarker', {
  name = 'boscaiolo',
  pos = vector3(-657.1706, 5607.6025, 40.8179),
  size = vector3(0.8, 0.8, 0.8),
  scale = vector3(0.7, 0.7, 0.7),
  type = 9,
  control = 'E',
  rotate = 0.0,
  rotate2 = 0.0,
  shouldBob = false,
  shouldRotate = true,
  color = { r = 255, g = 255, b = 255 },
  trasparent = 255,
  customt = 'marker',
  msg = 'Taglia la legna',
  msg2 = '',
  action = function()
    if ESX.PlayerData.job.name == 'boscaiolo' then
    Citizen.CreateThread(function()
      RequestAnimDict('mini@repair')

      while not HasAnimDictLoaded('mini@repair') do
          Citizen.Wait(100)
      end

      local ped = PlayerPedId()

      TaskPlayAnim(ped, 'mini@repair', 'fixing_a_ped', 4.0, -4.0, -1, 0, 0, false, false, false)
      end)
      Wait(3500)
      local ped = PlayerPedId()
      local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}, 'easy'}, {'e', 'e', 'e', 'e'})
      if success then
      TriggerServerEvent('taglia:legna')
      ClearPedTasks(ped)
      end
  end
end
})

RegisterNetEvent('ConfigFazioniCriminali_delete', function(name)
  if not ESX.PlayerData.job.name == 'boscaiolo' then
  TriggerEvent('gridsystem:unregisterMarker', 'boscaiolo'..name)
  end
end)

TriggerEvent('ConfigFazioniCriminali_delete')

TriggerEvent('gridsystem:registerMarker', {
  name = 'minatore',
  pos = vector3(897.0527, -179.3250, 73.7243),
  size = vector3(0.8, 0.8, 0.8),
  scale = vector3(0.7, 0.7, 0.7),
  type = 9,
  control = 'E',
  rotate = 0.0,
  rotate2 = 0.0,
  shouldBob = false,
  shouldRotate = true,
  color = { r = 255, g = 255, b = 255 },
  trasparent = 255,
  customt = 'marker',
  msg = 'Prendi lavoro tassista',
  msg2 = '',
  action = function()
      
  end
})

TriggerEvent('gridsystem:registerMarker', {
  name = 'agricoltore',
  pos = vector3(500.6541, 6515.6528, 30.1682),
  size = vector3(0.8, 0.8, 0.8),
  scale = vector3(0.7, 0.7, 0.7),
  type = 9,
  control = 'E',
  rotate = 0.0,
  rotate2 = 0.0,
  shouldBob = false,
  shouldRotate = true,
  color = { r = 255, g = 255, b = 255 },
  trasparent = 255,
  customt = 'marker',
  msg = 'Raccogli verdure',
  msg2 = '',
  action = function()
    if ESX.PlayerData.job.name == 'agricoltore' then
    Citizen.CreateThread(function()
      RequestAnimDict('mini@repair')

      while not HasAnimDictLoaded('mini@repair') do
          Citizen.Wait(100)
      end

      local ped = PlayerPedId()

      TaskPlayAnim(ped, 'mini@repair', 'fixing_a_ped', 4.0, -4.0, -1, 0, 0, false, false, false)
      end)
      Wait(3500)
      local ped = PlayerPedId()
      local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}, 'easy'}, {'e', 'e', 'e', 'e'})
      if success then
      TriggerServerEvent('raccogli:verdure')
      ClearPedTasks(ped)
      end
  end
end
})

TriggerEvent('gridsystem:registerMarker', {
  name = 'agricoltore1',
  pos = vector3(499.1739, 6506.7500, 30.1958),
  size = vector3(0.8, 0.8, 0.8),
  scale = vector3(0.7, 0.7, 0.7),
  type = 9,
  control = 'E',
  rotate = 0.0,
  rotate2 = 0.0,
  shouldBob = false,
  shouldRotate = true,
  color = { r = 255, g = 255, b = 255 },
  trasparent = 255,
  customt = 'marker',
  msg = 'Raccogli verdure',
  msg2 = '',
  action = function()
    if ESX.PlayerData.job.name == 'agricoltore' then
    Citizen.CreateThread(function()
      RequestAnimDict('mini@repair')

      while not HasAnimDictLoaded('mini@repair') do
          Citizen.Wait(100)
      end

      local ped = PlayerPedId()

      TaskPlayAnim(ped, 'mini@repair', 'fixing_a_ped', 4.0, -4.0, -1, 0, 0, false, false, false)
      end)
      Wait(3500)
      local ped = PlayerPedId()
      local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}, 'easy'}, {'e', 'e', 'e', 'e'})
      if success then
      TriggerServerEvent('raccogli:verdure')
      ClearPedTasks(ped)
      end
  end
end
})

TriggerEvent('gridsystem:registerMarker', {
  name = 'agricoltore2',
  pos = vector3(5500.8938, 6497.5586, 30.3014),
  size = vector3(0.8, 0.8, 0.8),
  scale = vector3(0.7, 0.7, 0.7),
  type = 9,
  control = 'E',
  rotate = 0.0,
  rotate2 = 0.0,
  shouldBob = false,
  shouldRotate = true,
  color = { r = 255, g = 255, b = 255 },
  trasparent = 255,
  customt = 'marker',
  msg = 'Raccogli verdure',
  msg2 = '',
  action = function()
    if ESX.PlayerData.job.name == 'agricoltore' then
    Citizen.CreateThread(function()
      RequestAnimDict('mini@repair')

      while not HasAnimDictLoaded('mini@repair') do
          Citizen.Wait(100)
      end

      local ped = PlayerPedId()

      TaskPlayAnim(ped, 'mini@repair', 'fixing_a_ped', 4.0, -4.0, -1, 0, 0, false, false, false)
      end)
      Wait(3500)
      local ped = PlayerPedId()
      local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}, 'easy'}, {'e', 'e', 'e', 'e'})
      if success then
      TriggerServerEvent('raccogli:verdure')
      ClearPedTasks(ped)
      end
  end
end
})

TriggerEvent('gridsystem:registerMarker', {
  name = 'agricoltore3',
  pos = vector3(503.1550, 6489.8521, 30.7774),
  size = vector3(0.8, 0.8, 0.8),
  scale = vector3(0.7, 0.7, 0.7),
  type = 9,
  control = 'E',
  rotate = 0.0,
  rotate2 = 0.0,
  shouldBob = false,
  shouldRotate = true,
  color = { r = 255, g = 255, b = 255 },
  trasparent = 255,
  customt = 'marker',
  msg = 'Raccogli verdure',
  msg2 = '',
  action = function()
    if ESX.PlayerData.job.name == 'agricoltore' then
    Citizen.CreateThread(function()
      RequestAnimDict('mini@repair')

      while not HasAnimDictLoaded('mini@repair') do
          Citizen.Wait(100)
      end

      local ped = PlayerPedId()

      TaskPlayAnim(ped, 'mini@repair', 'fixing_a_ped', 4.0, -4.0, -1, 0, 0, false, false, false)
      end)
      Wait(3500)
      local ped = PlayerPedId()
      local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}, 'easy'}, {'e', 'e', 'e', 'e'})
      if success then
      TriggerServerEvent('raccogli:verdure')
      ClearPedTasks(ped)
      end
  end
end
})

TriggerEvent('gridsystem:registerMarker', {
  name = 'agricoltore4',
  pos = vector3(501.3934, 6474.3047, 30.8040),
  size = vector3(0.8, 0.8, 0.8),
  scale = vector3(0.7, 0.7, 0.7),
  type = 9,
  control = 'E',
  rotate = 0.0,
  rotate2 = 0.0,
  shouldBob = false,
  shouldRotate = true,
  color = { r = 255, g = 255, b = 255 },
  trasparent = 255,
  customt = 'marker',
  msg = 'Raccogli verdure',
  msg2 = '',
  action = function()
    if ESX.PlayerData.job.name == 'agricoltore' then
    Citizen.CreateThread(function()
      RequestAnimDict('mini@repair')

      while not HasAnimDictLoaded('mini@repair') do
          Citizen.Wait(100)
      end

      local ped = PlayerPedId()

      TaskPlayAnim(ped, 'mini@repair', 'fixing_a_ped', 4.0, -4.0, -1, 0, 0, false, false, false)
      end)
      Wait(3500)
      local ped = PlayerPedId()
      local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}, 'easy'}, {'e', 'e', 'e', 'e'})
      if success then
      TriggerServerEvent('raccogli:verdure')
      ClearPedTasks(ped)
      end
  end
end
})

TriggerEvent('gridsystem:registerMarker', {
  name = 'agricoltore5',
  pos = vector3(280.9645, 6518.1899, 30.1731),
  size = vector3(0.8, 0.8, 0.8),
  scale = vector3(0.7, 0.7, 0.7),
  type = 9,
  control = 'E',
  rotate = 0.0,
  rotate2 = 0.0,
  shouldBob = false,
  shouldRotate = true,
  color = { r = 255, g = 255, b = 255 },
  trasparent = 255,
  customt = 'marker',
  msg = 'Raccogli arance',
  msg2 = '',
  action = function()
    if ESX.PlayerData.job.name == 'agricoltore' then
    Citizen.CreateThread(function()
      RequestAnimDict('rcmnigel1c')

      while not HasAnimDictLoaded('rcmnigel1c') do
          Citizen.Wait(100)
      end

      local ped = PlayerPedId()

      TaskPlayAnim(ped, 'rcmnigel1c', 'hailing_whistle_waive_a', 4.0, -4.0, -1, 0, 0, false, false, false)
      end)
      Wait(3500)
      local ped = PlayerPedId()
      local success = lib.skillCheck({'easy', 'easy', {areaSize = 60, speedMultiplier = 2}, 'easy'}, {'e', 'e', 'e', 'e'})
      if success then
      TriggerServerEvent('raccogli:arance')
      ClearPedTasks(ped)
      end
  end
end
})

TriggerEvent('gridsystem:registerMarker', {
  name = 'elettricista',
  pos = vector3(681.6412, 109.0104, 80.9139),
  size = vector3(0.8, 0.8, 0.8),
  scale = vector3(0.7, 0.7, 0.7),
  type = 9,
  control = 'E',
  rotate = 0.0,
  rotate2 = 0.0,
  shouldBob = false,
  shouldRotate = true,
  color = { r = 255, g = 255, b = 255 },
  trasparent = 255,
  customt = 'marker',
  msg = 'Ripara',
  msg2 = '',
  action = function()
    if ESX.PlayerData.job.name == 'elettricista' then
      Citizen.CreateThread(function()
        RequestAnimDict('mini@repair')

        while not HasAnimDictLoaded('mini@repair') do
            Citizen.Wait(100)
        end

        local ped = PlayerPedId()

        TaskPlayAnim(ped, 'mini@repair', 'hailing_whistle_waive_a', 4.0, -4.0, -1, 0, 0, false, false, false)
        end)
        local ped = PlayerPedId()
        TriggerEvent('ultra-voltlab', time, function(outcome ,reason)
            if outcome == 0 then
              print('Hack failed', reason)
            elseif outcome == 1 then
              TriggerServerEvent('lavoro:riparazione')
            elseif outcome == 2 then
              print('Timed out')
            elseif outcome == -1 then
              print('Error occured',reason)
            end
          end)
        ClearPedTasks(ped)
        end
    end
})