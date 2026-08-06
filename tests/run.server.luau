local ReplicatedStorage = game:GetService("ReplicatedStorage")

local TestEZModule = ReplicatedStorage:FindFirstChild("TestEZ")
if not TestEZModule then
    error("ReplicatedStorage.TestEZ is required. Run `make test-place` or use the Avant Plugin to run .spec tests.")
end

local TestEZ = require(TestEZModule)
local testsRoot = ReplicatedStorage:WaitForChild("Tests")

_G.__VOLCANO_TEST_HELPERS = {
    requireUtility = function(name)
        return require(ReplicatedStorage.Volcano.utility[name])
    end,
    requireComponent = function(name)
        return require(ReplicatedStorage.Volcano.components[name])
    end,
    requireTheme = function(name)
        return require(ReplicatedStorage.Volcano.themes[name])
    end,
    requireVolcano = function()
        return require(ReplicatedStorage.Volcano)
    end,
}
_G.__VOLCANO_TEST_VERBOSE_LOGS = _G.__VOLCANO_TEST_VERBOSE_LOGS == true

-- gag Volcano's console output during test runs unless verbose logs are on. this is the
-- runner's job, not the library's: src must not know about test environments.
local log = require(ReplicatedStorage.Volcano.utility.log)
log.setSuppressPredicate(function()
    return _G.__VOLCANO_TEST_VERBOSE_LOGS ~= true
end)

local results = TestEZ.TestBootstrap:run({ testsRoot }, TestEZ.Reporters.TextReporter, {
    showTimingInfo = true,
})

if results.failureCount > 0 then
    error(string.format("%d TestEZ tests failed.", results.failureCount))
end
