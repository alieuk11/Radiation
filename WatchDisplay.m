
% Driver program for smartwatch display
clear/clc
% clears all variables in the workspace and command window

Img = imread('dome_area.jpg');
% loads image into the workspace, and assigns it a name

[rowLoc , columnLoc, time] = GPS_data ();

% displays a number corresponding to the user's current row, column, and
% time

rad = scan_radiation (time);
% returns a matrix of the different scannings corresponding to the chosen
% time 

rad = removeNoise(rad,15);
% takes the original matrix and returns a filtered matrix

heatmapImg = heatmap(Img, rad);
zonesImg = zones(Img, rad);

%returns a heatmap image and a zones image using the previously made
%functions

z = display_settings();

 % returns the zoom offset for the local views of heatmap and zone images

 cropHeat = heatmapImg((rowLoc - z): (rowLoc + z) , (columnLoc - z): (columnLoc + z), :);
 cropZones = zonesImg((rowLoc - z): (rowLoc + z) , (columnLoc - z): (columnLoc + z), :);


 % gets the upper and lower boundaries for both the rows and columns by
 % adding and subtracting the zoom offset

 imwrite(cropHeat,'heatmap_local.png');
 imwrite(cropZones,'zones_local.png');

 % saves the images as our newly decided names




%% Get GPS data from user
% Note: For testing, use the following values
%   - row 622
%   - colum 942 
%   - time 935
% After you verify that you can create the sample images from the 
% project specs, then use the values returned by the GPS_data() function.








%% Get display settings
% Note: For testing, use a zoom offset value of 173
% After you verify that you can create the sample images from the 
% project specs, then use the values returned by the displaySettings() function.

z = display_settings(173);


%% Create the heatmap_local.png and zones_local.png images
% See the project spec for details.



