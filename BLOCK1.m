% As a group we each spent 8 hours in class, at the Pscyhtoolbox tutorial section, and had independent meetings where we researched
% the IAT, downloaded Github and Psychtoolbox, and figured out how exactly what functions we would need for our project. 

% We then spent another 2 hours on March 24th putting all of the individual parts together and debugging out overall code.  

% Ashley formatted the text on the opening slide. She spent around 6 hours learning about psychtoolbox and breaking down demos in order to understand how 
% the different aspects of psychtoolbox worked together. Once she understood how to set up the screens, windows, and how to "flip" the screens, she 
% formatted the text in the window appropriately. It took longer to debug because the line: "Screen('Preference','SkipSyncTests',1)" was missing
% in order for the window to show up on the mac computers. She also attended, with her teammates, a 2 hour psychtoolbox tutorial that Haley and 
% Ivan offered early on in the project timeline. Once the mechanics of psychtoolbox were figured out, it took a half hour for her to properly format the 
% slide, getting the spacing correct as well as the sizing. Ashley also worked to research how to make the code react to key strokes. This took
% around 3 hours to research through psychtoolbox demos and 4 additional hours to code and debug the code so that the flipped window would switch to the
% correct slide folowing a key press. The team had difficulty with the key stroke function because the function would work sporatically, and only on some 
% of the group's computers. This drove up debugging time to get the function working. This was a recurring issue for the team that took lots of
% debugging and research. Once Ashley figured out how to formatted the first slide of text, she formatted the rest of the text for the IAT. Each slide of
% text has different positions, sizes, and dimensions. It took around 6 hours to format the rest of the program's text, for each of the trial slides. 

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
% Open an on screen window and color it white
[window, windowRect] = PsychImaging('OpenWindow', screenNumber, white, [0,0 , 900,900]);
% Set the blend funciton for the screen
Screen('BlendFunction', window, 'GL_SRC_ALPHA', 'GL_ONE_MINUS_SRC_ALPHA');
% Get the size of the on screen window in pixels
[screenXpixels, screenYpixels] = Screen('WindowSize', window);
% Get the centre coordinate of the window in pixels

[xCenter, yCenter] = RectCenter(windowRect);
% Draw text in the upper portion of the screen with the Georgia font in
% black
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
%% slide 2 starts heres. To code the grid shape, Ashley spent around 2 hours to read and debug the polygon demo for psychtoolbox and another hour to 
% write the code for the grid. 


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
% Draw text in the bottom of the screen in Times in blue
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
   
% Ashley wrote this code for formatting the images on the screen. It took
% around 3 hours to look at the image demos and debug the code so that each
% picture showed up in the correct spot. 
bf14=imread("bf14.jpg"); 
bf23=imread("bf23.jpg"); 
bm14=imread("bm14.jpg");
bm23=imread("bm23.jpg");
bf56=imread("bf56.jpg"); 
bm56=imread("bm56.jpg");
         

wm1=imread("wm1.jpg"); 
wf2=imread("wf2.jpg");  
wf3=imread("wf3.jpg"); 
wm4=imread("wm4.jpg"); 
wf6=imread("wf6.jpg"); 
wm6=imread("wm6.jpg");

hbackpack=imread("hbackpack.jpg"); 
hkeychain=imread("hkeychain.jpg"); 
humbrella=imread("humbrella.jpg");
hnotebook=imread("hnotebook.jpg");
htoothbrush=imread("htoothbrush.jpg"); 
hwallet=imread("hwallet.jpg"); 

wdynamite=imread("wdynamite.jpg"); 
wautomaticrifle=imread("wautomaticrifle.jpg"); 
wbrassknuckles=imread("wbrassknuckles.jpg"); 
wshotgun=imread("wshotgun.jpg"); 
whandgunTexture = Screen('MakeTexture', window, whandgun); 
wknife=imread("wknife.jpg"); 

Tbf14 = Screen('MakeTexture', window, bf14);
Tbf23 = Screen('MakeTexture', window, bf23);
Tbm14= Screen('MakeTexture', window, bm14);
Tbm23 = Screen('MakeTexture', window, bm23);
Tbf56 = Screen('MakeTexture', window, bf56);
Tbm56 = Screen('MakeTexture', window, bm56);

Twm1 = Screen('MakeTexture', window, wm1);
Twf2 = Screen('MakeTexture', window, wf2);
Twf3 = Screen('MakeTexture', window, wf3);
Twm4 = Screen('MakeTexture', window, wm4);
Twf6 = Screen('MakeTexture', window, wf6);
Twm6 = Screen('MakeTexture', window, wm6);

Thbackpack = Screen('MakeTexture', window, hbackpack);
Thkeychain = Screen('MakeTexture', window, hkeychain);
Thumbrella = Screen('MakeTexture', window, humbrella);
Thnotebook = Screen('MakeTexture', window, hnotebook);
Thtoothbrush = Screen('MakeTexture', window, htoothbrush);
Thwallet = Screen('MakeTexture', window, hwallet);

Twdynamite = Screen('MakeTexture', window, wdynamite);
Twautomaticrifle = Screen('MakeTexture', window, wautomaticrifle);
Twbrassknuckles = Screen('MakeTexture', window, wbrassknuckles);
Twshotgun = Screen('MakeTexture', window, wshotgun);
Twhandgun = Screen('MakeTexture', window, whandgun);
Twknife= Screen('MakeTexture', window, wknife);

P = [Tbf14 Tbf23 Tbm14 Tbm23 Tbf56 Tbm56 Twm1 Twf2 Twf3 Twm4 Twf6 Twm6 Thbackpack Thkeychain Thumbrella Thnotebook Thtoothbrush Thwallet Twdynamite Twautomaticrifle Twbrassknuckles Twshotgun Twhandgun Twknife]; 

%makes a position for each image
l31 = CenterRectOnPointd([0 0 90 90], xCenter*.69, yCenter*.78)';
l32 = CenterRectOnPointd([0 0 90 90], xCenter*.89, yCenter*.78)';
l33 = CenterRectOnPointd([0 0 90 90], xCenter*1.09, yCenter*.78)';
l34 = CenterRectOnPointd([0 0 90 90], xCenter*1.29, yCenter*.78)';
l35 = CenterRectOnPointd([0 0 90 90], xCenter*1.49, yCenter*.78)';
l36 = CenterRectOnPointd([0 0 90 90], xCenter*1.69, yCenter*.78)';

l41 = CenterRectOnPointd([0 0 90 90], xCenter*.69, yCenter*1)';
l42 = CenterRectOnPointd([0 0 90 90], xCenter*.89, yCenter*1)';
l43 = CenterRectOnPointd([0 0 90 90], xCenter*1.09, yCenter*1)';
l44 = CenterRectOnPointd([0 0 90 90], xCenter*1.29, yCenter*1)';
l45 = CenterRectOnPointd([0 0 90 90], xCenter*1.49, yCenter*1)';
l46 = CenterRectOnPointd([0 0 90 90], xCenter*1.69, yCenter*1)';

l11 = CenterRectOnPointd([0 0 90 90], xCenter*.69, yCenter*1.22)';
l12 = CenterRectOnPointd([0 0 90 90], xCenter*.89, yCenter*1.22)';
l13 = CenterRectOnPointd([0 0 90 90], xCenter*1.09, yCenter*1.22)';
l14 = CenterRectOnPointd([0 0 90 90], xCenter*1.29, yCenter*1.22)';
l15 = CenterRectOnPointd([0 0 90 90], xCenter*1.49, yCenter*1.22)';
l16 = CenterRectOnPointd([0 0 90 90], xCenter*1.69, yCenter*1.22)';

l21 = CenterRectOnPointd([0 0 90 90], xCenter*.69, yCenter*1.44)';
l22 = CenterRectOnPointd([0 0 90 90], xCenter*.89, yCenter*1.44)';
l23 = CenterRectOnPointd([0 0 90 90], xCenter*1.09, yCenter*1.44)';
l24 = CenterRectOnPointd([0 0 90 90], xCenter*1.29, yCenter*1.44)';
l25 = CenterRectOnPointd([0 0 90 90], xCenter*1.49, yCenter*1.44)';
l26 = CenterRectOnPointd([0 0 90 90], xCenter*1.69, yCenter*1.44)';
l = [l11 l12 l13 l14 l15 l16 l21 l22 l23 l24 l25 l26 l31 l32 l33 l34 l35 l36 l41 l42 l43 l44 l45 l46]

% Draw images to the screen, uses the two vectors to assign each image
% a particular spot on the screen
Screen('DrawTextures', window, P, [],l, 0); 

   
% Flip to the screen
Screen('Flip', window);
KbStrokeWait;
%% slide 3 starts here
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
% Draw text in the middle of the screen in Courier in white
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
% Draw text in the bottom of the screen in Times in blue
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

% Hayley spent 6 hours writing code for trial 2; this includes the time spent in office hours trying to get
% the keypress functions on her laptop to work. Hayley spent another 2 hours debugging her code. Because her keypresses
% were not working, Paloma ran the code on her laptop and sent Hayley the changes that needed to be made. This code
% requires participants to press E when presented with an image of a harmless object and to press I when presented with 
% an image of a weapon. 

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

%% Hayley spent 4 hours writing this code and another hour debugging it. This code requires particpants to 
% press E when presented with an image of a White American or a harmless object and to press I when presented 
% with an image of a Black American or a weapon. It also records their reaction times. 

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
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
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
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
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
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
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
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
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
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
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
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
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
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
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
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
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
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
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
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
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
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
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
        KbStrokeWait;
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
       % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
       % Load Image 12 (Black American)
        Screen('DrawTexture', window, bf14Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end

% Hayley spent 4 hours writing this code and another hour debugging it. This code requires participants to press 
% E when presented with an image of a Black American and to press I when presented with an image of a White American. 

% START BLOCK 4
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
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
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
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
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
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
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
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
        % Load Image 4 (White American)
        Screen('DrawTexture', window, wf6Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

% RESPONSE TO IMAGE 5 (Black American)
start_time=GetSecs; % Records time of image presentation 
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
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
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
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
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
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
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
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
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
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
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
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
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
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
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
        tryagain = false
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
        DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
           screenYpixels * 0.07, black);
        Screen('TextSize', window, 35);
        Screen('TextFont', window, 'Georgia');
        DrawFormattedText(window, 'Black Americans', 'right' ,...
        screenYpixels * 0.11, [0 1 1]);
        % Drawing red x on screen 
        Screen('TextSize', window, 29); 
        Screen('TextFont', window, 'Georgia'); 
        DrawFormattedText(window, 'X', screenXpixels*0.5, screenYpixels *0.70, [1 0 0]); 
        % Load Image 12 (Black American)
        Screen('DrawTexture', window, bm56Texture, [],[],0); 
        Screen('Flip', window); 
        tryagain=true; 
    end 
end 

%START IMAGE 1
%block 5 instructions
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
%Display image 1
humbrella=imread("humbrella.jpg"); 
humbrellaTexture = Screen('MakeTexture', window, humbrella); 
Screen('DrawTexture', window, humbrellaTexture, [], [], 0);  
Screen('Flip', window);

block5times = []; %initializes vector to store block reaction times

%RESPONSE TO IMAGE 1 (harmless object, press E)

start_time = GetSecs; %records time of image presentation
tryagain = true; %sets condition for if statement to run
while tryagain
[secs, keyCode, deltaSecs] = KbPressWait;
if keyCode(1,8) == 1 %e
    reactiontime = secs - start_time; %assign reaction time to this variable
    block5times = [block5times, reactiontime]; %adds rt from this trial to block rt vector
    %Load Instructions (Image 2)
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
    %Load image 2
    bm23=imread("bm23.jpg"); 
    bm23Texture = Screen('MakeTexture', window, bm23); 
    Screen('DrawTexture', window, bm23Texture, [], [], 0); 
    % Flip image to the screen 
    Screen('Flip', window);
    tryagain = false;
elseif keyCode(1,8) ~= 1 %if anything other than e
    %Load Instructions (Image 1)
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
    %drawing red 'X' on screen
    Screen('TextSize', window, 29);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'X', screenXpixels * 0.5, screenYpixels * 0.70, [1 0 0]);
    %display image 1 (umbrella)
    Screen('DrawTexture', window, humbrellaTexture, [], [], 0); 
    Screen('Flip', window);
    tryagain = true;
end
end

%RESPONSE TO IMAGE 2 (black american, press E)

start_time = GetSecs; %records time of image presentation
tryagain = true; %sets condition for if statement to run
while tryagain
[secs, keyCode, deltaSecs] = KbPressWait;
if keyCode(1,8) == 1 %e
    reactiontime = secs - start_time; %assign reaction time to this variable
    block5times = [block5times, reactiontime]; %adds rt from this trial to block rt vector
    %Load Instructions (Image 3)
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
    %Display image 3
    whandgun=imread('whandgun.jpg');
    whandgunTexture = Screen('MakeTexture', window, whandgun); 
    Screen('DrawTexture', window, whandgunTexture, [], [], 0); 
    Screen('Flip', window);
    tryagain = false;
elseif keyCode(1,8) ~= 1 %if anything other than e
    %Load Instructions (Image 2)
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
    %drawing red 'X' on screen
    Screen('TextSize', window, 29);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'X', screenXpixels * 0.5, screenYpixels * 0.70, [1 0 0]);
    %Display image 2
    Screen('DrawTexture', window, bm23Texture, [], [], 0); 
    Screen('Flip', window);
    tryagain = true;
end
end

%RESPONSE TO IMAGE 3 (weapon, press i)

start_time = GetSecs; %records time of image presentation
tryagain = true; %sets condition for if statement to run
while tryagain
[secs, keyCode, deltaSecs] = KbPressWait;
if keyCode(1,12) == 1 %i
    reactiontime = secs - start_time; %assign reaction time to this variable
    block5times = [block5times, reactiontime]; %adds rt from this trial to block rt vector
    %Load Instructions (Image 4)
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
    %Display image 4
    wm4=imread("wm4.jpg"); 
    wm4Texture = Screen('MakeTexture', window, wm4); 
    Screen('DrawTexture', window, wm4Texture, [], [], 0); 
    % Flip image to the screen 
    Screen('Flip', window);
    tryagain = false;
elseif keyCode(1,12) ~= 1 %if anything other than i
    %Load Instructions (Image 3)
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
    %drawing red 'X' on screen
    Screen('TextSize', window, 29);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'X', screenXpixels * 0.5, screenYpixels * 0.70, [1 0 0]);
    %Display image 3
    whandgun=imread('whandgun.jpg');
    whandgunTexture = Screen('MakeTexture', window, whandgun); 
    Screen('DrawTexture', window, whandgunTexture, [], [], 0); 
    Screen('Flip', window);
    tryagain = true;
end
end

%RESPONSE TO IMAGE 4 (white american, press i)

start_time = GetSecs; %records time of image presentation
tryagain = true; %sets condition for if statement to run
while tryagain
[secs, keyCode, deltaSecs] = KbPressWait;
if keyCode(1,12) == 1 %i
    reactiontime = secs - start_time; %assign reaction time to this variable
    block5times = [block5times, reactiontime]; %adds rt from this trial to block rt vector
    %Load Instructions (Image 5)
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
    %Load image 5
    wshotgun=imread("wshotgun.jpg"); 
    wshotgunTexture=Screen('MakeTexture', window, wshotgun); 
    Screen('DrawTexture', window, wshotgunTexture, [],[],0); 
    % Flip image to the screen 
    Screen('Flip', window);
    tryagain = false;
elseif keyCode(1,12) ~= 1 %if anything other than i
    %Load Instructions (Image 4)
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
    %drawing red 'X' on screen
    Screen('TextSize', window, 29);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'X', screenXpixels * 0.5, screenYpixels * 0.70, [1 0 0]);
    %Display image 4
    wm4=imread("wm4.jpg"); 
    wm4Texture = Screen('MakeTexture', window, wm4); 
    Screen('DrawTexture', window, wm4Texture, [], [], 0); 
    Screen('Flip', window);
    tryagain = true;
end
end

%RESPONSE TO IMAGE 5 (weapon, press i)

start_time = GetSecs; %records time of image presentation
tryagain = true; %sets condition for if statement to run
while tryagain
[secs, keyCode, deltaSecs] = KbPressWait;
if keyCode(1,12) == 1 %i
    reactiontime = secs - start_time; %assign reaction time to this variable
    block5times = [block5times, reactiontime]; %adds rt from this trial to block rt vector
    %Load Instructions (Image 6)
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
    %Load image 6
    hnotebook=imread("hnotebook.jpg"); 
    hnotebookTexture=Screen('MakeTexture', window, hnotebook); 
    Screen('DrawTexture', window, hnotebookTexture, [],[],0); 
    % Flip image to the screen 
    Screen('Flip', window);
    tryagain = false;
elseif keyCode(1,12) ~= 1 %if anything other than i
    %Load Instructions (Image 5)
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
    %drawing red 'X' on screen
    Screen('TextSize', window, 29);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'X', screenXpixels * 0.5, screenYpixels * 0.70, [1 0 0]);
    %Load image 5
    wshotgun=imread("wshotgun.jpg"); 
    wshotgunTexture=Screen('MakeTexture', window, wshotgun); 
    Screen('DrawTexture', window, wshotgunTexture, [],[],0); 
    tryagain = true;
end
end

%RESPONSE TO IMAGE 6 (harmless object, press e)

start_time = GetSecs; %records time of image presentation
tryagain = true; %sets condition for if statement to run
while tryagain
[secs, keyCode, deltaSecs] = KbPressWait;
if keyCode(1,8) == 1 %e
    reactiontime = secs - start_time; %assign reaction time to this variable
    block5times = [block5times, reactiontime]; %adds rt from this trial to block rt vector
    %Load Instructions (Image 7)
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
    %Load image 7
    bm14=imread("bm14.jpg"); 
    bm14Texture=Screen('MakeTexture', window, bm14); 
    Screen('DrawTexture', window, bm14Texture, [],[],0); 
    Screen('Flip', window);
    tryagain = false;
elseif keyCode(1,8) ~= 1 %
    %Load Instructions (Image 6)
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
    %drawing red 'X' on screen
    Screen('TextSize', window, 29);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'X', screenXpixels * 0.5, screenYpixels * 0.70, [1 0 0]);
    %Load image 6
    hnotebook=imread("hnotebook.jpg"); 
    hnotebookTexture=Screen('MakeTexture', window, hnotebook); 
    Screen('DrawTexture', window, hnotebookTexture, [],[],0); 
    tryagain = true;
end
end

%RESPONSE TO IMAGE 7 (Black American, press e)

start_time = GetSecs; %records time of image presentation
tryagain = true; %sets condition for if statement to run
while tryagain
[secs, keyCode, deltaSecs] = KbPressWait;
if keyCode(1,8) == 1 %e
    reactiontime = secs - start_time; %assign reaction time to this variable
    block5times = [block5times, reactiontime]; %adds rt from this trial to block rt vector
    %Load Instructions (Image 7)
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
    %Load image 8
    wm6=imread("wm6.jpg"); 
    wm6Texture=Screen('MakeTexture', window, wm6); 
    Screen('DrawTexture', window, wm6Texture, [],[],0); 
    Screen('Flip', window);
    tryagain = false;
elseif keyCode(1,8) ~= 1 %
    %Load Instructions (Image 6)
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
    %drawing red 'X' on screen
    Screen('TextSize', window, 29);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'X', screenXpixels * 0.5, screenYpixels * 0.70, [1 0 0]);
    %Load image 7
    bm14=imread("bm14.jpg"); 
    bm14Texture=Screen('MakeTexture', window, bm14); 
    Screen('DrawTexture', window, bm14Texture, [],[],0); 
    tryagain = true;
end
end


%RESPONSE TO IMAGE 8 (White american, press i)

start_time = GetSecs; %records time of image presentation
tryagain = true; %sets condition for if statement to run
while tryagain
[secs, keyCode, deltaSecs] = KbPressWait;
if keyCode(1,12) == 1 %i
    reactiontime = secs - start_time; %assign reaction time to this variable
    block5times = [block5times, reactiontime]; %adds rt from this trial to block rt vector
    %Load Instructions (Image 8)
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
    %Load image 9
        hwallet=imread("hwallet.jpg"); 
        hwalletTexture=Screen('MakeTexture', window, hwallet); 
        Screen('DrawTexture', window, hwalletTexture, [],[],0); 
        Screen('Flip', window); 
    tryagain = false;
elseif keyCode(1,12) ~= 1 %i
    %Load Instructions (Image 6)
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
    %drawing red 'X' on screen
    Screen('TextSize', window, 29);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'X', screenXpixels * 0.5, screenYpixels * 0.70, [1 0 0]);
    %Load image 8
    wm6=imread("wm6.jpg"); 
    wm6Texture=Screen('MakeTexture', window, wm6); 
    Screen('DrawTexture', window, wm6Texture, [],[],0); 
    Screen('Flip', window);
    tryagain = true;
end
end

%RESPONSE TO IMAGE 9 (harmless object, press e)

start_time = GetSecs; %records time of image presentation
tryagain = true; %sets condition for if statement to run
while tryagain
[secs, keyCode, deltaSecs] = KbPressWait;
if keyCode(1,8) == 1 %e
    reactiontime = secs - start_time; %assign reaction time to this variable
    block5times = [block5times, reactiontime]; %adds rt from this trial to block rt vector
    %Load Instructions
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
    %Load image 10
    wdynamite=imread("wdynamite.jpg"); 
    wdynamiteTexture=Screen('MakeTexture', window, wdynamite); 
    Screen('DrawTexture', window, wdynamiteTexture, [],[],0); 
    Screen('Flip', window); 
    tryagain = false;
elseif keyCode(1,8) ~= 1 %e
    %Load Instructions
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
    %drawing red 'X' on screen
    Screen('TextSize', window, 29);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'X', screenXpixels * 0.5, screenYpixels * 0.70, [1 0 0]);
    %Load image 9
    hwallet=imread("hwallet.jpg"); 
    hwalletTexture=Screen('MakeTexture', window, hwallet); 
    Screen('DrawTexture', window, hwalletTexture, [],[],0); 
    Screen('Flip', window); 
    tryagain = true;
end
end

%RESPONSE TO IMAGE 10 (weapon, press i)

start_time = GetSecs; %records time of image presentation
tryagain = true; %sets condition for if statement to run
while tryagain
[secs, keyCode, deltaSecs] = KbPressWait;
if keyCode(1,12) == 1 %i
    reactiontime = secs - start_time; %assign reaction time to this variable
    block5times = [block5times, reactiontime]; %adds rt from this trial to block rt vector
    %Load Instructions
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
    %Load image 11
    bf23=imread("bf23.jpg"); 
    bf23Texture = Screen('MakeTexture', window, bf23); 
    Screen('DrawTexture', window, bf23Texture, [], [], 0); 
    Screen('Flip', window); 
    tryagain = false;
elseif keyCode(1,12) ~= 1 %i
    %Load Instructions
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
    %drawing red 'X' on screen
    Screen('TextSize', window, 29);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'X', screenXpixels * 0.5, screenYpixels * 0.70, [1 0 0]);
    %load image 10
    wdynamite=imread("wdynamite.jpg"); 
    wdynamiteTexture=Screen('MakeTexture', window, wdynamite); 
    Screen('DrawTexture', window, wdynamiteTexture, [],[],0); 
    Screen('Flip', window); 
    tryagain = true;
end
end

%RESPONSE TO IMAGE 11 (Black american, press e)

start_time = GetSecs; %records time of image presentation
tryagain = true; %sets condition for if statement to run
while tryagain
[secs, keyCode, deltaSecs] = KbPressWait;
if keyCode(1,8) == 1 %e
    reactiontime = secs - start_time; %assign reaction time to this variable
    block5times = [block5times, reactiontime]; %adds rt from this trial to block rt vector
    %Load Instructions
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
    %Load image 12
    wf2=imread("wf2.jpg"); 
    wf2Texture = Screen('MakeTexture', window, wf2); 
    Screen('DrawTexture', window, wf2Texture, [], [], 0); 
    Screen('Flip', window);
    tryagain = false;
elseif keyCode(1,8) ~= 1 %e
    %Load Instructions
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
    %drawing red 'X' on screen
    Screen('TextSize', window, 29);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'X', screenXpixels * 0.5, screenYpixels * 0.70, [1 0 0]);
    %Load image 11
    bf23=imread("bf23.jpg"); 
    bf23Texture = Screen('MakeTexture', window, bf23); 
    Screen('DrawTexture', window, bf23Texture, [], [], 0); 
    Screen('Flip', window);
    tryagain = true;
end
end

%RESPONSE TO IMAGE 12 (White american, press i)

start_time = GetSecs; %records time of image presentation
tryagain = true; %sets condition for if statement to run
while tryagain
[secs, keyCode, deltaSecs] = KbPressWait;
if keyCode(1,12) == 1 %i
    reactiontime = secs - start_time; %assign reaction time to this variable
    block5times = [block5times, reactiontime]; %adds rt from this trial to block rt vector
    Screen('TextSize', window, 30);
    Screen('TextFont', window, 'Times');
    DrawFormattedText(window, 'press any key to see your result', screenXpixels * 0.28,...
   screenYpixels * 0.5, grey);
    % Flip to the screen
    Screen('Flip', window);
    KbStrokeWait;
    tryagain = false;
elseif keyCode(1,12) ~= 1 %i
    %Load Instructions
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
    %drawing red 'X' on screen
    Screen('TextSize', window, 29);
    Screen('TextFont', window, 'Georgia');
    DrawFormattedText(window, 'X', screenXpixels * 0.5, screenYpixels * 0.70, [1 0 0]);
    %Load image 12
    wf2=imread("wf2.jpg"); 
    wf2Texture = Screen('MakeTexture', window, wf2); 
    Screen('DrawTexture', window, wf2Texture, [], [], 0); 
    Screen('Flip', window);
    tryagain = true;
end
end

%ANALYZING THE SCORE - Paloma spent 1 hour writing this

%assuming we store reaction times a vector for each block:
block3meanrt = mean(trial3_times); %stores the mean reaction time for block 1
block5meanrt = mean(block5times);

%calculating the D-score (measure of implicit bias):
pooledblocks3and5 = [trial3_times, block5times];
finalDscore = (block5meanrt - block3meanrt)/std(pooledblocks3and6);

%if statement interprets d-score and stores in level_of_bias 
if finalDscore <= 0.15
    Screen('TextSize', window, 15);
    Screen('TextFont', window, 'Times');
    DrawFormattedText(window, 'Your results do not indicate bias', 'center',...
   screenYpixels * 0.4, black);
    Screen('Flip', window);
elseif finalDscore > 0.15 && finalDscore < 0.35
    Screen('TextSize', window, 15);
    Screen('TextFont', window, 'Times');
    DrawFormattedText(window, 'Your results indicate a low level of bias', 'center',...
   screenYpixels * 0.4, black);
    Screen('Flip', window);
elseif finalDscore >= 0.35 && finalDscore < 0.65
    Screen('TextSize', window, 15);
    Screen('TextFont', window, 'Times');
    DrawFormattedText(window, 'Your results indicate a moderate level of bias', 'center',...
   screenYpixels * 0.4, black);
    Screen('Flip', window);
elseif finalDscore >= 0.65
    Screen('TextSize', window, 15);
    Screen('TextFont', window, 'Times');
    DrawFormattedText(window, 'Your results indicate a high level of bias', 'center',...
   screenYpixels * 0.4, black);
    Screen('Flip', window);
end


