//
//  QuartzCodeCategoryOSX.m
//
//  Code generated using QuartzCode.
//  www.quartzcodeapp.com
//

#import "QuartzCodeCategoryOSX.h"

@implementation NSBezierPath (QuartzCode)

- (CGPoint)firstPoint
{
	CGPoint points[3];
	if ([self elementCount] > 0 )
	{
		NSBezierPathElement element = [self elementAtIndex:0 associatedPoints:points];
        
		if (element == NSCurveToBezierPathElement)
			return points[2];
		else
			return points[0];
	}
	else
		return CGPointZero;
}

- (CGPathRef)quartzPath
{
    NSInteger i, elementCount;
    
    CGPathRef quartzPath;
    elementCount = [self elementCount];
    if (elementCount > 0)
    {
        CGMutablePathRef    path = CGPathCreateMutable();
        NSPoint             points[3];
        
        for (i = 0; i < elementCount; i++)
        {
            NSBezierPathElement element = [self elementAtIndex:i associatedPoints:points];
            switch (element)
            {
                case NSMoveToBezierPathElement:
                    CGPathMoveToPoint(path, NULL, points[0].x, points[0].y);
                    break;
                    
                case NSLineToBezierPathElement:
                    CGPathAddLineToPoint(path, NULL, points[0].x, points[0].y);
                    break;
                    
                case NSCurveToBezierPathElement:
                    CGPathAddCurveToPoint(path, NULL, points[0].x, points[0].y,
                                          points[1].x, points[1].y,
                                          points[2].x, points[2].y);
                    break;
                    
                case NSClosePathBezierPathElement:
                    CGPathCloseSubpath(path);
                    break;
            }
        }
        quartzPath = CGPathCreateCopy(path);
        CGPathRelease(path);
    }
    return quartzPath;
}


@end