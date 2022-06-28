function [ hasTumor ] = detectTumor( brain )
    %detectTumor Returns whether or not a tumor was found in the image.
    %     brain: a matrix of numbers representing a grayscale image of a 
    %            brain scan. Bright areas may be tumors and need to
    %            be flagged for further testing.
    %            To get test data for this function, you may call the
    %            provided scan_brain() function and pass the value it
    %            returns into this function. However, DO NOT call
    %            scan_brain() in the code for this function itself.

  
    potentialTumor = brain(brain==1);
    % since we have a grayscale image with numbers between 0-1, this will
    % bring back a matrix where 1 is all the bright spots in the brain.
    hasTumor = sum(sum(potentialTumor)) > 350; 
    % This formula will then give us back a 0 or 1, with any number greater
    % than 320 being a tumor.





end

