function onCreate()
	makeLuaSprite('ground', 'bgs/baseplate', -630, -460);
	scaleObject('ground', 1, 1);
	setScrollFactor('ground', 1, 1);

      	setProperty("defaultCamZoom",0.75)

	addLuaSprite('ground', false);
end

function onUpdate()
	setProperty('gf.alpha', 0);
	setProperty('boyfriend.alpha', 0);
end

local angleshit = 1;
local anglevar = 1;
function onBeatHit()
    if curBeat >= 0 then
        if curBeat % 2 == 0 then
            angleshit = anglevar;
        else
            angleshit = -anglevar;
        end
        setProperty('camHUD.angle',angleshit*3)
        setProperty('camGame.angle',angleshit*3)
        runTimer('redo',0.00001 )
	triggerEvent('Add Camera Zoom','0.05','0.05')
        if downscroll == false then
            noteTweenY('NoteMove5', 4, 50, 0.01, 'sineOut')
            noteTweenY('NoteMove6', 5, 50, 0.01, 'sineOut')
            noteTweenY('NoteMove7', 6, 50, 0.01, 'sineOut')
            noteTweenY('NoteMove8', 7, 50, 0.01, 'sineOut')
            noteTweenY('NoteMove1', 0, 50, 0.01, 'sineOut')
            noteTweenY('NoteMove2', 1, 50, 0.01, 'sineOut')
            noteTweenY('NoteMove3', 2, 50, 0.01, 'sineOut')
            noteTweenY('NoteMove4', 3, 50, 0.01, 'sineOut')
                for i = 0, 7 do
                    setPropertyFromGroup('strumLineNotes',i,'y', 60)
                end
        end
        if downscroll == true then
            noteTweenY('NoteMove5', 4, 550, 0.01, 'sineOut')
            noteTweenY('NoteMove6', 5, 550, 0.01, 'sineOut')
            noteTweenY('NoteMove7', 6, 550, 0.01, 'sineOut')
            noteTweenY('NoteMove8', 7, 550, 0.01, 'sineOut')
            noteTweenY('NoteMove1', 0, 550, 0.01, 'sineOut')
            noteTweenY('NoteMove2', 1, 550, 0.01, 'sineOut')
            noteTweenY('NoteMove3', 2, 550, 0.01, 'sineOut')
            noteTweenY('NoteMove4', 3, 550, 0.01, 'sineOut')
                for i = 0, 7 do
                    setPropertyFromGroup('strumLineNotes',i,'y', 540)
                end
        end

        doTweenAngle('turn', 'camHUD', 0, stepCrochet*0.003, 'circOut')
        doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
        doTweenAngle('tt', 'camGame', 0, stepCrochet*0.003, 'circOut')
        doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')

    end
end

function onTimerCompleted(tag, loops, loopsLeft)
    if tag == 'redo' then
        if downscroll == false then
            noteTweenY('NoteMove5', 4, 50, stepCrochet*0.003, 'sineOut')
            noteTweenY('NoteMove6', 5, 50, stepCrochet*0.003, 'sineOut')
            noteTweenY('NoteMove7', 6, 50, stepCrochet*0.003, 'sineOut')
            noteTweenY('NoteMove8', 7, 50, stepCrochet*0.003, 'sineOut')
            noteTweenY('NoteMove1', 0, 50, stepCrochet*0.003, 'sineOut')
            noteTweenY('NoteMove2', 1, 50, stepCrochet*0.003, 'sineOut')
            noteTweenY('NoteMove3', 2, 50, stepCrochet*0.003, 'sineOut')
            noteTweenY('NoteMove4', 3, 50, stepCrochet*0.003, 'sineOut')
        end
        if downscroll == true then
            noteTweenY('NoteMove5', 4, 550, stepCrochet*0.003, 'sineOut')
            noteTweenY('NoteMove6', 5, 550, stepCrochet*0.003, 'sineOut')
            noteTweenY('NoteMove7', 6, 550, stepCrochet*0.003, 'sineOut')
            noteTweenY('NoteMove8', 7, 550, stepCrochet*0.003, 'sineOut')
            noteTweenY('NoteMove1', 0, 550, stepCrochet*0.003, 'sineOut')
            noteTweenY('NoteMove2', 1, 550, stepCrochet*0.003, 'sineOut')
            noteTweenY('NoteMove3', 2, 550, stepCrochet*0.003, 'sineOut')
            noteTweenY('NoteMove4', 3, 550, stepCrochet*0.003, 'sineOut')
        end
    end
end
