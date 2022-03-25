%ANALYZING THE SCORE - Paloma spent 1 hour writing this

%assuming we store reaction times a vector for each block:
block3meanrt = mean(block3times); %stores the mean reaction time for block 1
block4meanrt = mean(block4times);
block6meanrt = mean(block6times);
block7meanrt = mean(block7times);

%calculating the D-score (measure of implicit bias):
pooledblocks3and6 = [block3times, block6times];
D1 = (block6meanrt - block3meanrt)/std(pooledblocks3and6);
pooledblocks4and7 = [block4times, block7times];
D2 = (block7meanrt - block4meanrt)/std(pooledblocks4and7);
finalDscore = (D1+D2)/2;

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
