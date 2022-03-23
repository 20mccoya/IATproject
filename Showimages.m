%setting up psychtoolbox (followed demo on Canvas)
sca;
close all;
clear all;
PsychDefaultSetup(2);

%Setting everything up - these commands were in multiple demos
Screen('Preference', 'SkipSyncTests', 1);

screens = Screen('Screens');
screenNumber = max(screens);

black = BlackIndex(screenNumber);
white = WhiteIndex(screenNumber);
grey = white / 2;

%opens current window, sets window size, and sets color to white
[window, windowRect] = PsychImaging('OpenWindow', screenNumber, white, [0,0 , 900,900]);
%window is the current screen being displayed

%set the blend function for the window
Screen('BlendFunction', window, 'GL_SRC_ALPHA', 'GL_ONE_MINUS_SRC_ALPHA');

%identify size of window in pixels
[screenXpixels, screenYpixels] = Screen('WindowSize', window);

%START OF BLOCK 3 (first TEST block)
%creating an empty vector to store reaction times of each trial in
block3times = [];

%first test slide
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
    screenYpixels * 0.07, black);

Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'White Americans', 'left' ,...
    screenYpixels * 0.11, [0 1 1]);

Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
    screenYpixels * 0.07, black);

Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', 'right' ,...
    screenYpixels * 0.11, [0 1 1]);

harmless1 = imread('humbrella.jpg');
textureh1 = Screen('MakeTexture', window, harmless1);
Screen('DrawTexture', window, textureh1, [], [300 300 300 300], 0);

Screen('Flip', window);

start_time = GetSecs;
[keyIsDown,secs, key_pressed] = KbCheck; 

tryagain = true; %sets condition for if statement to run
while tryagain
if keyIsDown && key_pressed == 01100101 %ASCII value for E
    reactiontime = secs - start_time;
    block3times = cat(block3times, reactiontime); %adds rt from this trial to block rt vector
    tryagain = false;

    %creating next screen to display
    Screen('TextSize', window, 20);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
    Screen('TextSize', window, 35);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'White Americans', 'left' ,...
        screenYpixels * 0.11, [0 1 1]);
    Screen('TextSize', window, 20);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
    Screen('TextSize', window, 35);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
    harmless2 = imread('humbrella.jpg');
    textureh2 = Screen('MakeTexture', window, harmless2);
    Screen('DrawTexture', window, textureh2, [], [300 300 300 300], 0);

    Screen('Flip', window); %move to next trial in block

elseif keyIsDown && key_pressed ~= 01100101
    %construct an identical display but w/ an X

    Screen('Flip', window); %shows same trial but w/ an X
    tryagain = true; %
end %ends if statement
end %ends while tryagain statement for this block

%I think that this code can just continue with another if statement b/c
%once try again is not true, the if statement will show the next image

%after all trials in the block:
block3meanrt = mean(block3times); %stores the mean reaction time for block 1

%calculating the D-score (measure of implicit bias):
pooledblocks3and6 = [block3times, block6times];
D1 = (block6meanrt - block3meanrt)/std(pooledblocks3and6);
pooledblocks4and7 = [block4times, block7times];
D2 = (block7meanrt - block4meanrt)/std(pooledblocks4and7);
finalDscore = (D1+D2)/2;

%if statement interprets d-score and stores in level_of_bias 
if finalDscore <= 0.15
    level_of_bias = 'You results do not indicate implicit bias';
elseif finalDscore > 0.15 && finalDscore < 0.35
    level_of_bias = 'Your results indicate a low level of implicit bias';
elseif finalDscore >= 0.35 && finalDscore < 0.65
    level_of_bias = 'Your results indicate a moderate level of implicit bias';
elseif finalDscore >= 0.65
    level_of_bias = 'Your results indicate a high level of implicit bias';
end

%create a screen to display level_of_bias

