% Ashley formatted the text on the opening slide. She spent around 6 hours learning about psychtoolbox and breaking down demos in order to understand how 
% the different aspects of psychtoolbox worked together. Once she understood how to set up the screens, windows, and how to "flip" the screens, she 
% formatted the text in the window appropriately. It took longer to debug because she needed to add the line: "Screen('Preference','SkipSyncTests',1)" 
% in order for the window to show up on the mac computers. She also attended, with her teammates, a 2 hour psychtoolbox tutorial that Haley and 
% Ivan offered early on in the project timeline. Once the mechanics of psychtoolbox were figured out, it took a half hour for her to properly format the 
% slide, getting the spacing correct as well as the sizing. Ashley also worked to research how to make the code react to key strokes. This took
% around 3 hours to research through psychtoolbox demos and 4 additional hours to code and debug the code so that the flipped window would switch to the
% correct slide folowing a key press. The team had difficulty with the key stroke function because the function would work sporatically, and only on some 
% of the group's computers. This drove up debugging time to get the function working. This was a recurring issue for the team that took lots of
% debugging and research. Once Ashley figured out how to formatted the first slide of text, she formatted the rest of the text for the IAT. Each slide of
% text has different positions, sizes, and dimensions. It took around 6 hours to format the rest of the program's text, for each of the trial slides. 

Screen('Preference', 'SkipSyncTests', 1);
PsychDefaultSetup(2);

screens = Screen('Screens');
% Select the external screen if it is present
screenNumber = max(screens);
% Define the colors black, white and grey
black = BlackIndex(screenNumber);
white = WhiteIndex(screenNumber);
grey = white / 2;
% Opens an on screen window and colors it white
[window, windowRect] = PsychImaging('OpenWindow', screenNumber, white, [0,0 , 900,900]);
% Set the blend funciton for the screen
Screen('BlendFunction', window, 'GL_SRC_ALPHA', 'GL_ONE_MINUS_SRC_ALPHA');
% Gets the size of the on screen window
[screenXpixels, screenYpixels] = Screen('WindowSize', window);
% Get the center coordinate of the window
[xCenter, yCenter] = RectCenter(windowRect);
% Draw text in the center portion of the screen in
% black, with the font Georgia
Screen('TextSize', window, 80);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Welcome to the', 'center',...
   screenYpixels * 0.45, black);
% Draw text in the middle of the screen in Georgia in Blue
Screen('TextSize', window, 80);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Implict Association Test', 'center', 'center', [0 0 1]);
% Draw text in the bottom of the screen in Times in grey
Screen('TextSize', window, 55);
Screen('TextFont', window, 'Times');
DrawFormattedText(window, 'press any key to continue', 'center',...
   screenYpixels * 0.75, grey);
% Flip to the screen
Screen('Flip', window);
KbStrokeWait;
%% slide 2 starts here. Ashley formatted slide 2, this slide presented another challenege because it required that she learn about drawing polygons
% in order to draw the rectangles that create the grid. She spent around 2 hours to read and debug the polygon demo for psychtoolbox and another hour to 
% write the code for the grid. It took another hour to code, format, and debug the text on this window. 
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Implicit Association Test', screenXpixels * 0.03 ,...
   screenYpixels * 0.07, [0 0 1]);
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Next, you will use the E and I computer keys to categorize items into groups as fast as you can. ', screenXpixels * 0.05,...
   screenYpixels * 0.12, black);
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'These are the four categories and the items that belong to each: ', screenXpixels * 0.05,...
   screenYpixels * 0.14, black);
% Draw text in the bottom of the screen in Times in grey
Screen('TextSize', window, 30);
Screen('TextFont', window, 'Times');
DrawFormattedText(window, 'press any key to continue', 'center',...
   screenYpixels * 0.89, [0 0 1]);
baseRect = [0 0 800 500];
centeredRect = CenterRectOnPointd(baseRect, xCenter, yCenter);
rectColor = grey;
Screen('FrameRect', window, rectColor, centeredRect, 3);
baseRect = [0 0 200 500];
colmaker = CenterRectOnPointd(baseRect, xCenter-300, yCenter);
rectColor = grey;
Screen('FrameRect', window, rectColor, colmaker, 3);
baseRect = [0 0 800 100];
rowmaker = CenterRectOnPointd(baseRect, xCenter, yCenter-100);
rectColor = grey;
Screen('FrameRect', window, rectColor, rowmaker, 3);
baseRect = [0 0 800 100];
rowmaker = CenterRectOnPointd(baseRect, xCenter, yCenter+100);
rectColor = grey;
Screen('FrameRect', window, rectColor, rowmaker, 3);
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Times');
DrawFormattedText(window, 'Items', screenXpixels * 0.30,...
   screenYpixels * 0.28, black);
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Times');
DrawFormattedText(window, 'Category', screenXpixels * 0.12,...
   screenYpixels * 0.28, black);
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Times');
DrawFormattedText(window, 'Harmless Objects', screenXpixels * 0.08,...
   screenYpixels * 0.39, black);
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Times');
DrawFormattedText(window, 'Weapons', screenXpixels * 0.12,...
   screenYpixels * 0.50, black);
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Times');
DrawFormattedText(window, 'Black Americans', screenXpixels * 0.09,...
   screenYpixels * 0.61, black);
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Times');
DrawFormattedText(window, 'White Americans', screenXpixels * 0.08,...
   screenYpixels * 0.72, black);
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Times');
DrawFormattedText(window, 'There are seven parts. The instructions change for each part. Pay attention!', screenXpixels * 0.05,...
   screenYpixels * 0.83, black);
% Flip to the screen
Screen('Flip', window);
KbStrokeWait;
%% slide 3 starts here. Ashley formatted this slide's text
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
% Draw text in the middle of the screen in Georgia in black
Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Part 1 of 7', screenXpixels * 0.46, screenYpixels * 0.36, black);
Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Put a left finger on the E key for items that belong to the category', screenXpixels * 0.1, screenYpixels * 0.41, black);
Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'White Americans', screenXpixels * 0.38, screenYpixels * 0.44, [0 1 1]);
Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Put a right finger on the I key for items that belong to the category', screenXpixels * 0.1, screenYpixels * 0.50, black);
Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', screenXpixels * 0.38, screenYpixels * 0.53, [0 1 1]);
Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'If you make a mistake, a red       will appear. Press the other key to continue', screenXpixels * 0.05, screenYpixels * 0.70, black);
Screen('TextSize', window, 29);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'X', screenXpixels * 0.41, screenYpixels * 0.70, [1 0 0]);
Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Go as fast as you can while being accurate!', screenXpixels * 0.24, screenYpixels * 0.73, black);
% Draw text in the bottom of the screen in Times in grey
Screen('TextSize', window, 30);
Screen('TextFont', window, 'Times');
DrawFormattedText(window, 'press any key to continue', screenXpixels * 0.33,...
   screenYpixels * 0.85, grey);
% Flip to the screen
Screen('Flip', window);
KbStrokeWait;
% Trial 1
% Load Instructions
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
%Load Image 1 
bf14=imread("bf14.jpg"); 
% Make image into a texture 
bf14Texture = Screen('MakeTexture', window, bf14); 
% Draw image to the screen
Screen('DrawTexture', window, bf14Texture, [], [], 0); 
% Flip image to the screen 
Screen('Flip', window);

%RESPONSE TO IMAGE 1 - Paloma spent around 6 hours figuring out the
%keypresses and reaction times and another 2 hours writing this block

tryagain = true; %sets condition for if statement to run
while tryagain
[secs, keyCode, deltaSecs] = KbPressWait;
if keyCode(1,12) == 1 %i
    %Load Instructions (Image 2)
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
    % Load/Display Image 2
    wm1=imread("wm1.jpg"); 
    wm1Texture = Screen('MakeTexture', window, wm1); 
    Screen('DrawTexture', window, wm1Texture, [], [], 0); 
    Screen('Flip', window);
    tryagain = false;
elseif keyCode(1,12) ~= 1 %anything but i
    % Load Instructions
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
    %drawing red 'X' on screen
    Screen('TextSize', window, 29);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'X', screenXpixels * 0.5, screenYpixels * 0.70, [1 0 0]);
    %display Image 1 
    Screen('DrawTexture', window, bf14Texture, [], [], 0); 
    % Flip to the screen 
    Screen('Flip', window); %shows same trial but w/ an X
    tryagain = true; %sends us back to beginning of while statement
end %ends if statement
end %ends while tryagain statement for this block

%RESPONSE TO IMAGE 2
 
tryagain = true; %sets condition for if statement to run
while tryagain
[secs, keyCode, deltaSecs] = KbPressWait;
if keyCode(1,8) == 1 %e
    %Load Instructions (Image 3) 
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
    %Load image 3
    wf2=imread("wf2.jpg"); 
    wf2Texture = Screen('MakeTexture', window, wf2); 
    Screen('DrawTexture', window, wf2Texture, [], [], 0); 
    % Flip iamge to the screen 
    Screen('Flip', window);
    tryagain = false;
elseif keyCode (1,8) ~= 1 %if keycode is not e
    %Load Instructions (Image 2) 
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
    % Draw image to teh screen
    Screen('DrawTexture', window, wm1Texture, [], [], 0);
    %draw X on screen
    Screen('TextSize', window, 29);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'X', screenXpixels * 0.5, screenYpixels * 0.70, [1 0 0]);
    % Flip image to the screen 
    Screen('Flip', window);
    tryagain = true; %sends us back to beginning of while statement
end
end

%RESPONSE TO IMAGE 3

tryagain = true;
while tryagain
[secs, keyCode, deltaSecs] = KbPressWait;
if keyCode(1,8) == 1 %e
    %Load Instructions (Image 4) 
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
    %Load image 4
    bm14=imread("bm14.jpg"); 
    bm14Texture = Screen('MakeTexture', window, bm14); 
    Screen('DrawTexture', window, bm14Texture, [], [], 0); 
    % Flip image to the screen 
    Screen('Flip', window);
    tryagain = false;
elseif keyCode (1,8) ~= 1 %if keycode is not e
    %Load Instructions (Image 3) 
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
    %Load image 3
    Screen('DrawTexture', window, wf2Texture, [], [], 0); 
    %draw X on screen
    Screen('TextSize', window, 29);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'X', screenXpixels * 0.5, screenYpixels * 0.70, [1 0 0]);
    % Flip image to the screen 
    Screen('Flip', window);
    tryagain = true; %sends us back to beginning of while statement
end
end

%RESPONSE TO IMAGE 4

tryagain = true;
while tryagain
[secs, keyCode, deltaSecs] = KbPressWait;
if keyCode(1,12) == 1 %i
    %Load Instructions (Image 5) 
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
    %Load Image 5
    wf3=imread("wf3.jpg"); 
    % Make image into a texture 
    wf3Texture = Screen('MakeTexture', window, wf3); 
    % Draw image to the screen
    Screen('DrawTexture', window, wf3Texture, [], [], 0); 
    % Flip image to the screen 
    Screen('Flip', window);
    tryagain = false;
elseif keyCode(1,12) ~= 1 %not equal to i
    %Load Instructions (Image 4) 
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
    %Load image 4
    Screen('DrawTexture', window, bm14Texture, [], [], 0); 
    %draw X on screen
        Screen('TextSize', window, 29);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'X', screenXpixels * 0.5, screenYpixels * 0.70, [1 0 0]);
    % Flip image to the screen 
    Screen('Flip', window);
    tryagain = true; %sends us back to beginning of while statement
end
end

%RESPONSE TO IMAGE 5

tryagain = true;
while tryagain
[secs, keyCode, deltaSecs] = KbPressWait;
if keyCode(1,8) == 1 %e
    %Load Instructions (Image 6) 
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
    %Load Image 6
    bf23=imread("bf23.jpg"); 
    bf23Texture = Screen('MakeTexture', window, bf23); 
    Screen('DrawTexture', window, bf23Texture, [], [], 0); 
    % Flip image to the screen 
    Screen('Flip', window);
    tryagain = false;
elseif keyCode(1,8) ~= 1 %e
    %Load Instructions (Image 5) 
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
    %Load Image 5
    Screen('DrawTexture', window, wf3Texture, [], [], 0); 
    %draw X on screen
        Screen('TextSize', window, 29);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'X', screenXpixels * 0.5, screenYpixels * 0.70, [1 0 0]);
    % Flip image to the screen 
    Screen('Flip', window); 
    tryagain = true; %sends us back to beginning of while statement
end
end
 

%RESPONSE TO IMAGE 6

tryagain = true;
while tryagain
[secs, keyCode, deltaSecs] = KbPressWait;
if keyCode(1,12) == 1 %i
    %Load Instructions (Image 7) 
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
    % Load Image 7
    bm23=imread("bm23.jpg"); 
    % Make image into a texture 
    bm23Texture = Screen('MakeTexture', window, bm23); 
    % Draw image to the screen
    Screen('DrawTexture', window, bm23Texture, [], [], 0); 
    % Flip image to the screen 
    Screen('Flip', window);
    tryagain = false;
elseif keyCode(1,12) ~= 1 %key code for I
    %Load Instructions (Image 6) 
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
    %Load Image 6
    bf23=imread("bf23.jpg"); 
    % Make image into a texture 
    bf23Texture = Screen('MakeTexture', window, bf23); 
    % Draw image to the screen
    Screen('DrawTexture', window, bf23Texture, [], [], 0);
    %draw X on screen
    Screen('TextSize', window, 29);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'X', screenXpixels * 0.5, screenYpixels * 0.70, [1 0 0]);
    % Flip image to the screen 
    Screen('Flip', window); 
    tryagain = true; %sends us back to beginning of while statement
end
end

%RESPONSE TO IMAGE 7

tryagain = true;
while tryagain
[secs, keyCode, deltaSecs] = KbPressWait;
if keyCode(1,12) == 1 %i
    %Load Instructions (Image 8) 
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
    % Load Image 8
    wm4=imread("wm4.jpg"); 
    % Make image into a texture 
    wm4Texture = Screen('MakeTexture', window, wm4); 
    % Draw image to the screen
    Screen('DrawTexture', window, wm4Texture, [], [], 0); 
    % Flip image to the screen 
    Screen('Flip', window);
    tryagain = false;
elseif keyCode(1,12) ~= 1
    %Load Instructions (Image 7) 
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
    % Load Image 7
    bm23=imread("bm23.jpg"); 
    % Make image into a texture 
    bm23Texture = Screen('MakeTexture', window, bm23); 
    % Draw image to the screen
    Screen('DrawTexture', window, bm23Texture, [], [], 0);
    %Draw X on screen
    Screen('TextSize', window, 29);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'X', screenXpixels * 0.5, screenYpixels * 0.70, [1 0 0]);
    % Flip image to the screen 
    Screen('Flip', window); 
    tryagain = true; %sends us back to beginning of while statement
end
end

%RESPONSE TO IMAGE 8

tryagain = true;
while tryagain
[secs, keyCode, deltaSecs] = KbPressWait;
if keyCode(1,8) == 1 %e
    %LOAD INSTRUCTION SLIDE FOR BLOCK 2 HERE
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
    DrawFormattedText(window, 'Part 2 of 5', screenXpixels * 0.46, screenYpixels * 0.36, black);
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
        tryagain = false;
elseif keyCode(1,8) ~= 1
    % Load Image 8 w/ X
    wm4=imread("wm4.jpg"); 
    % Make image into a texture 
    wm4Texture = Screen('MakeTexture', window, wm4); 
    % Draw image to the screen
    Screen('DrawTexture', window, wm4Texture, [], [], 0); 
    %Draw X on screen
    Screen('TextSize', window, 29);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'X', screenXpixels * 0.5, screenYpixels * 0.70, [1 0 0]);
    % Flip image to the screen
    Screen('Flip', window);
    tryagain = false;
end
end

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

% Make image into a texture 
hbackpackTexture = Screen('MakeTexture', window, hbackpack); 

% Draw image to the screen
Screen('DrawTexture', window, hbackpackTexture, [], [], 0); 

% Flip image to the screen 
Screen('Flip', window); 

% REPONSE TO IMAGE 1 (Backpack) - Practice round, times not actually
% recorded 
tryagain=true; % Sets condition for if statement to run 
while tryagain 
    [secs, keyCode, deltasecs] = KbPressWait; 
    if keyCode(1,8)==1 % e keypress 
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
tryagain=true; % Sets condition for if statement to run 
while tryagain 
    [secs, keyCode, deltasecs] = KbPressWait; 
    if keyCode(1,8)==1 % e keypress 
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
tryagain=true; % Sets condition for if statement to run 
while tryagain 
    [secs, keyCode, deltasecs] = KbPressWait; 
    if keyCode(1,12)==1 % I keypress 
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
tryagain=true; % Sets condition for if statement to run 
while tryagain 
    [secs, keyCode, deltasecs] = KbPressWait; 
    if keyCode(1,8)==1 % e keypress 
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
tryagain=true; % Sets condition for if statement to run 
while tryagain 
    [secs, keyCode, deltasecs] = KbPressWait; 
    if keyCode(1,12)==1 % I keypress 
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
tryagain=true; % Sets condition for if statement to run 
while tryagain 
    [secs, keyCode, deltasecs] = KbPressWait; 
    if keyCode(1,12)==1 % I keypress 
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

        % Make image into a texture 
        whandgunTexture = Screen('MakeTexture', window, whandgun); 

        % Draw image to the screen
        Screen('DrawTexture', window, whandgunTexture, [], [], 0); 

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
tryagain=true; % Sets condition for if statement to run 
while tryagain 
    [secs, keyCode, deltasecs] = KbPressWait; 
    if keyCode(1,8)==1 % E keypress  
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
tryagain=true; % Sets condition for if statement to run 
while tryagain 
    [secs, keyCode, deltasecs] = KbPressWait; 
    if keyCode(1,8)==1 % e keypress 
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
tryagain=true; % Sets condition for if statement to run 
while tryagain 
    [secs, keyCode, deltasecs] = KbPressWait; 
    if keyCode(1,12)==1 % I keypress  
    %FULL INSTRUCTION SLIDE FOR TRIAL 3
    %corner instructions for trial 3
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
    DrawFormattedText(window, 'Black Americans', 'right' ,...
       screenYpixels * 0.11, [0 1 1]);
    
    % Draw text in the middle of the screen in Courier in white
    Screen('TextSize', window, 25);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'Part 3 of 5', screenXpixels * 0.44, screenYpixels * 0.36, black);
    Screen('TextSize', window, 25);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'Put a left finger on the E key for items that belong to the category', screenXpixels * 0.1, screenYpixels * 0.41, black);
    Screen('TextSize', window, 30);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'White Americans', screenXpixels * 0.38, screenYpixels * 0.45, [0 1 1]);
    Screen('TextSize', window, 25);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'OR', screenXpixels * 0.48, screenYpixels * 0.49, black);
    Screen('TextSize', window, 30);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'Harmless Objects', screenXpixels * 0.39, screenYpixels * 0.53, [0 1 1]);
    Screen('TextSize', window, 25);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'Put a right finger on the I key for items that belong to the category', screenXpixels * 0.1, screenYpixels * 0.6, black);
    Screen('TextSize', window, 30);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'Black Americans', screenXpixels * 0.38, screenYpixels * 0.65, [0 1 1]);
    Screen('TextSize', window, 30);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'Weapons', screenXpixels * 0.43, screenYpixels * 0.73, [0 1 1]);
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

% START TRIAL 3
% Load Instructions (Image 1) 
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
DrawFormattedText(window, 'Black Americans', 'right' ,...
   screenYpixels * 0.11, [0 1 1]);

% Load Image 1 (Black American)
bf23=imread("bf23.jpg"); 
bf23Texture=Screen('MakeTexture', window, bf23); 
Screen('DrawTexture', window, bf23Texture, [],[],0); 
Screen('Flip', window); 

% Create a vector to store block reaction times 
trial3_times=[]; 

% RESPONSE TO IMAGE 1 (Black American)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,12)== 1 % i key
        reactiontime=secs-start_time; 
        trial3_times=[trial3_times, reactiontime]; 
        % Load Instructions (Image 2) 
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 2 (Notebook)
        hnotebook=imread("hnotebook.jpg"); 
        hnotebookTexture=Screen('MakeTexture', window, hnotebook); 
        Screen('DrawTexture', window, hnotebookTexture, [],[],0); 
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 1 (Black American)
        Screen('DrawTexture', window, bf23Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 2 (Notebook) 
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,8)== 1 % e key
        reactiontime=secs-start_time; 
        trial3_times=[trial3_times, reactiontime]; 
        % Load Instructions (Image 3) 
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 3 (Dynamite)
        wdynamite=imread("wdynamite.jpg"); 
        wdynamiteTexture=Screen('MakeTexture', window, wdynamite); 
        Screen('DrawTexture', window, wdynamiteTexture, [],[],0); 
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 2 (Notebook)
        Screen('DrawTexture', window, hnotebookTexture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 3 (Dynamite)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,12)== 1 % i key
        reactiontime=secs-start_time; 
        trial3_times=[trial3_times, reactiontime]; 
        % Load Instructions (Image 4) 
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 4 (Black American)
        bm23=imread("bm23.jpg"); 
        bm23Texture=Screen('MakeTexture', window, bm23); 
        Screen('DrawTexture', window, bm23Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=false; 
    elseif keyCode(1,12)~= 1 %anything other than i
        % Load Instructions (Image 3)
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 3 (Dynamite)
        Screen('DrawTexture', window, wdynamiteTexture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 4 (Black American)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,12)== 1 % i key
        reactiontime=secs-start_time; 
        trial3_times=[trial3_times, reactiontime]; 
        % Load Instructions (Image 5) 
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 5 (White American)
        wm4=imread("wm4.jpg"); 
        wm4Texture=Screen('MakeTexture', window, wm4); 
        Screen('DrawTexture', window, wm4Texture, [],[],0); 
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 4 (Black American)
        Screen('DrawTexture', window, bm23Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 5 (White American)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,8)== 1 % e key
        reactiontime=secs-start_time; 
        trial3_times=[trial3_times, reactiontime]; 
        % Load Instructions (Image 6) 
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 6 (Umbrella)
        humbrella=imread("humbrella.jpg"); 
        humbrellaTexture=Screen('MakeTexture', window, humbrella); 
        Screen('DrawTexture', window, humbrellaTexture, [],[],0); 
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 5 (White American)
        Screen('DrawTexture', window, wm4Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 6 (Umbrella)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,8)== 1 % e key
        reactiontime=secs-start_time; 
        trial3_times=[trial3_times, reactiontime]; 
        % Load Instructions (Image 7) 
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 7 (Wallet)
        hwallet=imread("hwallet.jpg"); 
        hwalletTexture=Screen('MakeTexture', window, hwallet); 
        Screen('DrawTexture', window, hwalletTexture, [],[],0); 
        Screen('Flip', window); 
        tryagain=false; 
    elseif keyCode(1,8)~= 1 %anything other than e 
        % Load Instructions (Image 6)
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 6 (Umbrella)
        Screen('DrawTexture', window, humbrellaTexture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 7 (Wallet)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,8)== 1 % e key
        reactiontime=secs-start_time; 
        trial3_times=[trial3_times, reactiontime]; 
        % Load Instructions (Image 8) 
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 8 (Black American)
        bm14=imread("bm14.jpg"); 
        bm14Texture=Screen('MakeTexture', window, bm14); 
        Screen('DrawTexture', window, bm14Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=false; 
    elseif keyCode(1,8)~= 1 %anything other than e 
        % Load Instructions (Image 7)
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 7 (Wallet)
        Screen('DrawTexture', window, hwalletTexture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 8 (Black American)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,12)== 1 % i key
        reactiontime=secs-start_time; 
        trial3_times=[trial3_times, reactiontime]; 
        % Load Instructions (Image 9) 
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 9 (White American)
        wf2=imread("wf2.jpg"); 
        wf2Texture=Screen('MakeTexture', window, wf2); 
        Screen('DrawTexture', window, wf2Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=false; 
    elseif keyCode(1,12)~= 1 %anything other than i
        % Load Instructions (Image 8)
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 8 (Black American)
        Screen('DrawTexture', window, bm14Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 9 (White American)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,8)== 1 % e key
        reactiontime=secs-start_time; 
        trial3_times=[trial3_times, reactiontime]; 
        % Load Instructions (Image 10) 
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 10 (Shotgun)
        wshotgun=imread("wshotgun.jpg"); 
        wshotgunTexture=Screen('MakeTexture', window, wshotgun); 
        Screen('DrawTexture', window, wshotgunTexture, [],[],0); 
        Screen('Flip', window); 
        tryagain=false; 
    elseif keyCode(1,8)~= 1 %anything other than e 
        % Load Instructions (Image 9)
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 9 (White American)
        Screen('DrawTexture', window, wf2Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 10 (Shotgun)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,12)== 1 % i key
        reactiontime=secs-start_time; 
        trial3_times=[trial3_times, reactiontime]; 
        % Load Instructions (Image 11) 
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 11 (Backpack)
        hbackpack=imread("hbackpack.jpg"); 
        hbackpackTexture=Screen('MakeTexture', window, hbackpack); 
        Screen('DrawTexture', window, hbackpackTexture, [],[],0); 
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 10 (Shotgun)
        Screen('DrawTexture', window, wshotgunTexture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 11 (Backpack)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,8)== 1 % e key
        reactiontime=secs-start_time; 
        trial3_times=[trial3_times, reactiontime]; 
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 12 (Black American)
        bf14=imread("bf14.jpg"); 
        bf14Texture=Screen('MakeTexture', window, bf14); 
        Screen('DrawTexture', window, bf14Texture, [],[],0); 
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Load Image 11 (Backpack)
        Screen('DrawTexture', window, hbackpackTexture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 12 (Black American)
start_time=GetSecs % Records time of image presentation 
tryagain=true; 
while tryagain
    [secs, keyCode, deltaSecs]=KbPressWait; 
    if keyCode(1,12)== 1 % i key
        reactiontime=secs-start_time; 
        trial3_times=[trial3_times, reactiontime]; 
        % Load Instruction Screen for Trial 4 
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
        DrawFormattedText(window, 'Black Americans', 'right' ,...
            screenYpixels * 0.11, [0 1 1]);

        % Draw text in the middle of the screen in Courier in white
        Screen('TextSize', window, 25);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Part 4 of 5', screenXpixels * 0.44, screenYpixels * 0.36, black);
        Screen('TextSize', window, 25);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Put a left finger on the E key for items that belong to the category', screenXpixels * 0.1, screenYpixels * 0.41, black);
        Screen('TextSize', window, 30);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', screenXpixels * 0.38, screenYpixels * 0.45, [0 1 1]);
        Screen('TextSize', window, 25);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Put a right finger on the I key for items that belong to the category', screenXpixels * 0.1, screenYpixels * 0.6, black);
        Screen('TextSize', window, 30);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'White Americans', screenXpixels * 0.38, screenYpixels * 0.65, [0 1 1]);
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
        tryagain = false;
    elseif keyCode(1,12)~= 1 %anything other than i 
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
        Screen('DrawTexture', window, bf14Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

KbStrokeWait;
