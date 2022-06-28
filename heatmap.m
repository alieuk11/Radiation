function [ img ] = heatmap( img, rad )
    %heatmap Generates a heatmap image by using values from rad to set
    %  values in the hue channel for img. Hue values vary smoothly
    %  depending on the corresponding radiation level.
    %     img: a 3-dimensional matrix of numbers representing an image in
    %          RGB (red-green-blue) format, which forms the background
    %          to which the heatmap colors are applied.
    %     rad: a matrix of numbers representing the radiation
    %          measurements, between 0 and 100 millisieverts.
    %          It is has the same width and height as the img parameter.

    img = rgb2hsv(img);
    %changes the image from RGB to HSV

    hue = img( :,:,1);
    sat = img (:,:,2);
    val = img(:,:,3);
    % pulls out a copy of each of the 3 channels

   hue =  0.7-0.7.*rad./100;
   img(:,:,1) = hue;
   % we make a change to the hue channel, and then update the changes into
   % the image

   sat = 1;
   img(:,:,2) = sat;
   % make a change to the saturation channel and update that back into the
   % image as well

  

   img = hsv2rgb(img);


  




end

