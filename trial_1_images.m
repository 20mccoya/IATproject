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

% Draw text in the upper portion of the screen with the default font in
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

%% slide 2 starts here
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
DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
   screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', 'right' ,...
   screenYpixels * 0.11, [0 1 1]);

%Load Image 1 
bf14=imread("bf14.jpg"); 

% Get the size of the image 
[s1, s2, s3]=size(bf14);

% Make image into a texture 
bf14Texture = Screen('MakeTexture', window, bf14); 

% Draw image to the screen
Screen('DrawTexture', window, bf14Texture, [], [], 0); 

% Flip image to the screen 
Screen('Flip', window); 

KbStrokeWait;
       
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

% Load Image 2
wm1=imread("wm1.jpg"); 

% Get the size of the image 
[s1, s2, s3]=size(wm1);

% Make image into a texture 
wm1Texture = Screen('MakeTexture', window, wm1); 

% Draw image to teh screen
Screen('DrawTexture', window, wm1Texture, [], [], 0); 

% Flip iamge to the screen 
Screen('Flip', window); 
 
KbStrokeWait;

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
DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
   screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', 'right' ,...
   screenYpixels * 0.11, [0 1 1]);

%Load image 3
wf2=imread("wf2.jpg"); 

% Get the size of the image 
[s1, s2, s3]=size(wf2);

% Make image into a texture 
wf2Texture = Screen('MakeTexture', window, wf2); 

% Draw image to the screen
Screen('DrawTexture', window, wf2Texture, [], [], 0); 

% Flip iamge to the screen 
Screen('Flip', window); 

KbStrokeWait;

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
DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
   screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', 'right' ,...
   screenYpixels * 0.11, [0 1 1]);

%Load Image 4
bm14=imread("bm14.jpg"); 

% Get the size of the image 
[s1, s2, s3]=size(bm14);

% Make image into a texture 
bm14Texture = Screen('MakeTexture', window, bm14); 

% Draw image to the screen
Screen('DrawTexture', window, bm14Texture, [], [], 0); 

% Flip image to the screen 
Screen('Flip', window); 

KbStrokeWait; 

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
DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
   screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', 'right' ,...
   screenYpixels * 0.11, [0 1 1]);

%Load Image 5
wf3=imread("wf3.jpg"); 

% Get the size of the image 
[s1, s2, s3]=size(wf3); 

% Make image into a texture 
wf3Texture = Screen('MakeTexture', window, wf3); 

% Draw image to the screen
Screen('DrawTexture', window, wf3Texture, [], [], 0); 

% Flip image to the screen 
Screen('Flip', window); 

KbStrokeWait; 
 
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
DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
   screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', 'right' ,...
   screenYpixels * 0.11, [0 1 1]);

%Load Image 6
bf23=imread("bf23.jpg"); 

% Get the size of the image 
[s1, s2, s3]=size(bf23);

% Make image into a texture 
bf23Texture = Screen('MakeTexture', window, bf23); 

% Draw image to the screen
Screen('DrawTexture', window, bf23Texture, [], [], 0); 

% Flip image to the screen 
Screen('Flip', window); 

KbStrokeWait; 

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
DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
   screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', 'right' ,...
   screenYpixels * 0.11, [0 1 1]);

% Load Image 7
bm23=imread("bm23.jpg"); 

% Get the size of the image 
[s1, s2, s3]=size(bm23);

% Make image into a texture 
bm23Texture = Screen('MakeTexture', window, bm23); 

% Draw image to the screen
Screen('DrawTexture', window, bm23Texture, [], [], 0); 

% Flip image to the screen 
Screen('Flip', window); 

KbStrokeWait; 

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
DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
   screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', 'right' ,...
   screenYpixels * 0.11, [0 1 1]);

% Load Image 8
wm4=imread("wm4.jpg"); 

% Get the size of the image 
[s1, s2, s3]=size(wm4);

% Make image into a texture 
wm4Texture = Screen('MakeTexture', window, wm4); 

% Draw image to the screen
Screen('DrawTexture', window, wm4Texture, [], [], 0); 

% Flip image to the screen 
Screen('Flip', window); 

KbStrokeWait; 

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
DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
   screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', 'right' ,...
   screenYpixels * 0.11, [0 1 1]);

%Load Image 9
bm56=imread("bm56.jpg"); 

% Get the size of the image 
[s1, s2, s3]=size(bm56);

% Make image into a texture 
bm56Texture = Screen('MakeTexture', window, bm56); 

% Draw image to the screen
Screen('DrawTexture', window, bm56Texture, [], [], 0); 

% Flip image to the screen 
Screen('Flip', window); 

KbStrokeWait; 

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
DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
   screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', 'right' ,...
   screenYpixels * 0.11, [0 1 1]);

%Load Image 10
bf56=imread("bf56.jpg"); 

% Get the size of the image 
[s1, s2, s3]=size(bf56);

% Make image into a texture 
bf56Texture = Screen('MakeTexture', window, bf56); 

% Draw image to the screen
Screen('DrawTexture', window, bf56Texture, [], [], 0); 

% Flip image to the screen 
Screen('Flip', window); 

KbStrokeWait; 

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
DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
   screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', 'right' ,...
   screenYpixels * 0.11, [0 1 1]);

%Load Image 11
wm6=imread("wm6.jpg"); 

% Get the size of the image 
[s1, s2, s3]=size(wm6);

% Make image into a texture 
wm6Texture = Screen('MakeTexture', window, wm6); 

% Draw image to the screen
Screen('DrawTexture', window, wm6Texture, [], [], 0); 

% Flip image to the screen 
Screen('Flip', window); 

KbStrokeWait; 

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

%Load Image 12
wf6=imread("wf6.jpg"); 

% Get the size of the image 
[s1, s2, s3]=size(wf6);

% Make image into a texture 
wf6Texture = Screen('MakeTexture', window, wf6); 

% Draw image to the screen
Screen('DrawTexture', window, wf6Texture, [], [], 0); 

% Flip image to the screen 
Screen('Flip', window); 

KbStrokeWait; 

