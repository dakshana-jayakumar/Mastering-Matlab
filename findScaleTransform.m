function [scaleTransform ]=  findScaleTransform(refDims,repDims)
if (repDims(1)/repDims(2) > 1) && (refDims(2)/refDims(2) > 1) % When the ratio of length to width is the same
    scaleTransform=affine2d([1/(repDims(1)/refDims(1)) 0 0 ; 0 1/(repDims(2)/refDims(2)) 0 ;0 0 1]);
else % When the ratio of length to width is different
    scaleTransform=affine2d([0 1/(repDims(2)/refDims(1))  0 ;  1/(repDims(1)/refDims(2)) 0 0 ;0 0 1]);
end
end