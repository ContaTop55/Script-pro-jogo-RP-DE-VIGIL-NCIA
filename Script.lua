local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("John hub", "DarkTheme")
local Tab = Window:NewTab("TROLL")
local Section = Tab:NewSection("SO PODE PEGAR UMA VEZ OS ITEMS")
Section:NewButton("Pegar tazer", "ButtonInfo", function()
-- Teleporte temporário com retorno após 2 segundos
local player = game.Players.LocalPlayer
local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")

if hrp then
	-- Salva a posição original do jogador
	local originalCFrame = hrp.CFrame

	-- Teleporta para o destino
	hrp.CFrame = CFrame.new(
		12.7345562, 0.276707202, -283.497314,
		0.00481452234, -0.384842336, 0.922969759,
		-0.0146100344, 0.9228549, 0.384870648,
		-0.999881685, -0.0153375892, -0.00117945438
	)

	-- Aguarda 2 segundos
	task.wait(2)

	-- Teleporta de volta para onde estava
	hrp.CFrame = originalCFrame
end
print("Tazer pego com sucesso!!")
end)

Section:NewButton("Pegar cacetete", "ButtonInfo", function()
-- Teleporte temporário com retorno após 2 segundos
local player = game.Players.LocalPlayer
local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")

if hrp then
	-- Salva a posição e rotação original
	local originalCFrame = hrp.CFrame

	-- Teleporta para novo local (com rotação)
	hrp.CFrame = CFrame.new(
		25.1412544, 0.268630564, -284.013611,
		-0.267543674, 0.963497043, 0.00972082838,
		0.963546038, 0.267528534, 0.00280296127,
		0.000100043602, 0.0101163769, -0.999949336
	)

	-- Aguarda 2 segundos
	task.wait(2)

	-- Volta para a posição original
	hrp.CFrame = originalCFrame
end
print("Cacetete pego com sucesso!!")
end)

Section:NewButton("Infinite Yield", "ButtonInfo", function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    print("Infinite Yield executado com sucesso")
end)

Section:NewButton("Invisibilidade FE", "ButtonInfo", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/khen791/script-khen/refs/heads/main/Fe%20Invisible.txt", true))()
    print("Invisibilidade ativada")
end)

Section:NewButton("Pegar tazer 2", "ButtonInfo", function()
-- Teleporte temporário com retorno após 2 segundos
local player = game.Players.LocalPlayer
local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")

if hrp then
	-- Salva a posição original do jogador
	local originalCFrame = hrp.CFrame

	-- Teleporta para o novo local (com rotação)
	hrp.CFrame = CFrame.new(
		9.60941696, 3.47241735, -274.066193,          -- posição (X, Y, Z)
		0.211853936, 0.0179710407, -0.977136254,      -- rotação X
		8.5358451e-08, 0.999831021, 0.0183882136,     -- rotação Y
		0.977301598, -0.00389574864, 0.211818099      -- rotação Z
	)

	-- Aguarda 2 segundos
	task.wait(2)

	-- Teleporta de volta para onde estava
	hrp.CFrame = originalCFrame
end
    print("Tazer 2 pego com sucesso!!")
end)

local Tab = Window:NewTab("TELEPORT")
local Section = Tab:NewSection("TODOS FUNCIONANDO")
Section:NewButton("Base segurança", "ButtonInfo", function()
-- Teleporte com CFrame completo (posição + rotação)
local player = game.Players.LocalPlayer
local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")

if hrp then
	hrp.CFrame = CFrame.new(
		-8.14464951, 14.6405926, -198.984909,         -- posição (X, Y, Z)
		-0.256309986, 0.0360002555, 0.965924084,      -- rotação X
		0.139165238, 0.990269184, 2.01761723e-05,     -- rotação Y
		-0.956524074, 0.134428218, -0.258825779       -- rotação Z
	)
end
    print("Teleportado(a) para a base segurança")
end)

Section:NewButton("Base MDC", "ButtonInfo", function()
-- Teleporte com CFrame completo (posição + rotação)
local player = game.Players.LocalPlayer
local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")

if hrp then
	hrp.CFrame = CFrame.new(
		244.984787, 4, -643.151367,       -- posição (X, Y, Z)
		0.087131381, 0, 0.996196866,      -- rotação X
		0, 1, 0,                          -- rotação Y
		-0.996196866, 0, 0.087131381      -- rotação Z
	)
end
    print("Teleportado(a) para a base MDC")
end)

local Tab = Window:NewTab("OUTROS")
local Section = Tab:NewSection("ATIVE O ESP NOVAMENTE QUANDO MORRER")
Section:NewButton("ESP", "ButtonInfo", function()
-- ESP com TeamChecker, highlight + nome/vida, desativa ao morrer
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

-- Cria ESP para cada jogador (exceto você)
local function createESP(player)
    if player == LocalPlayer then return end
    local character = player.Character or player.CharacterAdded:Wait()
    local head = character:WaitForChild("Head")
    local hrp = character:WaitForChild("HumanoidRootPart")
    local humanoid = character:WaitForChild("Humanoid")

    -- Highlight (caixa colorida ao redor do jogador)
    local highlight = Instance.new("Highlight")
    highlight.Name = "JohnESP"
    highlight.Adornee = character
    highlight.Parent = character
    highlight.FillTransparency = 1
    highlight.OutlineTransparency = 0

    -- Text Billboard acima da cabeça
    local billboard = Instance.new("BillboardGui")
    billboard.Name = "JohnText"
    billboard.Adornee = head
    billboard.Size = UDim2.new(0, 200, 0, 30)
    billboard.StudsOffset = Vector3.new(0, 2.5, 0)
    billboard.AlwaysOnTop = true
    billboard.Parent = head

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextScaled = true
    textLabel.Font = Enum.Font.SourceSansBold
    textLabel.Parent = billboard

    -- Atualizador
    local connection
    connection = RunService.RenderStepped:Connect(function()
        if not character or not character.Parent or humanoid.Health <= 0 then
            if highlight then highlight:Destroy() end
            if billboard then billboard:Destroy() end
            connection:Disconnect()
            return
        end

        -- Atualiza Highlight e texto
        local sameTeam = player.Team == LocalPlayer.Team
        highlight.OutlineColor = player.TeamColor.Color

        if sameTeam then
            textLabel.Text = player.Name .. " | TEAM | " .. math.floor(humanoid.Health)
            textLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
        else
            textLabel.Text = player.Name .. " | " .. math.floor(humanoid.Health)
            textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        end
    end)
end

-- Ativa ESP para todos os jogadores existentes
for _, player in ipairs(Players:GetPlayers()) do
    if player ~= LocalPlayer then
        createESP(player)
    end
end

-- Quando jogadores novos entrarem
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        task.wait(1) -- pequeno atraso para carregar o personagem
        createESP(player)
    end)
end)

-- Remove ESP ao morrer
LocalPlayer.CharacterAdded:Connect(function(char)
    char:WaitForChild("Humanoid").Died:Connect(function()
        for _, p in ipairs(Players:GetPlayers()) do
            if p.Character and p.Character:FindFirstChild("JohnESP") then
                p.Character:FindFirstChild("JohnESP"):Destroy()
            end
            if p.Character and p.Character:FindFirstChild("Head") and p.Character.Head:FindFirstChild("JohnText") then
                p.Character.Head:FindFirstChild("JohnText"):Destroy()
            end
        end
    end)
end)
    print("ESP ativado com sucesso")
end)

local Tab = Window:NewTab("Créditos")
local Section = Tab:NewSection("Criado por: CleitonDoPneue")
