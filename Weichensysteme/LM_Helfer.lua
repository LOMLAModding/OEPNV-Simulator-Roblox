task.wait(1)
--game.Players.LocalPlayer:WaitForChild("Einstellungen"):GetAttribute("Helfer")
if script.Parent:GetAttribute("Grade") == true then
	script.Parent.Parent.BeamGrade1.Enabled = true
	script.Parent.Parent.BeamGrade2.Enabled = true
	script.Parent.Parent.BeamGrade3.Enabled = true
	script.Parent.Parent.BeamKurve1.Enabled = false
	script.Parent.Parent.BeamKurve2.Enabled = false
	script.Parent.Parent.BeamKurve3.Enabled = false
else
	script.Parent.Parent.BeamGrade1.Enabled = false
	script.Parent.Parent.BeamGrade2.Enabled = false
	script.Parent.Parent.BeamGrade3.Enabled = false
	script.Parent.Parent.BeamKurve1.Enabled = true
	script.Parent.Parent.BeamKurve2.Enabled = true
	script.Parent.Parent.BeamKurve3.Enabled = true
end

script.Parent:GetAttributeChangedSignal("Grade"):Connect(function()
	if script.Parent:GetAttribute("Grade") == true then
		script.Parent.Parent.BeamGrade1.Enabled = true
		script.Parent.Parent.BeamGrade2.Enabled = true
		script.Parent.Parent.BeamGrade3.Enabled = true
		script.Parent.Parent.BeamKurve1.Enabled = false
		script.Parent.Parent.BeamKurve2.Enabled = false
		script.Parent.Parent.BeamKurve3.Enabled = false
	else
		script.Parent.Parent.BeamGrade1.Enabled = false
		script.Parent.Parent.BeamGrade2.Enabled = false
		script.Parent.Parent.BeamGrade3.Enabled = false
		script.Parent.Parent.BeamKurve1.Enabled = true
		script.Parent.Parent.BeamKurve2.Enabled = true
		script.Parent.Parent.BeamKurve3.Enabled = true
	end
end)
