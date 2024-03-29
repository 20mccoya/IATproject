
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

%% slide4 starts here 

Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
    screenYpixels * 0.07, black);

Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Harmless Objects', 'left' ,...
    screenYpixels * 0.11, [0 0 1]);

Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
    screenYpixels * 0.07, black);

Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Weapons', screenXpixels * 0.79 ,...
    screenYpixels * 0.11, [0 0 1]);

% Draw text in the middle of the screen in Courier in white
Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Part 2 of 7', screenXpixels * 0.46, screenYpixels * 0.36, black);

Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Put a left finger on the E key for items that belong to the category', screenXpixels * 0.1, screenYpixels * 0.41, black);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Harmless Objects', screenXpixels * 0.38, screenYpixels * 0.44, [0 0 1]);


Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Put a right finger on the I key for items that belong to the category', screenXpixels * 0.1, screenYpixels * 0.50, black);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Weapons', screenXpixels * 0.45, screenYpixels * 0.53, [0 0 1]);

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


%% slide5 starts here
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
    screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Harmless Objects', 'left' ,...
    screenYpixels * 0.11, [0 0 1]);
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'OR', screenXpixels * 0.11 ,...
    screenYpixels * 0.15, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'White Americans', 'left' ,...
    screenYpixels * 0.19, [0 1 1]);



Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
    screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Weapons', screenXpixels * 0.79 ,...
    screenYpixels * 0.11, [0 0 1]);
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'OR', screenXpixels * 0.85 ,...
    screenYpixels * 0.15, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', 'right' ,...
    screenYpixels * 0.19, [0 1 1]);

% Draw text in the middle of the screen in Courier in white
Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Part 3 of 7', screenXpixels * 0.46, screenYpixels * 0.36, black);


Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Use the E key for', screenXpixels * 0.42, screenYpixels * 0.41, black);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Harmless Objects', screenXpixels * 0.21, screenYpixels * 0.44, [0 0 1]);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'and', screenXpixels * 0.49, screenYpixels * 0.44, black);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'White Americans', screenXpixels * 0.56, screenYpixels * 0.44, [0 1 1]);


Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Use the I key for', screenXpixels * 0.42, screenYpixels * 0.50, black);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Weapons', screenXpixels * 0.33, screenYpixels * 0.53, [0 0 1]);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'and', screenXpixels * 0.49, screenYpixels * 0.53, black);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', screenXpixels * 0.56, screenYpixels * 0.53, [0 1 1]);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Each item belongs to only one category.', screenXpixels * 0.22, screenYpixels * 0.57, black);

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

%% slide 6 starts here
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
    screenYpixels * 0.07, black);

Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Harmless Objects', 'left' ,...
    screenYpixels * 0.11, [0 0 1]);

Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'OR', screenXpixels * 0.11 ,...
    screenYpixels * 0.15, black);

Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'White Americans', 'left' ,...
    screenYpixels * 0.19, [0 1 1]);



Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
    screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Weapons', screenXpixels * 0.79 ,...
    screenYpixels * 0.11, [0 0 1]);
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'OR', screenXpixels * 0.85 ,...
    screenYpixels * 0.15, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', 'right' ,...
    screenYpixels * 0.19, [0 1 1]);

% Draw text in the middle of the screen in Courier in white
Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Part 4 of 7', screenXpixels * 0.46, screenYpixels * 0.32, black);

Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'This is the same as the previous part.', screenXpixels * 0.29, screenYpixels * 0.36, grey);

Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Use the E key for', screenXpixels * 0.42, screenYpixels * 0.41, black);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Harmless Objects', screenXpixels * 0.21, screenYpixels * 0.44, [0 0 1]);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'and', screenXpixels * 0.49, screenYpixels * 0.44, black);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'White Americans', screenXpixels * 0.56, screenYpixels * 0.44, [0 1 1]);


Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Use the I key for', screenXpixels * 0.42, screenYpixels * 0.50, black);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Weapons', screenXpixels * 0.33, screenYpixels * 0.53, [0 0 1]);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'and', screenXpixels * 0.49, screenYpixels * 0.53, black);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', screenXpixels * 0.56, screenYpixels * 0.53, [0 1 1]);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Each item belongs to only one category.', screenXpixels * 0.22, screenYpixels * 0.57, black);

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


%% slide 7 starts here
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
DrawFormattedText(window, 'Part 5 of 7', screenXpixels * 0.46, screenYpixels * 0.32, black);

Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Watch out, the labels have changed position!', screenXpixels * 0.24, screenYpixels * 0.37, grey);

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

%% slide 8 starts here

Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
    screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Harmless Objects', 'left' ,...
    screenYpixels * 0.11, [0 0 1]);
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'OR', screenXpixels * 0.11 ,...
    screenYpixels * 0.15, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', 'left' ,...
    screenYpixels * 0.19, [0 1 1]);



Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
    screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Weapons', screenXpixels * 0.79 ,...
    screenYpixels * 0.11, [0 0 1]);
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'OR', screenXpixels * 0.85 ,...
    screenYpixels * 0.15, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'White Americans', 'right' ,...
    screenYpixels * 0.19, [0 1 1]);

% Draw text in the middle of the screen in Courier in white
Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Part 6 of 7', screenXpixels * 0.46, screenYpixels * 0.36, black);


Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Use the E key for', screenXpixels * 0.42, screenYpixels * 0.41, black);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Harmless Objects', screenXpixels * 0.21, screenYpixels * 0.44, [0 0 1]);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'and', screenXpixels * 0.49, screenYpixels * 0.44, black);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', screenXpixels * 0.56, screenYpixels * 0.44, [0 1 1]);


Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Use the I key for', screenXpixels * 0.42, screenYpixels * 0.50, black);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Weapons', screenXpixels * 0.33, screenYpixels * 0.53, [0 0 1]);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'and', screenXpixels * 0.49, screenYpixels * 0.53, black);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'White Americans', screenXpixels * 0.56, screenYpixels * 0.53, [0 1 1]);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Each item belongs to only one category.', screenXpixels * 0.22, screenYpixels * 0.57, black);

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

%% slide 9 starts here
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Press E for', screenXpixels * 0.07 ,...
    screenYpixels * 0.07, black);

Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Harmless Objects', 'left' ,...
    screenYpixels * 0.11, [0 0 1]);

Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'OR', screenXpixels * 0.11 ,...
    screenYpixels * 0.15, black);

Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', 'left' ,...
    screenYpixels * 0.19, [0 1 1]);



Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Press I for', screenXpixels * 0.82 ,...
    screenYpixels * 0.07, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Weapons', screenXpixels * 0.79 ,...
    screenYpixels * 0.11, [0 0 1]);
Screen('TextSize', window, 20);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'OR', screenXpixels * 0.85 ,...
    screenYpixels * 0.15, black);
Screen('TextSize', window, 35);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'White Americans', 'right' ,...
    screenYpixels * 0.19, [0 1 1]);

% Draw text in the middle of the screen in Courier in white
Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Part 7 of 7', screenXpixels * 0.46, screenYpixels * 0.32, black);

Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'This is the same as the previous part.', screenXpixels * 0.29, screenYpixels * 0.36, grey);

Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Use the E key for', screenXpixels * 0.42, screenYpixels * 0.41, black);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Harmless Objects', screenXpixels * 0.21, screenYpixels * 0.44, [0 0 1]);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'and', screenXpixels * 0.49, screenYpixels * 0.44, black);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Black Americans', screenXpixels * 0.56, screenYpixels * 0.44, [0 1 1]);


Screen('TextSize', window, 25);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Use the I key for', screenXpixels * 0.42, screenYpixels * 0.50, black);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Weapons', screenXpixels * 0.33, screenYpixels * 0.53, [0 0 1]);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'and', screenXpixels * 0.49, screenYpixels * 0.53, black);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'White Americans', screenXpixels * 0.56, screenYpixels * 0.53, [0 1 1]);

Screen('TextSize', window, 30);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Each item belongs to only one category.', screenXpixels * 0.22, screenYpixels * 0.57, black);

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


%% slide 10 starts here

Screen('TextSize', window, 43);
Screen('TextFont', window, 'Georgia');
DrawFormattedText(window, 'Press space to continue to the next task ', 'center', 'center', black);



% Flip to the screen
Screen('Flip', window);

KbStrokeWait;
sca;





