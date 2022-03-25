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

%% TRIAL 2 STARTS HERE 
% Instructions for Trial 2 
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
   screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Harmless Objects', 'left' ,...
   screenYpixels * 0.11, [0 1 1]);
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
   screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Weapons', 'right' ,...
   screenYpixels * 0.11, [0 1 1]);

% Draw text in the middle of the screen in Courier in white
Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Part 2 of 7', screenXpixels * 0.46, screenYpixels * 0.36, black);
Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Put a left finger on the E key for items that belong to the category', screenXpixels * 0.1, screenYpixels * 0.41, black);
Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Harmless Objects', screenXpixels * 0.38, screenYpixels * 0.44, [0 1 1]);
Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Put a right finger on the I key for items that belong to the category', screenXpixels * 0.1, screenYpixels * 0.50, black);
Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Weapons', screenXpixels * 0.43, screenYpixels * 0.53, [0 1 1]);
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

% START TRIAL 2
% Load Instructions (Image 1)
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
   screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Harmless Objects', 'left' ,...
   screenYpixels * 0.11, [0 1 1]);
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
   screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Weapons', 'right' ,...
   screenYpixels * 0.11, [0 1 1]);

%Load Image 1 (Backpack)
hbackpack=imread("hbackpack.jpg"); 

% Get the size of the image 
[s1, s2, s3]=size(hbackpack);

% Make image into a texture 
hbackpackTexture = Screen('MakeTexture', window, hbackpack); 

% Draw image to the screen
Screen('DrawTexture', window, hbackpackTexture, [], [], 0); 

% Flip image to the screen 
Screen('Flip', window); 

% REPONSE TO IMAGE 1 (Backpack) - Practice round, times not actually
% recorded 
start_time=GetSecs; % Records time of image presentation
tryagain=true; % Sets condition for if statement to run 
while tryagain 
    [secs, keyCode, deltasecs] = KbPressWait; 
    if keyCode(1,8)==1 % e keypress 
        reactiontime=secs-start_time;
        trial_2_times=[trial_2_times, reactiontime]; 
        %Load Instructions (Image 2)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);

        % Load Image 2 (Keychain)
        hkeychain=imread("hkeychain.jpg"); 

        % Get the size of the image 
        [s1, s2, s3]=size(hkeychain);

        % Make image into a texture 
        hkeychainTexture = Screen('MakeTexture', window, hkeychain); 

        % Draw image to teh screen
        Screen('DrawTexture', window, hkeychainTexture, [], [], 0); 

        % Flip image to the screen 
        Screen('Flip', window); 
        tryagain=false; 
    elseif keyCode(1,8)~= 1 % if anything other than e pressed 
        % Load Instructions (Image 1)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
         screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
            screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
            screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
            screenYpixels * 0.11, [0 1 1]);
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
        % Load Image 1 (Backpack) 
        Screen('DrawTexture', window, hbackpackTexture, [],[], 0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 2 (Keychain)
start_time=GetSecs; % Records time of image presentation
tryagain=true; % Sets condition for if statement to run 
while tryagain 
    [secs, keyCode, deltasecs] = KbPressWait; 
    if keyCode(1,8)==1 % e keypress 
        reactiontime=secs-start_time;
        trial_2_times=[trial_2_times, reactiontime]; 
        %Load Instructions (Image 3)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 3 (Dynamite)
        wdynamite=imread("wdynamite.jpg"); 

        % Get the size of the image 
        [s1, s2, s3]=size(wdynamite);

        % Make image into a texture 
        wdynamiteTexture = Screen('MakeTexture', window, wdynamite); 

        % Draw image to the screen
        Screen('DrawTexture', window, wdynamiteTexture, [], [], 0); 

        % Flip iamge to the screen 
        Screen('Flip', window); 

        tryagain=false; 
    elseif keyCode(1,8) ~= 1 % anything other than e pressed 
         %Load Instructions (Image 2)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        %Draw red 'x' on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
        %Load Image 2 (Keychain)
        Screen('DrawTexture', window, hkeychainTexture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 3 (Dynamite)
start_time=GetSecs; % Records time of image presentation
tryagain=true; % Sets condition for if statement to run 
while tryagain 
    [secs, keyCode, deltasecs] = KbPressWait; 
    if keyCode(1,12)==1 % I keypress 
        reactiontime=secs-start_time;
        trial_2_times=[trial_2_times, reactiontime]; 
        %Load Instructions (Image 4)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 4 (Umbrella)
        humbrella=imread("humbrella.jpg"); 

        % Get the size of the image 
        [s1, s2, s3]=size(humbrella);

        % Make image into a texture 
        humbrellaTexture = Screen('MakeTexture', window, humbrella); 

        % Draw image to the screen
        Screen('DrawTexture', window, humbrellaTexture, [], [], 0); 

        % Flip iamge to the screen 
        Screen('Flip', window); 

        tryagain=false; 
    elseif keyCode(1,12) ~= 1 % anything other than i pressed 
         %Load Instructions (Image 3)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        %Draw red 'x' on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
        %Load Image 3 (Dynamite)
        Screen('DrawTexture', window, wdynamiteTexture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 4 (Umbrella)
start_time=GetSecs; % Records time of image presentation
tryagain=true; % Sets condition for if statement to run 
while tryagain 
    [secs, keyCode, deltasecs] = KbPressWait; 
    if keyCode(1,8)==1 % e keypress 
        reactiontime=secs-start_time;
        trial_2_times=[trial_2_times, reactiontime]; 
        %Load Instructions (Image 5)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 5 (Automatic Rifle)
        wautomaticrifle=imread("wautomaticrifle.jpg"); 

        % Make image into a texture 
        wautomaticrifleTexture = Screen('MakeTexture', window, wautomaticrifle); 

        % Draw image to the screen
        Screen('DrawTexture', window, wautomaticrifleTexture, [], [], 0); 

        % Flip iamge to the screen 
        Screen('Flip', window); 

        tryagain=false; 
    elseif keyCode(1,8) ~= 1 % anything other than e pressed 
         %Load Instructions (Image 4)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        %Draw red 'x' on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
        %Load Image 4 (Umbrella)
        Screen('DrawTexture', window, humbrellaTexture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 5 (Automatic Rifle)
start_time=GetSecs; % Records time of image presentation
tryagain=true; % Sets condition for if statement to run 
while tryagain 
    [secs, keyCode, deltasecs] = KbPressWait; 
    if keyCode(1,12)==1 % I keypress 
        reactiontime=secs-start_time;
        trial_2_times=[trial_2_times, reactiontime]; 
        %Load Instructions (Image 6)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 6 (Brass Knuckles)
        wbrassknuckles=imread("wbrassknuckles.jpg"); 

        % Get the size of the image 
        [s1, s2, s3]=size(wbrassknuckles);

        % Make image into a texture 
        wbrassknucklesTexture = Screen('MakeTexture', window, wbrassknuckles); 

        % Draw image to the screen
        Screen('DrawTexture', window, wbrassknucklesTexture, [], [], 0); 

        % Flip iamge to the screen 
        Screen('Flip', window); 

        tryagain=false; 
    elseif keyCode(1,12) ~= 1 % anything other than i pressed 
         %Load Instructions (Image 5)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        %Draw red 'x' on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
        %Load Image 5 (Automatic Rifle)
        Screen('DrawTexture', window, wautomaticrifleTexture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 6 (Brass Knuckles)
start_time=GetSecs; % Records time of image presentation
tryagain=true; % Sets condition for if statement to run 
while tryagain 
    [secs, keyCode, deltasecs] = KbPressWait; 
    if keyCode(1,12)==1 % I keypress 
        reactiontime=secs-start_time;
        trial_2_times=[trial_2_times, reactiontime]; 
        %Load Instructions (Image 7)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 7
        wshotgun=imread("wshotgun.jpg"); 

        % Get the size of the image 
        [s1, s2, s3]=size(wshotgun);

        % Make image into a texture 
        wshotgunTexture = Screen('MakeTexture', window, wshotgun); 

        % Draw image to the screen
        Screen('DrawTexture', window, wshotgunTexture, [], [], 0); 

        % Flip iamge to the screen 
        Screen('Flip', window); 

        tryagain=false; 
    elseif keyCode(1,12) ~= 1 % anything other than i pressed 
         %Load Instructions (Image 6)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        %Draw red 'x' on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
        %Load Image 8 
        Screen('DrawTexture', window, wbrassknucklesTexture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 7 (Shotgun)
tryagain=true; % Sets condition for if statement to run 
while tryagain 
    [secs, keyCode, deltasecs] = KbPressWait; 
    if keyCode(1,12)==1 % I keypress 
        %Load Instructions (Image 8)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 8 (Notebook)
        hnotebook=imread("hnotebook.jpg"); 

        % Get the size of the image 
        [s1, s2, s3]=size(humbrella);

        % Make image into a texture 
        hnotebookTexture = Screen('MakeTexture', window, hnotebook); 

        % Draw image to the screen
        Screen('DrawTexture', window, hnotebookTexture, [], [], 0); 

        % Flip iamge to the screen 
        Screen('Flip', window); 

        tryagain=false; 
    elseif keyCode(1,12) ~= 1 % anything other than i pressed 
         %Load Instructions (Image 7)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        %Draw red 'x' on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
        %Load Image 7
        Screen('DrawTexture', window, wshotgunTexture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 8 (Notebook)
tryagain=true; % Sets condition for if statement to run 
while tryagain 
    [secs, keyCode, deltasecs] = KbPressWait; 
    if keyCode(1,8)==1 % e keypress 
        %Load Instructions (Image 9)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 9(Handgun)
        whandgun=imread("whandgun.jpg"); 

        % Get the size of the image 
        [s1, s2, s3]=size(whandgun);

        % Make image into a texture 
        whandgun = Screen('MakeTexture', window, whandgun); 

        % Draw image to the screen
        Screen('DrawTexture', window, whandgun, [], [], 0); 

        % Flip iamge to the screen 
        Screen('Flip', window); 

        tryagain=false; 
    elseif keyCode(1,8) ~= 1 % anything other than e pressed 
         %Load Instructions (Image 8)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        %Draw red 'x' on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
        %Load Image 8 
        Screen('DrawTexture', window, hnotebookTexture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 9 (Handgun)
tryagain=true; % Sets condition for if statement to run 
while tryagain 
    [secs, keyCode, deltasecs] = KbPressWait; 
    if keyCode(1,12)==1 % I keypress 
        %Load Instructions (Image 10)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 10
        htoothbrush=imread("htoothbrush.jpg"); 

        % Get the size of the image 
        [s1, s2, s3]=size(htoothbrush);

        % Make image into a texture 
        htoothbrushTexture = Screen('MakeTexture', window, htoothbrush); 

        % Draw image to the screen
        Screen('DrawTexture', window, htoothbrushTexture, [], [], 0); 

        % Flip iamge to the screen 
        Screen('Flip', window); 

        tryagain=false; 
    elseif keyCode(1,12) ~= 1 % anything other than i pressed 
         %Load Instructions (Image 9)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        %Draw red 'x' on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
        %Load Image 9 
        Screen('DrawTexture', window, whandgunTexture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 


% RESPONSE TO IMAGE 10 
start_time=GetSecs; % Records time of image presentation
tryagain=true; % Sets condition for if statement to run 
while tryagain 
    [secs, keyCode, deltasecs] = KbPressWait; 
    if keyCode(1,8)==1 % E keypress 
        reactiontime=secs-start_time;
        trial_2_times=[trial_2_times, reactiontime]; 
        %Load Instructions (Image 11)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 11 (Wallet)
        hwallet=imread("hwallet.jpg"); 

        % Get the size of the image 
        [s1, s2, s3]=size(hwallet);

        % Make image into a texture 
        hwalletTexture = Screen('MakeTexture', window, hwallet); 

        % Draw image to the screen
        Screen('DrawTexture', window, hwalletTexture, [], [], 0); 

        % Flip iamge to the screen 
        Screen('Flip', window); 

        tryagain=false; 
    elseif keyCode(1,8) ~= 1 % anything other than e pressed 
         %Load Instructions (Image 10)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        %Draw red 'x' on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
        %Load Image 10 (Toothbrush) 
        Screen('DrawTexture', window, htoothbrushTexture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 11 (Wallet) 
start_time=GetSecs; % Records time of image presentation
tryagain=true; % Sets condition for if statement to run 
while tryagain 
    [secs, keyCode, deltasecs] = KbPressWait; 
    if keyCode(1,8)==1 % e keypress 
        reactiontime=secs-start_time;
        trial_2_times=[trial_2_times, reactiontime]; 
        %Load Instructions (Image 12)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 12 (Knife)
        wknife=imread("wknife.jpg"); 

        % Get the size of the image 
        [s1, s2, s3]=size(wknife);

        % Make image into a texture 
        wknifeTexture = Screen('MakeTexture', window, wknife); 

        % Draw image to the screen
        Screen('DrawTexture', window, wknifeTexture, [], [], 0); 

        % Flip iamge to the screen 
        Screen('Flip', window); 

        tryagain=false; 
    elseif keyCode(1,8) ~= 1 % anything other than e pressed 
         %Load Instructions (Image 11)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        %Draw red 'x' on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
        %Load Image 11 
        Screen('DrawTexture', window, hwalletTexture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% REPONSE TO IMAGE 12 (Knife)
start_time=GetSecs; % Records time of image presentation
tryagain=true; % Sets condition for if statement to run 
while tryagain 
    [secs, keyCode, deltasecs] = KbPressWait; 
    if keyCode(1,12)==1 % I keypress 
        reactiontime=secs-start_time;
        trial_2_times=[trial_2_times, reactiontime]; 
        %Load Instruction Screen for Trial 3
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
        DrawFormattedText(window, 'OR', screenXpixels*0.1, ...
            screenYpixels*0.15, black); 
        Screen('TextSize', window, 35); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'Harmless Objects', 'left', ...
            screenYpixels*0.2, [0 1 1]); 
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
            screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'right' ,...
            screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'OR', screenXpixels*0.1, ...
            screenYpixels*0.15, black); 
        Screen('TextSize', window, 35); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'Weapons', 'left', ...
            screenYpixels*0.2, [0 1 1]); 

        % Draw text in the middle of the screen in Courier in white
        Screen('TextSize', window, 25);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Part 3 of 7', screenXpixels * 0.46, screenYpixels * 0.36, black);
        Screen('TextSize', window, 25);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Put a left finger on the E key for items that belong to the category', screenXpixels * 0.1, screenYpixels * 0.41, black);
        Screen('TextSize', window, 30);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', 'left' ,...
            screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 25); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'OR', screenXpixels*0.48, screenYpixels*0.49, black);
        Screen('TextSize', window, 30);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', screenXpixels * 0.38, screenYpixels * 0.44, [0 1 1]);
        Screen('TextSize', window, 25);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Put a right finger on the I key for items that belong to the category', screenXpixels * 0.1, screenYpixels * 0.50, black);
        Screen('TextSize', window, 30);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'left' ,...
            screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 25); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'OR', screenXpixels*0.48, screenYpixels*0.49, black);
        Screen('TextSize', window, 30);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', screenXpixels * 0.38, screenYpixels * 0.44, [0 1 1]);
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

        tryagain=false; 
    elseif keyCode(1,12) ~= 1 % anything other than i pressed 
         %Load Instructions (Image 12)
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
          screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Harmless Objects', 'left' ,...
         screenYpixels * 0.11, [0 1 1]);
        Screen('TextSize', window, 20);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
        screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Weapons', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        %Draw red 'x' on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
        %Load Image 12
        Screen('DrawTexture', window, wknifeTexture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 
%HERE the correct response should lead to the next instructional page
