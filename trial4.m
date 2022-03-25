% Hayley spend about 3 hours writing and debugging this code. 

% Here we call some default settings for setting up Psychtoolbox
Screen('Preference', 'SkipSyncTests', 1);
PsychDefaultSetup(2);

% Get the screen numbers
screens = Screen('Screens');
% Select the external screen if it is present, else revert to the native
% screen
screenNumber = max(screens);

% Define black, white and grey
black = BlackIndex(screenNumber);
white = WhiteIndex(screenNumber);
grey = white / 2;

% Open an on screen window and color it grey
[window, windowRect] = PsychImaging('OpenWindow', screenNumber, white, [0,0 , 900,900]);

% Set the blend funciton for the screen
Screen('BlendFunction', window, 'GL_SRC_ALPHA', 'GL_ONE_MINUS_SRC_ALPHA');

% Get the size of the on screen window in pixels
% For help see: Screen WindowSize?
[screenXpixels, screenYpixels] = Screen('WindowSize', window);

% Get the centre coordinate of the window in pixels
% For help see: help RectCenter
[xCenter, yCenter] = RectCenter(windowRect);

% FULL INSTRUCTIONS FOR TRIAL 4
% Corner Instructions
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
   screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', 'left' ,...
   screenYpixels * 0.11, [0 1 1]);
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
   screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'White Americans', 'right' ,...
   screenYpixels * 0.11, [0 1 1]);
% Draw text in the middle of the screen in Courier in white
Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Part 4 of 5', screenXpixels * 0.46, screenYpixels * 0.36, black);
Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Put a left finger on the E key for items that belong to the category', screenXpixels * 0.1, screenYpixels * 0.41, black);
Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', screenXpixels * 0.38, screenYpixels * 0.44, [0 1 1]);
Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Put a right finger on the I key for items that belong to the category', screenXpixels * 0.1, screenYpixels * 0.50, black);
Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'White Americans', screenXpixels * 0.38, screenYpixels * 0.53, [0 1 1]);
Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'If you make a mistake, a red       will appear. Press the other key to continue', screenXpixels * 0.05, screenYpixels * 0.70, black);
Screen('TextSize', window, 29);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'X', screenXpixels * 0.41, screenYpixels * 0.70, [1 0 0]);
Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Go as fast as you can while being accurate!', screenXpixels * 0.24, screenYpixels * 0.73, black);
% Draw text in the bottom of the screen in Times in blue
Screen('TextSize', window, 30);
Screen('TextFont', window, 'Times');
DrawFormattedText(window, 'press any key to continue', screenXpixels * 0.33,...
   screenYpixels * 0.85, grey);
% Flip to the screen
Screen('Flip', window);
KbStrokeWait;

% START TRIAL 3
% Load Instructions (Image 1) 
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
   screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', 'left' ,...
   screenYpixels * 0.11, [0 1 1]);
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
   screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'White Americans', 'right' ,...
   screenYpixels * 0.11, [0 1 1]);

% Load Image 1 (White American)
wm1=imread("wm1.jpg"); 
wm1Texture=Screen('MakeTexture', window, wm1); 
Screen('DrawTexture', window, wm1Texture, [],[],0); 
Screen('Flip', window); 

% Create a vector to store block reaction times 
trial4_times=[]; 

% RESPONSE TO IMAGE 1 (White American)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,12)== 1 % i key
        reactiontime=secs-start_time; 
        trial4_times=[trial4_times, reactiontime]; 
        % Load Instructions (Image 2) 
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);
        % Load Image 2 (Black American)
        bf56=imread("bf56.jpg"); 
        bf56Texture=Screen('MakeTexture', window, bf56); 
        Screen('DrawTexture', window, bf56Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=false; 
    elseif keyCode(1,12)~= 1 %anything other than i 
        % Load Instructions (Image 1)
         Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);
        % Load Image 1 (White American)
        Screen('DrawTexture', window, wm1Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 2 (Black American)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,8)== 1 % e key
        reactiontime=secs-start_time; 
        trial4_times=[trial4_times, reactiontime]; 
        % Load Instructions (Image 3) 
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);
        % Load Image 3 (Black American)
        bm14=imread("bm14.jpg"); 
        bm14Texture=Screen('MakeTexture', window, bm14); 
        Screen('DrawTexture', window, bm14Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=false; 
    elseif keyCode(1,8)~= 1 %anything other than e 
        % Load Instructions (Image 2)
         Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);
        % Load Image 2 (Black American)
        Screen('DrawTexture', window, bf56Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 3 (Black American)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,8)== 1 % e key
        reactiontime=secs-start_time; 
        trial4_times=[trial4_times, reactiontime]; 
        % Load Instructions (Image 4) 
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);
        % Load Image 4 (White American)
        wf6=imread("wf6.jpg"); 
        wf6Texture=Screen('MakeTexture', window, wf6); 
        Screen('DrawTexture', window, wf6Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=false; 
    elseif keyCode(1,8)~= 1 %anything other than e 
        % Load Instructions (Image 3)
         Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);
        % Load Image 3 (Black American)
        Screen('DrawTexture', window, bm14Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 4 (White American)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,12)== 1 % i key
        reactiontime=secs-start_time; 
        trial4_times=[trial4_times, reactiontime]; 
        % Load Instructions (Image 5) 
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);
        % Load Image 5 (Black American)
        bm23=imread("bm23.jpg"); 
        bm23Texture=Screen('MakeTexture', window, bm23); 
        Screen('DrawTexture', window, bm23Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=false; 
    elseif keyCode(1,12)~= 1 %anything other than i 
        % Load Instructions (Image 4)
         Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);
        % Load Image 4 (White American)
        Screen('DrawTexture', window, wf6Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 5 (Black American)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,8)== 1 % e key
        reactiontime=secs-start_time; 
        trial4_times=[trial4_times, reactiontime]; 
        % Load Instructions (Image 6) 
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);
        % Load Image 6 (White American)
        wm4=imread("wm4.jpg"); 
        wm4Texture=Screen('MakeTexture', window, wm4); 
        Screen('DrawTexture', window, wm4Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=false; 
    elseif keyCode(1,8)~= 1 %anything other than e 
        % Load Instructions (Image 5)
         Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);
        % Load Image 5 (Black American)
        Screen('DrawTexture', window, bm23Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 6 (White American)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,12)== 1 % i key
        reactiontime=secs-start_time; 
        trial4_times=[trial4_times, reactiontime]; 
        % Load Instructions (Image 7) 
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);
        % Load Image 7 (White American)
        wf3=imread("wf3.jpg"); 
        wf3Texture=Screen('MakeTexture', window, wf3); 
        Screen('DrawTexture', window, wf3Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=false; 
    elseif keyCode(1,12)~= 1 %anything other than i 
        % Load Instructions (Image 6)
         Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);
        % Load Image 6 (White American)
        Screen('DrawTexture', window, wm4Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 7 (White American)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,12)== 1 % i key
        reactiontime=secs-start_time; 
        trial4_times=[trial4_times, reactiontime]; 
        % Load Instructions (Image 8) 
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);
        % Load Image 8 (Black American)
        bf23=imread("bf23.jpg"); 
        bf23Texture=Screen('MakeTexture', window, bf23); 
        Screen('DrawTexture', window, bf23Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=false; 
    elseif keyCode(1,12)~= 1 %anything other than i 
        % Load Instructions (Image 7)
         Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);
        % Load Image 7 (White American)
        Screen('DrawTexture', window, wf3Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 8 (Black American)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,8)== 1 % e key
        reactiontime=secs-start_time; 
        trial4_times=[trial4_times, reactiontime]; 
        % Load Instructions (Image 9) 
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);
        % Load Image 9 (White American)
        wf2=imread("wf2.jpg"); 
        wf2Texture=Screen('MakeTexture', window, wf2); 
        Screen('DrawTexture', window, wf2Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=false; 
    elseif keyCode(1,8)~= 1 %anything other than e 
        % Load Instructions (Image 8)
         Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);
        % Load Image 8 (Black American)
        Screen('DrawTexture', window, bf23Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 9 (White American)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,12)== 1 % i key
        reactiontime=secs-start_time; 
        trial4_times=[trial4_times, reactiontime]; 
        % Load Instructions (Image 10) 
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);
        % Load Image 10 (White American)
        wm6=imread("wm6.jpg"); 
        wm6Texture=Screen('MakeTexture', window, wm6); 
        Screen('DrawTexture', window, wm6Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=false; 
    elseif keyCode(1,12)~= 1 %anything other than i 
        % Load Instructions (Image 9)
         Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);
        % Load Image 9 (White American)
        Screen('DrawTexture', window, wf2Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 10 (White American)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,12)== 1 % i key
        reactiontime=secs-start_time; 
        trial4_times=[trial4_times, reactiontime]; 
        % Load Instructions (Image 11) 
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);
        % Load Image 11 (Black American)
        bf14=imread("bf14.jpg"); 
        bf14Texture=Screen('MakeTexture', window, bf14); 
        Screen('DrawTexture', window, bf14Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=false; 
    elseif keyCode(1,12)~= 1 %anything other than i 
        % Load Instructions (Image 10)
         Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);
        % Load Image 10 (White American)
        Screen('DrawTexture', window, wm6Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 11 (Black American)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,8)== 1 % e key
        reactiontime=secs-start_time; 
        trial4_times=[trial4_times, reactiontime]; 
        % Load Instructions (Image 12) 
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);
        % Load Image 12 (Black American)
        bm56=imread("bm56.jpg"); 
        bm56Texture=Screen('MakeTexture', window, bm56); 
        Screen('DrawTexture', window, bm56Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=false; 
    elseif keyCode(1,8)~= 1 %anything other than e 
        % Load Instructions (Image 11)
         Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);
        % Load Image 11 (Black American)
        Screen('DrawTexture', window, bf14Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 12 (Black American)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,8)== 1 % e key
        reactiontime=secs-start_time; 
        trial4_times=[trial3_times, reactiontime]; 
        % Load Instruction Screen for Trial 5 
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
          screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'OR', screenXpixels * 0.1 ,...
          screenYpixels * 0.15, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
          screenYpixels * 0.2, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'OR', screenXpixels * 0.85 ,...
          screenYpixels * 0.15, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', screenXpixels * 0.78,...
          screenYpixels * 0.2, [0 1 1]);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'right' ,...
         screenYpixels * 0.11, [0 1 1]);

        % Draw text in the middle of the screen in Courier in white
        Screen('TextSize', window, 25);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Part 5 of 5', screenXpixels * 0.44, screenYpixels * 0.36, black);
        Screen('TextSize', window, 25);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Put a left finger on the E key for items that belong to the category', screenXpixels * 0.1, screenYpixels * 0.41, black);
        Screen('TextSize', window, 30);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', screenXpixels * 0.38, screenYpixels * 0.45, [0 1 1]);
        Screen('TextSize', window, 25);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'OR', screenXpixels * 0.48, screenYpixels * 0.49, black);
        Screen('TextSize', window, 30);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', screenXpixels * 0.43, screenYpixels * 0.53, [0 1 1]);
        Screen('TextSize', window, 25);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Put a right finger on the I key for items that belong to the category', screenXpixels * 0.1, screenYpixels * 0.6, black);
        Screen('TextSize', window, 30);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', screenXpixels * 0.38, screenYpixels * 0.65, [0 1 1]);
        Screen('TextSize', window, 30);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', screenXpixels * 0.38, screenYpixels * 0.73, [0 1 1]);
        Screen('TextSize', window, 25);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'OR', screenXpixels * 0.48, screenYpixels * 0.69, black);
        Screen('TextSize', window, 25);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'If you make a mistake, a red       will appear. Press the other key to continue', screenXpixels * 0.05, screenYpixels * 0.80, black);
        Screen('TextSize', window, 29);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'X', screenXpixels * 0.41, screenYpixels * 0.8, [1 0 0]);
        Screen('TextSize', window, 25);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Go as fast as you can while being accurate!', screenXpixels * 0.24, screenYpixels * 0.92, black);
        % Draw text in the bottom of the screen in Times in blue
        Screen('TextSize', window, 30);
        Screen('TextFont', window, 'Times');
        DrawFormattedText(window, 'press any key to continue', screenXpixels * 0.33,...
          screenYpixels * 0.85, grey);
        % Flip to the screen
        Screen('Flip', window);
        KbStrokeWait; 

    elseif keyCode(1,8)~= 1 %anything other than e 
        % Load Instructions (Image 12)
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
        DrawFormattedText(window, 'OR', screenXpixels * 0.1 ,...
        screenYpixels * 0.15, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
        screenYpixels * 0.2, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
           screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'OR', screenXpixels * 0.85 ,...
        screenYpixels * 0.15, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', screenXpixels * 0.78,...
        screenYpixels * 0.2, [0 1 1]);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 12 (Black American)
        Screen('DrawTexture', window, bm56Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% Here the correct response should lead to the next instructional page. 


       
