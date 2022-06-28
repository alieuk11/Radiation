function [ img ] = zones( img, rad )
    %zones Generates an image colored according to radiation threat 
    %  zones. Values from rad are used to determine the zone, and the hue
    %  value in img is set accordingly.
    %     img: a 3-dimensional matrix of numbers representing an image in
    %          RGB (red-green-blue) format, which forms the background for
    %          to which the heatmap colors are applied.
    %     rad: a matrix of numbers representing the radiation
    %          measurements, between 0 and 100 millisieverts.
    %          It is has the same width and height as the img parameter.

    %changes the image from RGB to HSV
    img = rgb2hsv(img);

    hue = img( :,:,1);
    sat = img (:,:,2);
    val = img(:,:,3);
    % pulls out a copy of each of the 3 channels

   sat = 1;
   img(:,:,2) = sat;
   % makes a change to the saturation channel and updates it back into
   % original image
      hue(rad >= 0 & rad < 20)= 0.6;
      hue(rad >= 20 & rad < 50) = 0.4;
      hue(rad >= 50 & rad < 70) = 0.2;
      hue(rad >= 70 & rad < 90) = 0.1;
      hue(rad >= 90) = 0;

      % This step is to set every zone equal to its corresponding hue, and
      % then replace it back into the original

      img(:,:,1) = hue;

   img = hsv2rgb(img);

end

