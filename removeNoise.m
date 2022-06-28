function [ rad ] = removeNoise( rad, n )
    %removeNoise Removes noise from a matrix of radiation values by
    %  applying an nxn mean filter three times.
    %       n: The size of the filter (e.g. if n=3, use a 3x3 filter)
    %     rad: a matrix of numbers representing the radiation
    %          measurements from the scanner.
    %          NOTE: A matrix obtained from a call to the scan_radiation()
    %          may be used as an input argument when calling this function,
    %          but you should NOT call scan_radiation() inside of this
    %          function!

    b = ones(n)./(n.^2);
    % determines the size of the matrix from the size of the filter

    rad = imfilter(rad,b , 'replicate');
    rad = imfilter(rad, b, 'replicate');
    rad = imfilter(rad,b, 'replicate');
    % uses matrix b as the parameters and runs imfilter in order to produce
    % a more defined image. The replicate function repeats this action 3
    % times.

    result = imshow(rad);

end