.class public Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.super Landroid/widget/ImageView;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;,
        Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;
    }
.end annotation


# instance fields
.field private mAlphaAnim:Landroid/view/animation/Animation;

.field private mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mArrow:Landroid/widget/ImageView;

.field private mBlinkAnimator:Landroid/animation/ValueAnimator;

.field private mBlinkListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCArrowAlpha:I

.field private mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mCArrowAlphaEnd:I

.field private mCArrowAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCArrowAlphaStart:I

.field private mCArrowBitmap:Landroid/graphics/Bitmap;

.field private mCArrowDiagSize:F

.field private final mCArrowPaint:Landroid/graphics/Paint;

.field private mCArrowRect:Landroid/graphics/RectF;

.field private mCArrowScale:F

.field private mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

.field private mCArrowScaleEnd:F

.field private mCArrowScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCArrowScaleStart:F

.field private mCenterX:I

.field private mCenterXOnScreen:I

.field private mCenterY:I

.field private mCenterYOnScreen:I

.field private mClipDistance:F

.field private mCubicEaseIn:Landroid/view/animation/interpolator/CubicEaseIn;

.field private mCubicEaseOut:Landroid/view/animation/interpolator/CubicEaseOut;

.field private mDCircleAlpha:I

.field private mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mDCircleAnimator:Landroid/animation/ValueAnimator;

.field private mDCircleEndAlpha:I

.field private mDCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mDCircleMaxRadius:F

.field private final mDCirclePaint:Landroid/graphics/Paint;

.field private mDCircleRadius:F

.field private mDCircleStartAlpha:I

.field private mFling:Z

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field protected mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

.field private mHintAnimation:Z

.field private mIconAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mIconAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mImageScale:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIsPainterReady:Z

.field private mIsSecure:Z

.field private mJustClicked:Z

.field private mMaxRadius:F

.field private mOldDistance:F

.field private mPaintColor:Landroid/graphics/Paint;

.field private mPaintPreview:Landroid/graphics/Paint;

.field private mPreviewAlphaShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mPreviewClipEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mPreviewClipRect:Landroid/graphics/RectF;

.field private mPreviewClipper:Landroid/animation/Animator;

.field private mPreviewColor:I

.field private mPreviewShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mPreviewShrinker:Landroid/animation/ValueAnimator;

.field private mPreviewShrinkerAlpha:Landroid/animation/ValueAnimator;

.field private mPreviewView:Landroid/view/View;

.field private mRadiusEnd:F

.field private mRadiusStart:F

.field private mReveal:Z

.field private mRight:Z

.field private mScaleAnimator:Landroid/animation/ValueAnimator;

.field private mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mShaderPreview:Z

.field private mShortcutForCamera:Z

.field private mSineIn33:Landroid/view/animation/Interpolator;

.field private mSineIn80:Landroid/view/animation/Interpolator;

.field private mSineOut33:Landroid/view/animation/Interpolator;

.field private mSineOut80:Landroid/view/animation/Interpolator;

.field private mStoppingAndHiding:Z

.field private mTouchCancelled:Z

.field private mTouchHandler:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;

.field private mTrusted:Z

.field private mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVisualCuePlaying:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v8, 0x0

    const v7, 0x3f547ae1    # 0.83f

    const v6, 0x3e2e147b    # 0.17f

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 185
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 112
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchCancelled:Z

    .line 134
    iput v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mOldDistance:F

    .line 137
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    .line 138
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    .line 139
    iput-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    .line 140
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    .line 150
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    .line 152
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    .line 156
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mJustClicked:Z

    .line 157
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    .line 162
    iput-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaAnim:Landroid/view/animation/Animation;

    .line 168
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    .line 232
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$2;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 238
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$3;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 244
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$4;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 250
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$5;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 256
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$6;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 262
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$7;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 272
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$8;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 278
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$9;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 290
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$10;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 296
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$11;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mBlinkListener:Landroid/animation/AnimatorListenerAdapter;

    .line 1073
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mStoppingAndHiding:Z

    .line 1411
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVisualCuePlaying:Z

    .line 1412
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 186
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    .line 188
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    .line 189
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 192
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00e5

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 197
    .local v0, "color":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;

    .line 200
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 202
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineOut80:Landroid/view/animation/Interpolator;

    .line 203
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f4ccccd    # 0.8f

    invoke-direct {v2, v3, v8, v7, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineIn80:Landroid/view/animation/Interpolator;

    .line 204
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineOut33:Landroid/view/animation/Interpolator;

    .line 205
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    invoke-direct {v2, v3, v8, v7, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineIn33:Landroid/view/animation/Interpolator;

    .line 206
    new-instance v2, Landroid/view/animation/interpolator/CubicEaseIn;

    invoke-direct {v2}, Landroid/view/animation/interpolator/CubicEaseIn;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCubicEaseIn:Landroid/view/animation/interpolator/CubicEaseIn;

    .line 207
    new-instance v2, Landroid/view/animation/interpolator/CubicEaseOut;

    invoke-direct {v2}, Landroid/view/animation/interpolator/CubicEaseOut;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCubicEaseOut:Landroid/view/animation/interpolator/CubicEaseOut;

    .line 209
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202d8

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 210
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    .line 211
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3edeb852    # 0.435f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowDiagSize:F

    .line 213
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    .line 215
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    .line 216
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    .line 218
    new-instance v2, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    const v4, 0x3ecccccd    # 0.4f

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 220
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 221
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 228
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsSecure:Z

    .line 229
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTrusted:Z

    .line 230
    return-void

    .line 195
    .end local v0    # "color":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001e

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .restart local v0    # "color":I
    goto/16 :goto_0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsSecure:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkerAlpha:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkerAlpha:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->initAnimatedValues()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mBlinkAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mBlinkAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # F

    .prologue
    .line 63
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTrusted:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    return p1
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # F

    .prologue
    .line 63
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScale:F

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlpha:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlpha:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # F

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewClipRect(F)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # F

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewColor(F)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # F

    .prologue
    .line 63
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    return p1
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setArrowImageAlpha(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mStoppingAndHiding:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchCancelled:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchCancelled:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchX:F

    return v0
.end method

.method static synthetic access$3402(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # F

    .prologue
    .line 63
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchX:F

    return p1
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchY:F

    return v0
.end method

.method static synthetic access$3502(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # F

    .prologue
    .line 63
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchY:F

    return p1
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShortcutForCamera:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->initVelocityTracker()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->trackMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->endMotion(FF)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewShrinker(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewAlphaShrinker()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isNormalAppInSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mJustClicked:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mJustClicked:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAllAnimators()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAnimator(Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAlphaAnimator(Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCArrowAnimator(Z)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCArrowBlinker()V

    return-void
.end method

.method static synthetic access$5002(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # F

    .prologue
    .line 63
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    return p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    return v0
.end method

.method static synthetic access$5200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # F

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->showHideCArrow(F)V

    return-void
.end method

.method static synthetic access$5402(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # F

    .prologue
    .line 63
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mOldDistance:F

    return p1
.end method

.method static synthetic access$5500(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/Animator;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Landroid/animation/Animator;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->dispatchCancelEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$5902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVisualCuePlaying:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z

    return p1
.end method

.method private cancelAllAnimators()V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mCircleAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mIconAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mCArrowScaleAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mCArrowAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    const-string v1, "mPreviewShrinker"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mBlinkAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mBlinkAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 626
    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;
    .param p2, "debugName"    # Ljava/lang/String;

    .prologue
    .line 600
    if-eqz p1, :cond_0

    .line 601
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 603
    const-string v0, "mCircleAnimator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    const-string v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCircleAnimator:mCircleRadius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    const-string v0, "mAlphaAnimator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    const-string v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAlphaAnimator:mAlpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 607
    :cond_2
    const-string v0, "mTranslateAnimator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 608
    const-string v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCArrowAnimator:mCArrowScale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 609
    :cond_3
    const-string v0, "mPreviewShrinker"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 610
    const-string v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreviewShrinker:mPreviewClipRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 611
    :cond_4
    const-string v0, "mBlinkAnimator"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    const-string v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBlinkAnimator:alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private checkIfShaderReady()V
    .locals 5

    .prologue
    .line 636
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 637
    const-string v1, "KeyguardCircleAffordanceView"

    const-string v2, "mPreviewView = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 641
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 642
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 646
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 647
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    goto :goto_0
.end method

.method private dispatchCancelEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1197
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1198
    .local v0, "me":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1200
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1201
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1202
    return-void
.end method

.method private draw4CornerArrows(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 534
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScale:F

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 542
    :goto_0
    return-void

    .line 538
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 539
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScale:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScale:F

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 541
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private drawCircle(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 527
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 529
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 531
    :cond_0
    return-void
.end method

.method private drawPreviewCircle(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    if-eqz v0, :cond_1

    .line 547
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 549
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    neg-int v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 550
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 551
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 555
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    neg-int v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 556
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 557
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private endMotion(FF)V
    .locals 8
    .param p1, "lastX"    # F
    .param p2, "lastY"    # F

    .prologue
    .line 726
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchX:F

    sub-float v1, p1, v3

    .line 727
    .local v1, "xDist":F
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchY:F

    sub-float v2, p2, v3

    .line 728
    .local v2, "yDist":F
    float-to-double v4, v1

    float-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v0, v4

    .line 730
    .local v0, "distance":F
    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    .line 731
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->revealOrVeil(FF)V

    .line 736
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 737
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 738
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 740
    :cond_0
    return-void

    .line 733
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingAborted()V

    goto :goto_0
.end method

.method private getCurrentVelocity(FF)F
    .locals 10
    .param p1, "lastX"    # F
    .param p2, "lastY"    # F

    .prologue
    .line 744
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_0

    .line 745
    const/4 v5, 0x0

    .line 758
    :goto_0
    return v5

    .line 748
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 749
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 750
    .local v0, "aX":F
    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 752
    .local v1, "aY":F
    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchX:F

    sub-float v3, p1, v6

    .line 753
    .local v3, "bX":F
    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mInitialTouchY:F

    sub-float v4, p2, v6

    .line 754
    .local v4, "bY":F
    float-to-double v6, v3

    float-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v2, v6

    .line 756
    .local v2, "bLen":F
    mul-float v6, v0, v3

    mul-float v7, v1, v4

    add-float/2addr v6, v7

    div-float v5, v6, v2

    .line 758
    .local v5, "projectedVelocity":F
    goto :goto_0
.end method

.method private getEndListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 983
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$24;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$24;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private getMaxCircleSize()F
    .locals 8

    .prologue
    .line 762
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 763
    .local v1, "mTempPoint":[I
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getLocationInWindow([I)V

    .line 764
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v2, v4

    .line 765
    .local v2, "rootWidth":F
    const/4 v4, 0x0

    aget v4, v1, v4

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    add-int/2addr v4, v5

    int-to-float v3, v4

    .line 766
    .local v3, "width":F
    sub-float v4, v2, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 767
    const/4 v4, 0x1

    aget v4, v1, v4

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    add-int/2addr v4, v5

    int-to-float v0, v4

    .line 768
    .local v0, "height":F
    float-to-double v4, v3

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    return v4
.end method

.method private initAnimatedValues()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 854
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    .line 855
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    .line 856
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z

    .line 857
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    .line 858
    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScale:F

    .line 859
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 860
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 861
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 862
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 716
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 717
    return-void
.end method

.method private isNormalAppInSecure()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 629
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsSecure:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTrusted:Z

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->useIndependentLockTimeout()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v3, :cond_1

    :cond_0
    move v0, v1

    .line 632
    .local v0, "secure":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShortcutForCamera:Z

    if-nez v3, :cond_2

    :goto_1
    return v1

    .end local v0    # "secure":Z
    :cond_1
    move v0, v2

    .line 629
    goto :goto_0

    .restart local v0    # "secure":Z
    :cond_2
    move v1, v2

    .line 632
    goto :goto_1
.end method

.method private revealOrVeil(FF)V
    .locals 5
    .param p1, "lastX"    # F
    .param p2, "lastY"    # F

    .prologue
    const/4 v4, 0x1

    .line 772
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getCurrentVelocity(FF)F

    move-result v0

    .line 774
    .local v0, "vel":F
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFling:Z

    .line 775
    const-string v1, "KeyguardCircleAffordanceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "revealOrVeil currentVelocity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/high16 v1, -0x3a860000    # -4000.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 777
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    .line 778
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->isNormalAppInSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->startUnlockAnimation()V

    .line 780
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$20;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$20;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 795
    :goto_0
    return-void

    .line 788
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->revealWithCurrentVelocity(F)V

    goto :goto_0

    .line 792
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    .line 793
    neg-float v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->veilWithCurrentVelocity(F)V

    goto :goto_0
.end method

.method private revealWithCurrentVelocity(F)V
    .locals 8
    .param p1, "vel"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 818
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFFZ)V

    .line 819
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    if-eqz v0, :cond_1

    .line 820
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 822
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 824
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    .line 826
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    .line 828
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 829
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideEnded()V

    .line 851
    :goto_0
    return-void

    .line 833
    :cond_1
    const/4 v3, 0x1

    const-wide/16 v4, 0xc8

    move-object v1, p0

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 836
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewColorRevealer(FF)V

    .line 837
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    .line 839
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 840
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideEnded()V

    goto :goto_0
.end method

.method private setArrowImageAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 915
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isLatestUSAShortCutVI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVisualCuePlaying:Z

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 918
    :cond_0
    return-void
.end method

.method private setCArrowAlphaAnimator(ZZ)V
    .locals 5
    .param p1, "appear"    # Z
    .param p2, "inHurry"    # Z

    .prologue
    const/4 v4, 0x0

    .line 415
    if-eqz p1, :cond_0

    .line 416
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlpha:I

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaStart:I

    .line 417
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaEnd:I

    .line 424
    :goto_0
    const-string v1, "KeyguardCircleAffordanceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCArrowAlphaAnimator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaStart:I

    aput v2, v1, v4

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaEnd:I

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 428
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 429
    if-eqz p2, :cond_1

    const-wide/16 v2, 0x96

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 430
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 431
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineOut33:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 432
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$15;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$15;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 440
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 441
    return-void

    .line 419
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlpha:I

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaStart:I

    .line 420
    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaEnd:I

    goto :goto_0

    .line 429
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    const-wide/16 v2, 0x15e

    goto :goto_1

    .line 431
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineIn33:Landroid/view/animation/Interpolator;

    goto :goto_2
.end method

.method private setCArrowAnimator(Z)V
    .locals 1
    .param p1, "appear"    # Z

    .prologue
    const/4 v0, 0x0

    .line 382
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCArrowScaleAnimator(ZZ)V

    .line 383
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCArrowAlphaAnimator(ZZ)V

    .line 384
    return-void
.end method

.method private setCArrowBlinker()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 486
    const-string v1, "KeyguardCircleAffordanceView"

    const-string v2, "setArrowBlinker:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 489
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mBlinkAnimator:Landroid/animation/ValueAnimator;

    .line 490
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 491
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 492
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 493
    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 494
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$18;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$18;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 502
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mBlinkListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 503
    return-void

    .line 488
    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method private setCArrowScaleAnimator(ZZ)V
    .locals 4
    .param p1, "appear"    # Z
    .param p2, "inHurry"    # Z

    .prologue
    .line 387
    if-eqz p1, :cond_0

    .line 388
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScale:F

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleStart:F

    .line 389
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleEnd:F

    .line 396
    :goto_0
    const-string v1, "KeyguardCircleAffordanceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCArrowScaleAnimator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleStart:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleEnd:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleStart:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleEnd:F

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 400
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    .line 401
    if-eqz p2, :cond_1

    const-wide/16 v2, 0x96

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 402
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 403
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCubicEaseOut:Landroid/view/animation/interpolator/CubicEaseOut;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 404
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$14;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 411
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 412
    return-void

    .line 391
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScale:F

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleStart:F

    .line 392
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleEnd:F

    goto :goto_0

    .line 401
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    const-wide/16 v2, 0x15e

    goto :goto_1

    .line 403
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCubicEaseIn:Landroid/view/animation/interpolator/CubicEaseIn;

    goto :goto_2
.end method

.method private setDCircleAlphaAnimator(Z)V
    .locals 5
    .param p1, "appear"    # Z

    .prologue
    const/4 v4, 0x0

    .line 356
    if-eqz p1, :cond_0

    .line 357
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleStartAlpha:I

    .line 358
    const/16 v1, 0x59

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndAlpha:I

    .line 365
    :goto_0
    const-string v1, "KeyguardCircleAffordanceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDCircleAlphaAnimator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleStartAlpha:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndAlpha:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleStartAlpha:I

    aput v2, v1, v4

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndAlpha:I

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 368
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 369
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 370
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineOut33:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 371
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$13;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 378
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 379
    return-void

    .line 360
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleStartAlpha:I

    .line 361
    iput v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndAlpha:I

    goto :goto_0

    .line 370
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineIn33:Landroid/view/animation/Interpolator;

    goto :goto_1
.end method

.method private setDCircleAnimator(Z)V
    .locals 1
    .param p1, "appear"    # Z

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAnimator(ZZ)V

    .line 328
    return-void
.end method

.method private setDCircleAnimator(ZZ)V
    .locals 4
    .param p1, "appear"    # Z
    .param p2, "inHurry"    # Z

    .prologue
    .line 331
    if-eqz p1, :cond_0

    .line 332
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusStart:F

    .line 333
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusEnd:F

    .line 340
    :goto_0
    const-string v1, "KeyguardCircleAffordanceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDCircleAnimator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusStart:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusEnd:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusStart:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusEnd:F

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 342
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    .line 343
    if-eqz p2, :cond_1

    const-wide/16 v2, 0x96

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 344
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCubicEaseOut:Landroid/view/animation/interpolator/CubicEaseOut;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 345
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$12;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 352
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 353
    return-void

    .line 335
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusStart:F

    .line 336
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRadiusEnd:F

    goto :goto_0

    .line 343
    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    :cond_1
    const-wide/16 v2, 0x15e

    goto :goto_1

    .line 344
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCubicEaseIn:Landroid/view/animation/interpolator/CubicEaseIn;

    goto :goto_2
.end method

.method private setPreviewAlphaShrinker()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 468
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 469
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkerAlpha:Landroid/animation/ValueAnimator;

    .line 470
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 471
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineIn33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 472
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$17;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$17;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 481
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewAlphaShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 482
    return-void
.end method

.method private setPreviewClipRect(F)V
    .locals 5
    .param p1, "d"    # F

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    int-to-float v2, v2

    sub-float/2addr v2, p1

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    int-to-float v3, v3

    add-float/2addr v3, p1

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    int-to-float v4, v4

    add-float/2addr v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1221
    return-void
.end method

.method private setPreviewColor(F)V
    .locals 6
    .param p1, "distance"    # F

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1206
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    div-float/2addr v1, v5

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 1207
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    div-float v0, p1, v1

    .line 1214
    .local v0, "alpha":F
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1215
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1216
    return-void

    .line 1208
    .end local v0    # "alpha":F
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 1209
    const/high16 v0, 0x3f000000    # 0.5f

    .restart local v0    # "alpha":F
    goto :goto_0

    .line 1211
    .end local v0    # "alpha":F
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    sub-float v1, p1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    div-float v0, v1, v5

    .restart local v0    # "alpha":F
    goto :goto_0
.end method

.method private setPreviewColorRevealer(FF)V
    .locals 4
    .param p1, "currentDistance"    # F
    .param p2, "maxCircleRadious"    # F

    .prologue
    .line 507
    const-string v1, "KeyguardCircleAffordanceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewColorRevealer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 510
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipper:Landroid/animation/Animator;

    .line 511
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$19;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$19;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 523
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewClipEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 524
    return-void
.end method

.method private setPreviewShrinker(Z)V
    .locals 4
    .param p1, "appear"    # Z

    .prologue
    .line 445
    const-string v1, "KeyguardCircleAffordanceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreviewShrinker:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    if-eqz p1, :cond_0

    .line 465
    :goto_0
    return-void

    .line 451
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 452
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    .line 453
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 454
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCubicEaseIn:Landroid/view/animation/interpolator/CubicEaseIn;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 455
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$16;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$16;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 464
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinkEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private showHideCArrow(F)V
    .locals 2
    .param p1, "d"    # F

    .prologue
    .line 1224
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowDiagSize:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mOldDistance:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowDiagSize:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 1225
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mCArrowAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 1226
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mCArrowScaleAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 1227
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mBlinkAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mBlinkAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 1229
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1230
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    .line 1236
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowDiagSize:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mOldDistance:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowDiagSize:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1232
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScale:F

    .line 1233
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1234
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    goto :goto_0
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 723
    :cond_0
    return-void
.end method

.method private veilWithCurrentVelocity(F)V
    .locals 10
    .param p1, "vel"    # F

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 798
    const/16 v0, 0x59

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlpha:I

    .line 799
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAllAnimators()V

    .line 801
    invoke-direct {p0, v6, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCArrowScaleAnimator(ZZ)V

    .line 802
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewShrinker(Z)V

    .line 803
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAnimator(Z)V

    .line 805
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mClipDistance:F

    move v4, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    .line 806
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 808
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 812
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 813
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewShrinker:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 814
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 815
    return-void
.end method


# virtual methods
.method public cancelDAAffordance()V
    .locals 2

    .prologue
    .line 1506
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isLatestUSAShortCutVI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mVisualCuePlaying:Z

    if-eqz v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1508
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 1510
    :cond_0
    return-void
.end method

.method public getRestingAlpha()F
    .locals 1

    .prologue
    .line 865
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 307
    .local v0, "parent":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 310
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isLatestUSAShortCutVI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$USADaTouchHandler;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchHandler:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;

    .line 312
    const v1, 0x7f0e00f6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrow:Landroid/widget/ImageView;

    .line 313
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrow:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, -0xbbbbbc

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f050000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaAnim:Landroid/view/animation/Animation;

    .line 322
    :goto_0
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 323
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 324
    return-void

    .line 319
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$GeneralTouchHandler;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchHandler:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;

    goto :goto_0
.end method

.method public isPlayingHintAnimation()Z
    .locals 1

    .prologue
    .line 1472
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    return v0
.end method

.method public isWaitingLaunchAppInSecure()Z
    .locals 1

    .prologue
    .line 1476
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mReveal:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 584
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->drawCircle(Landroid/graphics/Canvas;)V

    .line 585
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->draw4CornerArrows(Landroid/graphics/Canvas;)V

    .line 587
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    if-nez v0, :cond_0

    .line 588
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->drawPreviewCircle(Landroid/graphics/Canvas;)V

    .line 590
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 591
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 592
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 593
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 595
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    if-eqz v0, :cond_1

    .line 596
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->drawPreviewCircle(Landroid/graphics/Canvas;)V

    .line 597
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 564
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 565
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    .line 566
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    .line 568
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 569
    .local v0, "pos":[I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getLocationOnScreen([I)V

    .line 570
    const/4 v1, 0x0

    aget v1, v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterXOnScreen:I

    .line 571
    const/4 v1, 0x1

    aget v1, v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterYOnScreen:I

    .line 573
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterX:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCenterY:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowRect:Landroid/graphics/RectF;

    .line 579
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getMaxCircleSize()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mMaxRadius:F

    .line 580
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1117
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    if-nez v0, :cond_0

    .line 1118
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->checkIfShaderReady()V

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mTouchHandler:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$TouchHandlePolicy;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public releaseShader()V
    .locals 2

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    if-eqz v0, :cond_0

    .line 652
    const-string v0, "KeyguardCircleAffordanceView"

    const-string v1, "releaseShader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    .line 657
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 658
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 660
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 1065
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAllAnimators()V

    .line 1066
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->initAnimatedValues()V

    .line 1068
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1071
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 1481
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1482
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isLatestUSAShortCutVI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1483
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    .line 1485
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    .prologue
    .line 709
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHelperCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    .line 710
    return-void
.end method

.method public setImageAlpha(FZ)V
    .locals 8
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, 0x0

    .line 921
    const-wide/16 v4, -0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v7, v6

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 922
    return-void
.end method

.method public setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 11
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z
    .param p3, "duration"    # J
    .param p5, "startDelay"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p8, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 940
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, p1, v8

    if-nez v8, :cond_1

    const/4 v3, 0x1

    .line 941
    .local v3, "appear":Z
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string v9, "mIconAlphaAnimator"

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 942
    const v8, 0x433f4000    # 191.25f

    mul-float/2addr v8, p1

    float-to-int v7, v8

    .line 943
    .local v7, "endAlpha":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 944
    .local v4, "background":Landroid/graphics/drawable/Drawable;
    if-nez p2, :cond_2

    .line 945
    if-eqz v4, :cond_0

    .line 946
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 947
    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(I)V

    .line 948
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setArrowImageAlpha(I)V

    .line 980
    :goto_1
    return-void

    .line 940
    .end local v3    # "appear":Z
    .end local v4    # "background":Landroid/graphics/drawable/Drawable;
    .end local v7    # "endAlpha":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 950
    .restart local v3    # "appear":Z
    .restart local v4    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "endAlpha":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getImageAlpha()I

    move-result v5

    .line 951
    .local v5, "currentAlpha":I
    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v5, v8, v9

    const/4 v9, 0x1

    aput v7, v8, v9

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 952
    .local v2, "animator":Landroid/animation/ValueAnimator;
    iput-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 953
    new-instance v8, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$23;

    invoke-direct {v8, p0, v4}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$23;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 963
    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 964
    if-nez p7, :cond_3

    .line 965
    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineIn33:Landroid/view/animation/Interpolator;

    move-object/from16 p7, v0

    .line 967
    :cond_3
    :goto_2
    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 968
    const-wide/16 v8, -0x1

    cmp-long v8, p3, v8

    if-nez v8, :cond_4

    .line 969
    sub-int v8, v5, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v6, v8, v9

    .line 970
    .local v6, "durationFactor":F
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 971
    const/high16 v8, 0x43480000    # 200.0f

    mul-float/2addr v8, v6

    float-to-long p3, v8

    .line 973
    .end local v6    # "durationFactor":F
    :cond_4
    invoke-virtual {v2, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 974
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 975
    if-eqz p8, :cond_5

    .line 976
    move-object/from16 v0, p8

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getEndListener(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 978
    :cond_5
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 965
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mSineOut33:Landroid/view/animation/Interpolator;

    move-object/from16 p7, v0

    goto :goto_2
.end method

.method public setImageAlpha(FZJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 11
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 926
    const-wide/16 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 927
    return-void
.end method

.method public setImageScale(FZ)V
    .locals 7
    .param p1, "imageScale"    # F
    .param p2, "animate"    # Z

    .prologue
    .line 869
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V

    .line 870
    return-void
.end method

.method public setImageScale(FZJLandroid/view/animation/Interpolator;)V
    .locals 5
    .param p1, "imageScale"    # F
    .param p2, "animate"    # Z
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 884
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-string v3, "mScaleAnimator"

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 885
    if-nez p2, :cond_0

    .line 886
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    .line 887
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    .line 912
    :goto_0
    return-void

    .line 889
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 890
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 891
    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$22;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$22;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 898
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mScaleEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 899
    if-nez p5, :cond_1

    .line 902
    :cond_1
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 903
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-nez v2, :cond_2

    .line 904
    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mImageScale:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3e4ccccc    # 0.19999999f

    div-float v1, v2, v3

    .line 906
    .local v1, "durationFactor":F
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 907
    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v2, v1

    float-to-long p3, v2

    .line 909
    .end local v1    # "durationFactor":F
    :cond_2
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 910
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public setIsShortcutForCamera(Z)V
    .locals 0
    .param p1, "isShortcutForCamera"    # Z

    .prologue
    .line 1502
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShortcutForCamera:Z

    .line 1503
    return-void
.end method

.method public setPreviewView(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 694
    const-string v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewView: mRight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    .line 698
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewColor:I

    .line 699
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintColor:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 700
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(Landroid/view/View;)V

    .line 702
    return-void
.end method

.method public setPreviewView(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 664
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 689
    :goto_0
    return-void

    .line 669
    :cond_0
    const-string v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewView: mRight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",preview="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIsPainterReady:Z

    .line 673
    if-eqz p1, :cond_1

    .line 674
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mShaderPreview:Z

    .line 675
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    .line 676
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 677
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->checkIfShaderReady()V

    goto :goto_0

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 681
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPaintPreview:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 684
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 685
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 686
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mPreviewView:Landroid/view/View;

    goto :goto_0
.end method

.method public setRestingAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 1001
    return-void
.end method

.method public setRight(Z)V
    .locals 0
    .param p1, "right"    # Z

    .prologue
    .line 705
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mRight:Z

    .line 706
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 1489
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1490
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isLatestUSAShortCutVI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1494
    if-eqz p1, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1496
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 1499
    :cond_0
    return-void
.end method

.method public startHintAnimationPhase1(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "onFinishedListener"    # Ljava/lang/Runnable;

    .prologue
    .line 1005
    const-string v0, "KeyguardCircleAffordanceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startHintAnimationPhase1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCiradius="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    .line 1009
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$25;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$25;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1034
    :cond_0
    return-void
.end method

.method public startHintAnimationPhase2(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "onFinishedListener"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    .line 1038
    const-string v0, "KeyguardCircleAffordanceView"

    const-string v1, "startHintAnimationPhase2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleMaxRadius:F

    iput v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleRadius:F

    .line 1042
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCArrowAnimator(Z)V

    .line 1043
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAnimator(Z)V

    .line 1044
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAlphaAnimator(Z)V

    .line 1045
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$26;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$26;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1058
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1059
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1060
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1061
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1062
    return-void
.end method

.method public stopHintAnimationAndHideShortcut(Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)V
    .locals 3
    .param p1, "helper"    # Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1078
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mStoppingAndHiding:Z

    if-eqz v0, :cond_1

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mHintAnimation:Z

    if-nez v0, :cond_2

    .line 1084
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mIconAlphaAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "mIconAlphaAnimator"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAnimator(Landroid/animation/Animator;Ljava/lang/String;)V

    .line 1085
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setAlpha(F)V

    .line 1089
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isLatestUSAShortCutVI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1090
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageAlpha(FZ)V

    goto :goto_0

    .line 1095
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mStoppingAndHiding:Z

    .line 1096
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->cancelAllAnimators()V

    .line 1098
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setCArrowScaleAnimator(ZZ)V

    .line 1099
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setDCircleAnimator(ZZ)V

    .line 1101
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$27;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$27;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1110
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mCArrowScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1111
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method
