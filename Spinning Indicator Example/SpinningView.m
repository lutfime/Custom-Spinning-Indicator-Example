//
//  SpinningView.m
//
//  Code generated using QuartzCode on 13/08/14.
//  www.quartzcodeapp.com
//

#import "SpinningView.h"

@interface SpinningView ()

@property (nonatomic, strong) CAShapeLayer *slice;
@property (nonatomic, strong) CAReplicatorLayer *replicator2;
@property (nonatomic, strong) CAShapeLayer *slice2;
@property (nonatomic, strong) CAShapeLayer *slice4;
@property (nonatomic, strong) CAShapeLayer *oval;

@end

@implementation SpinningView

- (instancetype)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	if (self) {
		[self setupLayers];
	}
	return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
	self = [super initWithCoder:coder];
	if (self) {
		[self setupLayers];
	}
	return self;
}


- (void)setupLayers{
	[self setWantsLayer:YES];
	
	CAReplicatorLayer *replicator = [CAReplicatorLayer layer];
	replicator.frame = CGRectMake(28.734, 275.62, 170, 170);
	replicator.instanceCount = 12;
	replicator.instanceDelay = 0.1;
	replicator.instanceColor = [NSColor colorWithRed:1 green: 1 blue:1 alpha:1].CGColor;
	replicator.instanceTransform = CATransform3DMakeRotation(0.524, 0, 0, 1);
	[self.layer addSublayer:replicator];
	
	_slice = [CAShapeLayer layer];
	_slice.frame = CGRectMake(77, 121.11, 16, 48.887);
	_slice.lineJoin = kCALineJoinRound;
	_slice.fillColor = [NSColor blackColor].CGColor;
	_slice.strokeColor = [NSColor colorWithRed:0.329 green: 0.329 blue:0.329 alpha:1].CGColor;
	_slice.path = [self slicePath].quartzPath;
	[replicator addSublayer:_slice];
	
	_replicator2 = [CAReplicatorLayer layer];
	_replicator2.frame = CGRectMake(250.11, 295.9, 138.14, 129.44);
	_replicator2.instanceCount = 12;
	_replicator2.instanceDelay = 0.1;
	_replicator2.instanceColor = [NSColor colorWithRed:1 green: 1 blue:1 alpha:1].CGColor;
	_replicator2.instanceTransform = CATransform3DMakeRotation(0.524, 0, 0, 1);
	[self.layer addSublayer:_replicator2];
	
	_slice2 = [CAShapeLayer layer];
	_slice2.frame = CGRectMake(83.468, 64.455, 16, 48.887);
	_slice2.lineJoin = kCALineJoinRound;
	_slice2.fillColor = [NSColor blueColor].CGColor;
	_slice2.strokeColor = [NSColor cyanColor].CGColor;
	_slice2.lineWidth = 3;
	_slice2.path = [self slice2Path].quartzPath;
	[_replicator2 addSublayer:_slice2];
	
	CAReplicatorLayer *replicator3 = [CAReplicatorLayer layer];
	replicator3.frame = CGRectMake(408.03, 276.62, 170, 172.06);
	replicator3.instanceCount = 12;
	replicator3.instanceDelay = 0.1;
	replicator3.instanceColor = [NSColor colorWithRed:1 green: 1 blue:1 alpha:1].CGColor;
	replicator3.instanceTransform = CATransform3DMakeRotation(0.524, 0, 0, 1);
	[self.layer addSublayer:replicator3];
	
	_slice4 = [CAShapeLayer layer];
	_slice4.frame = CGRectMake(77, 123.18, 16, 48.887);
	_slice4.lineJoin = kCALineJoinRound;
	_slice4.fillColor = [NSColor yellowColor].CGColor;
	_slice4.strokeColor = [NSColor redColor].CGColor;
	_slice4.path = [self slice4Path].quartzPath;
	[replicator3 addSublayer:_slice4];
	
	CAReplicatorLayer *replicator4 = [CAReplicatorLayer layer];
	replicator4.frame = CGRectMake(29.734, 51.261, 170, 170);
	replicator4.instanceCount = 12;
	replicator4.instanceDelay = 0.1;
	replicator4.instanceColor = [NSColor colorWithRed:1 green: 1 blue:1 alpha:1].CGColor;
	replicator4.instanceTransform = CATransform3DMakeRotation(0.524, 0, 0, 1);
	[self.layer addSublayer:replicator4];
	
	_oval = [CAShapeLayer layer];
	_oval.frame = CGRectMake(71.049, 142.1, 27.902, 27.902);
	_oval.lineJoin = kCALineJoinRound;
	_oval.fillColor = [NSColor colorWithRed:0.0997 green: 0.471 blue:0.922 alpha:1].CGColor;
	_oval.strokeColor = [NSColor colorWithRed:0.329 green: 0.329 blue:0.329 alpha:1].CGColor;
	_oval.lineWidth = 0;
	_oval.path = [self ovalPath].quartzPath;
	[replicator4 addSublayer:_oval];
}


- (IBAction)startAllAnimations:(id)sender{
	
	[self.slice addAnimation:[self sliceAnimation] forKey:@"sliceAnimation"];
	[self.replicator2 addAnimation:[self replicator2Animation] forKey:@"replicator2Animation"];
	[self.slice2 addAnimation:[self slice2Animation] forKey:@"slice2Animation"];
	
	[self.slice4 addAnimation:[self slice4Animation] forKey:@"slice4Animation"];
	
	[self.oval addAnimation:[self ovalAnimation] forKey:@"ovalAnimation"];
	[self updateValueFromAnimationsForLayers:@[self.slice, self.replicator2, self.slice2, self.slice4, self.oval]];
}


- (CABasicAnimation*)sliceAnimation{
	CABasicAnimation *opacityAnim = [CABasicAnimation animationWithKeyPath:@"opacity"];
	opacityAnim.fromValue = @1;
	opacityAnim.toValue = @0.1;
	opacityAnim.duration = 1.2;
	opacityAnim.repeatCount = INFINITY;
	
	return opacityAnim;
}



- (CABasicAnimation*)replicator2Animation{
	CABasicAnimation *transformAnim = [CABasicAnimation animationWithKeyPath:@"transform"];
	transformAnim.fromValue = [NSValue valueWithCATransform3D:CATransform3DIdentity];;
	transformAnim.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeRotation(-6.28, 0, 0, 1)];;
	transformAnim.duration = 2.4;
	transformAnim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
	transformAnim.repeatCount = INFINITY;
	
	return transformAnim;
}

- (CAAnimationGroup*)slice2Animation{
	CABasicAnimation *opacityAnim = [CABasicAnimation animationWithKeyPath:@"opacity"];
	opacityAnim.fromValue = @1;
	opacityAnim.toValue = @0.1;
	opacityAnim.duration = 1.2;
	opacityAnim.repeatCount = INFINITY;
	
	CABasicAnimation *lineWidthAnim = [CABasicAnimation animationWithKeyPath:@"lineWidth"];
	lineWidthAnim.fromValue = @3;
	lineWidthAnim.toValue = @0;
	lineWidthAnim.duration = 1.2;
	lineWidthAnim.repeatCount = INFINITY;
	
	CAAnimationGroup *slice2Anim = [CAAnimationGroup animation];
	slice2Anim.animations = @[opacityAnim, lineWidthAnim];
	[slice2Anim.animations setValue:kCAFillModeBackwards forKeyPath:@"fillMode"];
	
	slice2Anim.duration = [self maxDurationFromAnimations:slice2Anim.animations];
	
	return slice2Anim;
}



- (CABasicAnimation*)slice3Animation{
	CABasicAnimation *opacityAnim = [CABasicAnimation animationWithKeyPath:@"opacity"];
	opacityAnim.fromValue = @1;
	opacityAnim.toValue = @0.1;
	opacityAnim.duration = 1.2;
	opacityAnim.repeatCount = INFINITY;
	
	return opacityAnim;
}

- (CAAnimationGroup*)slice4Animation{
	CABasicAnimation *opacityAnim = [CABasicAnimation animationWithKeyPath:@"opacity"];
	opacityAnim.fromValue = @1;
	opacityAnim.toValue = @0.1;
	opacityAnim.duration = 1.2;
	opacityAnim.repeatCount = INFINITY;
	
	CABasicAnimation *pathAnim = [CABasicAnimation animationWithKeyPath:@"path"];
	pathAnim.fromValue = (id)[self slice3Path].quartzPath;
	pathAnim.toValue = (id)[self slice4Path].quartzPath;
	pathAnim.duration = 1.2;
	pathAnim.repeatCount = INFINITY;
	
	CAAnimationGroup *slice4Anim = [CAAnimationGroup animation];
	slice4Anim.animations = @[opacityAnim, pathAnim];
	[slice4Anim.animations setValue:kCAFillModeBackwards forKeyPath:@"fillMode"];
	
	slice4Anim.duration = [self maxDurationFromAnimations:slice4Anim.animations];
	
	return slice4Anim;
}



- (CAAnimationGroup*)ovalAnimation{
	CABasicAnimation *opacityAnim = [CABasicAnimation animationWithKeyPath:@"opacity"];
	opacityAnim.fromValue = @1;
	opacityAnim.toValue = @0;
	opacityAnim.duration = 1.2;
	opacityAnim.repeatCount = INFINITY;
	
	CABasicAnimation *transformAnim = [CABasicAnimation animationWithKeyPath:@"transform"];
	transformAnim.fromValue = [NSValue valueWithCATransform3D:CATransform3DIdentity];;
	transformAnim.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.1, 0.1, 1)];;
	transformAnim.duration = 1.2;
	transformAnim.repeatCount = INFINITY;
	
	CABasicAnimation *fillColorAnim = [CABasicAnimation animationWithKeyPath:@"fillColor"];
	fillColorAnim.fromValue = (id)[NSColor colorWithRed:0.0997 green: 0.471 blue:0.922 alpha:1].CGColor;
	fillColorAnim.toValue = (id)[NSColor colorWithRed:0.465 green: 0.0571 blue:0.922 alpha:1].CGColor;
	fillColorAnim.duration = 1.2;
	fillColorAnim.repeatCount = INFINITY;
	
	CAAnimationGroup *ovalAnim = [CAAnimationGroup animation];
	ovalAnim.animations = @[opacityAnim, transformAnim, fillColorAnim];
	[ovalAnim.animations setValue:kCAFillModeBackwards forKeyPath:@"fillMode"];
	
	ovalAnim.duration = [self maxDurationFromAnimations:ovalAnim.animations];
	
	return ovalAnim;
}



- (CAAnimationGroup*)slice5Animation{
	CABasicAnimation *opacityAnim = [CABasicAnimation animationWithKeyPath:@"opacity"];
	opacityAnim.fromValue = @1;
	opacityAnim.toValue = @0.1;
	opacityAnim.duration = 1.2;
	opacityAnim.repeatCount = INFINITY;
	
	CABasicAnimation *transformAnim = [CABasicAnimation animationWithKeyPath:@"transform"];
	transformAnim.fromValue = [NSValue valueWithCATransform3D:CATransform3DIdentity];;
	transformAnim.toValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(0.5, 1, 1)];;
	transformAnim.duration = 1.2;
	transformAnim.repeatCount = INFINITY;
	
	CAAnimationGroup *slice5Anim = [CAAnimationGroup animation];
	slice5Anim.animations = @[opacityAnim, transformAnim];
	[slice5Anim.animations setValue:kCAFillModeBackwards forKeyPath:@"fillMode"];
	
	slice5Anim.duration = [self maxDurationFromAnimations:slice5Anim.animations];
	
	return slice5Anim;
}


- (CAAnimationGroup*)slice5GradientAnim{
	CABasicAnimation *colorsAnim = [CABasicAnimation animationWithKeyPath:@"colors"];
	colorsAnim.fromValue = @[(id)[NSColor colorWithRed:0.195 green: 0.934 blue:0.0785 alpha:1].CGColor, (id)[NSColor colorWithRed:0.276 green: 0.739 blue:0.409 alpha:1].CGColor, (id)[NSColor colorWithRed:1 green: 1 blue:1 alpha:1].CGColor];
	colorsAnim.toValue = @[(id)[NSColor colorWithRed:0.862 green: 0.769 blue:0.0809 alpha:1].CGColor, (id)[NSColor colorWithRed:0.276 green: 0.731 blue:0.706 alpha:1].CGColor, (id)[NSColor colorWithRed:0.817 green: 0.936 blue:0.785 alpha:1].CGColor];
	CABasicAnimation *endPointAnim = [CABasicAnimation animationWithKeyPath:@"endPoint"];
	endPointAnim.fromValue = [NSValue valueWithPoint:CGPointMake(0.5, 1.2)];
	endPointAnim.toValue = [NSValue valueWithPoint:CGPointMake(0.5, 1.23)];
	
	CAAnimationGroup *slice5GradientAnim = [CAAnimationGroup animation];
	slice5GradientAnim.animations = @[colorsAnim, endPointAnim];
	[slice5GradientAnim.animations setValue:kCAFillModeBackwards forKeyPath:@"fillMode"];
	
	[slice5GradientAnim.animations setValue:@(1.2) forKeyPath:@"duration"];
	[slice5GradientAnim.animations setValue:@(INFINITY) forKeyPath:@"repeatCount"];
	slice5GradientAnim.duration = [self maxDurationFromAnimations:slice5GradientAnim.animations];
	 
	return slice5GradientAnim;
}

#pragma mark - Bezier Path


- (NSBezierPath*)slicePath{
	NSBezierPath*  slicePath = [NSBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 16, 49) xRadius:10 yRadius:10];;
	return slicePath;
}


- (NSBezierPath*)slice2Path{
	NSBezierPath*  slice2Path = [NSBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 16, 49) xRadius:10 yRadius:10];;
	return slice2Path;
}


- (NSBezierPath*)slice4Path{
	NSBezierPath*  slice4Path = [NSBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 16, 49) xRadius:10 yRadius:10];;
	return slice4Path;
}


- (NSBezierPath*)ovalPath{
	NSBezierPath*  ovalPath = [NSBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 28, 28)];;
	return ovalPath;
}


- (NSBezierPath*)slice3Path{
	NSBezierPath*  slice3Path = [NSBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 20, 19) xRadius:10 yRadius:10];;
	return slice3Path;
}

#pragma mark - Others

- (void)updateValueFromAnimationsForLayers:(NSArray*)layers{
	for (CALayer *layer in layers) {
		[self updateValueFromAnimationsForLayer:layer];
	}
}

- (void)updateValueFromAnimationsForLayer:(CALayer*)layer{
	[CATransaction begin];
	[CATransaction setDisableActions:YES];
	
	void (^__block updateValueForAnim)(CAAnimation *) = ^(CAAnimation *anim){
		if ([anim isKindOfClass:[CABasicAnimation class]]) {
			CABasicAnimation *basicAnim = (CABasicAnimation*)anim;
			[layer setValue:basicAnim.toValue forKey:basicAnim.keyPath];
		}
		else if ([anim isKindOfClass:[CAKeyframeAnimation class]]) {
			CAKeyframeAnimation *keyAnim = (CAKeyframeAnimation*)anim;
			[layer setValue:keyAnim.values.lastObject forKey:keyAnim.keyPath];
		}
		else if ([anim isKindOfClass:[CAAnimationGroup class]]) {
			CAAnimationGroup *groupAnim = (CAAnimationGroup*)anim;
			for (CAAnimation *subAnim in groupAnim.animations) {
				updateValueForAnim(subAnim);
			}
		}
	};
	for (NSString *animKey in layer.animationKeys) {
		CAAnimation *anim = [layer animationForKey:animKey];
		updateValueForAnim(anim);
	}
	
	[CATransaction commit];
}
- (CGFloat)maxDurationFromAnimations:(NSArray*)anims{
	CGFloat maxDuration = 0;
	for (CAAnimation *anim in anims) {
		maxDuration = MAX(anim.beginTime + anim.duration * (CGFloat)(anim.repeatCount == 0 ? 1.0f : anim.repeatCount) * (anim.autoreverses ? 2.0f : 1.0f), maxDuration);
	}
	if (maxDuration == INFINITY) {
		maxDuration = 1000.0f;
	}
	
	return maxDuration;
}
@end