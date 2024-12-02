local unset = 55
local speedlimit = unset

local speedLimits = {
    ["Joshua Rd"] = 65,
    ["East Joshua Road"] = 65,
    ["Marina Dr"] = 45,
    ["Alhambra Dr"] = 35,
    ["Niland Ave"] = 35,
    ["Zancudo Ave"] = 35,
    ["Armadillo Ave"] = 35,
    ["Algonquin Blvd"] = 35,
    ["Mountain View Dr"] = 35,
    ["Cholla Springs Ave"] = 35,
    ["Panorama Dr"] = 50,
    ["Lesbos Ln"] = 35,
    ["Calafia Rd"] = 30,
    ["North Calafia Way"] = 30,
    ["Cassidy Trail"] = 25,
    ["Seaview Rd"] = 60,
    ["Grapeseed Main St"] = 35,
    ["Grapeseed Ave"] = 35,
    ["Joad Ln"] = 35,
    ["Union Rd"] = 40,
    ["O'Neil Way"] = 45,
    ["Senora Fwy"] = 75,
    ["Catfish View"] = 35,
    ["York St"] = 35,
    ["Great Ocean Hwy"] = 75,
    ["Paleto Blvd"] = 35,
    ["Duluoz Ave"] = 35,
    ["Procopio Dr"] = 35,
    ["Cascabel Ave"] = 30,
    ["Procopio Promenade"] = 25,
    ["Pyrite Ave"] = 30,
    ["Fort Zancudo Approach Rd"] = 25,
    ["Barbareno Rd"] = 30,
    ["Ineseno Road"] = 30,
    ["West Eclipse Blvd"] = 35,
    ["Playa Vista"] = 30,
    ["Bay City Ave"] = 30,
    ["Del Perro Fwy"] = 75,
    ["Equality Way"] = 30,
    ["Red Desert Ave"] = 30,
    ["Magellan Ave"] = 25,
    ["Sandcastle Way"] = 30,
    ["Vespucci Blvd"] = 40,
    ["Prosperity St"] = 30,
    ["San Andreas Ave"] = 40,
    ["North Rockford Dr"] = 35,
    ["South Rockford Dr"] = 35,
    ["Marathon Ave"] = 30,
    ["Boulevard Del Perro"] = 35,
    ["Cougar Ave"] = 30,
    ["Liberty St"] = 30,
    ["Bay City Incline"] = 40,
    ["Conquistador St"] = 25,
    ["Cortes St"] = 25,
    ["Vitus St"] = 25,
    ["Aguja St"] = 25,
    ["Goma St"] = 25,
    ["Melanoma St"] = 25,
    ["Palomino Ave"] = 35,
    ["Invention Ct"] = 25,
    ["Imagination Ct"] = 25,
    ["Rub St"] = 25,
    ["Tug St"] = 25,
    ["Ginger St"] = 30,
    ["Lindsay Circus"] = 30,
    ["Calais Ave"] = 35,
    ["Adam's Apple Blvd"] = 40,
    ["Alta St"] = 40,
    ["Integrity Way"] = 30,
    ["Swiss St"] = 30,
    ["Strawberry Ave"] = 40,
    ["Capital Blvd"] = 30,
    ["Crusade Rd"] = 30,
    ["Innocence Blvd"] = 40,
    ["Davis Ave"] = 40,
    ["Little Bighorn Ave"] = 35,
    ["Roy Lowenstein Blvd"] = 35,
    ["Jamestown St"] = 30,
    ["Carson Ave"] = 35,
    ["Grove St"] = 30,
    ["Brouge Ave"] = 30,
    ["Covenant Ave"] = 30,
    ["Dutch London St"] = 40,
    ["Signal St"] = 30,
    ["Elysian Fields Fwy"] = 75,
    ["Plaice Pl"] = 30,
    ["Chum St"] = 40,
    ["Chupacabra St"] = 30,
    ["Miriam Turner Overpass"] = 30,
    ["Autopia Pkwy"] = 35,
    ["Exceptionalists Way"] = 35,
    ["La Puerta Fwy"] = 75,
    ["New Empire Way"] = 30,
    ["Runway1"] = "None",
    ["Greenwich Pkwy"] = 35,
    ["Kortz Dr"] = 30,
    ["Banham Canyon Dr"] = 40,
    ["Buen Vino Rd"] = 40,
    ["Route 68"] = 65,
    ["Zancudo Grande Valley"] = 40,
    ["Zancudo Barranca"] = 40,
    ["Galileo Rd"] = 40,
    ["Mt Vinewood Dr"] = 40,
    ["Marlowe Dr"] = 40,
    ["Milton Rd"] = 35,
    ["Kimble Hill Dr"] = 35,
    ["Normandy Dr"] = 35,
    ["Hillcrest Ave"] = 35,
    ["Hillcrest Ridge Access Rd"] = 35,
    ["North Sheldon Ave"] = 35,
    ["Lake Vinewood Dr"] = 35,
    ["Lake Vinewood Est"] = 35,
    ["Baytree Canyon Rd"] = 40,
    ["North Conker Ave"] = 35,
    ["Wild Oats Dr"] = 35,
    ["Whispymound Dr"] = 35,
    ["Didion Dr"] = 35,
    ["Cox Way"] = 35,
    ["Picture Perfect Drive"] = 35,
    ["South Mo Milton Dr"] = 35,
    ["Cockingend Dr"] = 35,
    ["Mad Wayne Thunder Dr"] = 35,
    ["Hangman Ave"] = 35,
    ["Dunstable Ln"] = 35,
    ["Dunstable Dr"] = 35,
    ["Greenwich Way"] = 35,
    ["Greenwich Pl"] = 35,
    ["Hardy Way"] = 35,
    ["Richman St"] = 35,
    ["Ace Jones Dr"] = 35,
    ["Los Santos Freeway"] = 65,
    ["Senora Rd"] = 40,
    ["Nowhere Rd"] = 25,
    ["Smoke Tree Rd"] = 35,
    ["Cholla Rd"] = 35,
    ["Cat-Claw Ave"] = 35,
    ["Senora Way"] = 40,
    ["Palomino Fwy"] = 75,
    ["Shank St"] = 25,
    ["Macdonald St"] = 35,
    ["Route 68 Approach"] = 55,
    ["Vinewood Park Dr"] = 35,
    ["Vinewood Blvd"] = 40,
    ["Mirror Park Blvd"] = 35,
    ["Glory Way"] = 35,
    ["Bridge St"] = 35,
    ["West Mirror Drive"] = 35,
    ["Nikola Ave"] = 35,
    ["East Mirror Dr"] = 35,
    ["Nikola Pl"] = 25,
    ["Mirror Pl"] = 35,
    ["El Rancho Blvd"] = 40,
    ["Olympic Fwy"] = 75,
    ["Fudge Ln"] = 25,
    ["Amarillo Vista"] = 25,
    ["Labor Pl"] = 35,
    ["El Burro Blvd"] = 35,
    ["Sustancia Rd"] = 45,
    ["South Shambles St"] = 30,
    ["Hanger Way"] = 30,
    ["Orchardville Ave"] = 30,
    ["Popular St"] = 40,
    ["Buccaneer Way"] = 45,
    ["Abattoir Ave"] = 35,
    ["Voodoo Place"] = 30,
    ["Mutiny Rd"] = 35,
    ["South Arsenal St"] = 35,
    ["Forum Dr"] = 35,
    ["Morningwood Blvd"] = 35,
    ["Dorset Dr"] = 40,
    ["Caesars Place"] = 25,
    ["Spanish Ave"] = 30,
    ["Portola Dr"] = 30,
    ["Edwood Way"] = 25,
    ["San Vitus Blvd"] = 40,
    ["Eclipse Blvd"] = 35,
    ["Gentry Lane"] = 30,
    ["Las Lagunas Blvd"] = 40,
    ["Power St"] = 40,
    ["Mt Haan Rd"] = 40,
    ["Elgin Ave"] = 40,
    ["Hawick Ave"] = 35,
    ["Meteor St"] = 30,
    ["Alta Pl"] = 30,
    ["Occupation Ave"] = 35,
    ["Carcer Way"] = 40,
    ["Eastbourne Way"] = 30,
    ["Rockford Dr"] = 35,
    ["Abe Milton Pkwy"] = 35,
    ["Laguna Pl"] = 30,
    ["Sinners Passage"] = 30,
    ["Atlee St"] = 30,
    ["Sinner St"] = 30,
    ["Supply St"] = 30,
    ["Amarillo Way"] = 35,
    ["Tower Way"] = 35,
    ["Decker St"] = 35,
    ["Tackle St"] = 25,
    ["Low Power St"] = 35,
    ["Clinton Ave"] = 35,
    ["Fenwell Pl"] = 35,
    ["Utopia Gardens"] = 25,
    ["Cavalry Blvd"] = 35,
    ["South Boulevard Del Perro"] = 35,
    ["Americano Way"] = 25,
    ["Sam Austin Dr"] = 25,
    ["East Galileo Ave"] = 35,
    ["Galileo Park"] = 35,
    ["West Galileo Ave"] = 35,
    ["Tongva Dr"] = 40,
    ["Zancudo Rd"] = 35,
    ["Movie Star Way"] = 35,
    ["Heritage Way"] = 35,
    ["Perth St"] = 25,
    ["Chianski Passage"] = 30,
    ["Lolita Ave"] = 35,
    ["Meringue Ln"] = 35,
}

SPEEDLIMIT_MPH = 0
SPEEDLIMIT_KPH = 1
SPEEDLIMIT_UNITS = 2

local cache = {}
function GetSpeedlimit(ped, unit)
    unit = unit or SPEEDLIMIT_MPH

    local c = GetEntityCoords(ped)
    local streetHash = GetStreetNameAtCoord(c.x, c.y, c.z)

    if cache[streetHash] then
        return cache[streetHash]
    end

    local street = GetStreetNameFromHashKey(streetHash)

    local limit = nil
    if unit == SPEEDLIMIT_UNITS then
        limit = ( speedLimits[street] or unset ) / 2.236936
    elseif unit == SPEEDLIMIT_MPH then
        limit = speedLimits[street] or unset
    elseif unit == SPEEDLIMIT_KMH then
        limit = speedLimits[street] or unset
    end

    cache[streetHash] = limit
    return limit
end
GetSpeedLimit = GetSpeedlimit
exports("GetSpeedlimit", GetSpeedlimit)
exports("GetSpeedLimit", GetSpeedlimit)

function GetPedAndVehicle()
    local p = PlayerPedId()
    local v = GetVehiclePedIsIn( p, false )

    if v == -1 or not DoesEntityExist( v ) then
        return p, false
    end

    return p, v
end

function ResetVehicleMaxSpeed( v )
    SetEntityMaxSpeed( v, GetVehicleHandlingFloat( v, "CHandlingData", "fInitialDriveMaxFlatVel" ) )
end

local speedlimiter = { }
speedlimiter.active = false
speedlimiter.atSpeedLimit = false

RegisterCommand( '+speedlimiter', function()
    local p, v = GetPedAndVehicle()
    local state = LocalPlayer.state

    if not v then return end
    if GetPedInVehicleSeat( v, -1 ) ~= p then return end

    if speedlimiter.active then
        speedlimiter.active = false
        speedlimiter.atSpeedLimit = false

        print( 'Disabling speed limiter' )
        ResetVehicleMaxSpeed( v )
        return
    end

    speedlimiter.active = true

    print( state.auxIsPressed )
    if state.auxIsPressed then
        speedlimiter.atSpeedLimit = true
        SetEntityMaxSpeed( v, GetSpeedLimit( p, SPEEDLIMIT_UNITS ) )
        print( 'Setting speedlimiter to the speed limit.' )
    else
        speedlimiter.atSpeedLimit = false
        SetEntityMaxSpeed( v, GetEntitySpeed( v ) )
        print( 'Setting speedlimiter to the current entity speed.' )
    end
end )

RegisterCommand( '-speedlimiter', function() end )
RegisterKeyMapping( '+speedlimiter', '(Vehicle) Speedlimiter', 'keyboard', 'tilde' )

do
	local speedlimit = "Loading..."
	Citizen.CreateThread( function()
		while true do
			exports.sample_util:DrawTextRightOfMinimap( exports.sample_util:GetHudColor() .. "Speedlimit: ~w~" .. speedlimit .. " mph", 0.0, 0.06 )
			
			Citizen.Wait( 0 )
		end
	end )
	
	Citizen.CreateThread( function()
		while true do
			local p, v = GetPedAndVehicle()
			speedlimit = GetSpeedlimit( p, SPEEDLIMIT_MPH )

            if speedlimiter.active and speedlimiter.atSpeedLimit then
                SetEntityMaxSpeed( v, GetSpeedLimit( p, SPEEDLIMIT_UNITS ) )
            end
			
			Citizen.Wait( 250 )
		end
	end )
end
