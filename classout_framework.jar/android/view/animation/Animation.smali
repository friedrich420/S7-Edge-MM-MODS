.class public abstract Landroid/view/animation/Animation;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/Animation$AnimationListener;,
        Landroid/view/animation/Animation$Description;
    }
.end annotation


# static fields
.field public static final ABSOLUTE:I = 0x0

.field public static final INFINITE:I = -0x1

.field public static final RELATIVE_TO_PARENT:I = 0x2

.field public static final RELATIVE_TO_SELF:I = 0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field public static final START_ON_FIRST_FRAME:I = -0x1

.field private static final USE_CLOSEGUARD:Z

.field public static final ZORDER_BOTTOM:I = -0x1

.field public static final ZORDER_NORMAL:I = 0x0

.field public static final ZORDER_TOP:I = 0x1


# instance fields
.field private final guard:Ldalvik/system/CloseGuard;

.field private mBackgroundColor:I

.field mCycleFlip:Z

.field private mDetachWallpaper:Z

.field mDuration:J

.field mEnded:Z

.field mFillAfter:Z

.field mFillBefore:Z

.field mFillEnabled:Z

.field mInitialized:Z

.field mInterpolator:Landroid/view/animation/Interpolator;

.field mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mListenerHandler:Landroid/os/Handler;

.field private mMore:Z

.field private mOnEnd:Ljava/lang/Runnable;

.field private mOnRepeat:Ljava/lang/Runnable;

.field private mOnStart:Ljava/lang/Runnable;

.field private mOneMoreTime:Z

.field mPreviousRegion:Landroid/graphics/RectF;

.field mPreviousTransformation:Landroid/view/animation/Transformation;

.field mRegion:Landroid/graphics/RectF;

.field mRepeatCount:I

.field mRepeatMode:I

.field mRepeated:I

.field private mScaleFactor:F

.field mStartOffset:J

.field mStartTime:J

.field mStarted:Z

.field mTransformation:Landroid/view/animation/Transformation;

.field private mZAdjustment:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 95
    const-string v0, "log.closeguard.Animation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, USE_CLOSEGUARD:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-boolean v2, p0, mEnded:Z

    .line 106
    iput-boolean v2, p0, mStarted:Z

    .line 112
    iput-boolean v2, p0, mCycleFlip:Z

    .line 118
    iput-boolean v2, p0, mInitialized:Z

    .line 125
    iput-boolean v3, p0, mFillBefore:Z

    .line 131
    iput-boolean v2, p0, mFillAfter:Z

    .line 136
    iput-boolean v2, p0, mFillEnabled:Z

    .line 141
    const-wide/16 v0, -0x1

    iput-wide v0, p0, mStartTime:J

    .line 158
    iput v2, p0, mRepeatCount:I

    .line 163
    iput v2, p0, mRepeated:I

    .line 170
    iput v3, p0, mRepeatMode:I

    .line 196
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, mScaleFactor:F

    .line 201
    iput-boolean v2, p0, mDetachWallpaper:Z

    .line 203
    iput-boolean v3, p0, mMore:Z

    .line 204
    iput-boolean v3, p0, mOneMoreTime:Z

    .line 206
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, mPreviousRegion:Landroid/graphics/RectF;

    .line 207
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, mRegion:Landroid/graphics/RectF;

    .line 208
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, mTransformation:Landroid/view/animation/Transformation;

    .line 209
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 211
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, guard:Ldalvik/system/CloseGuard;

    .line 223
    invoke-virtual {p0}, ensureInterpolator()V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-boolean v4, p0, mEnded:Z

    .line 106
    iput-boolean v4, p0, mStarted:Z

    .line 112
    iput-boolean v4, p0, mCycleFlip:Z

    .line 118
    iput-boolean v4, p0, mInitialized:Z

    .line 125
    iput-boolean v5, p0, mFillBefore:Z

    .line 131
    iput-boolean v4, p0, mFillAfter:Z

    .line 136
    iput-boolean v4, p0, mFillEnabled:Z

    .line 141
    const-wide/16 v2, -0x1

    iput-wide v2, p0, mStartTime:J

    .line 158
    iput v4, p0, mRepeatCount:I

    .line 163
    iput v4, p0, mRepeated:I

    .line 170
    iput v5, p0, mRepeatMode:I

    .line 196
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, mScaleFactor:F

    .line 201
    iput-boolean v4, p0, mDetachWallpaper:Z

    .line 203
    iput-boolean v5, p0, mMore:Z

    .line 204
    iput-boolean v5, p0, mOneMoreTime:Z

    .line 206
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, mPreviousRegion:Landroid/graphics/RectF;

    .line 207
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, mRegion:Landroid/graphics/RectF;

    .line 208
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, mTransformation:Landroid/view/animation/Transformation;

    .line 209
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 211
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v2

    iput-object v2, p0, guard:Ldalvik/system/CloseGuard;

    .line 234
    sget-object v2, Lcom/android/internal/R$styleable;->Animation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 236
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, setDuration(J)V

    .line 237
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, setStartOffset(J)V

    .line 239
    const/16 v2, 0x9

    iget-boolean v3, p0, mFillEnabled:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, setFillEnabled(Z)V

    .line 240
    const/4 v2, 0x3

    iget-boolean v3, p0, mFillBefore:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, setFillBefore(Z)V

    .line 241
    const/4 v2, 0x4

    iget-boolean v3, p0, mFillAfter:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, setFillAfter(Z)V

    .line 243
    const/4 v2, 0x6

    iget v3, p0, mRepeatCount:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, setRepeatCount(I)V

    .line 244
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, setRepeatMode(I)V

    .line 246
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, setZAdjustment(I)V

    .line 248
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, setBackgroundColor(I)V

    .line 250
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, setDetachWallpaper(Z)V

    .line 252
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 254
    .local v1, "resID":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 256
    if-lez v1, :cond_b7

    .line 257
    invoke-virtual {p0, p1, v1}, setInterpolator(Landroid/content/Context;I)V

    .line 260
    :cond_b7
    invoke-virtual {p0}, ensureInterpolator()V

    .line 261
    return-void
.end method

.method private fireAnimationEnd()V
    .registers 3

    .prologue
    .line 922
    iget-object v0, p0, mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_d

    .line 923
    iget-object v0, p0, mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_e

    iget-object v0, p0, mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 926
    :cond_d
    :goto_d
    return-void

    .line 924
    :cond_e
    iget-object v0, p0, mListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, mOnEnd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_d
.end method

.method private fireAnimationRepeat()V
    .registers 3

    .prologue
    .line 915
    iget-object v0, p0, mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_d

    .line 916
    iget-object v0, p0, mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_e

    iget-object v0, p0, mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 919
    :cond_d
    :goto_d
    return-void

    .line 917
    :cond_e
    iget-object v0, p0, mListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, mOnRepeat:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_d
.end method

.method private fireAnimationStart()V
    .registers 3

    .prologue
    .line 908
    iget-object v0, p0, mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_d

    .line 909
    iget-object v0, p0, mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_e

    iget-object v0, p0, mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 912
    :cond_d
    :goto_d
    return-void

    .line 910
    :cond_e
    iget-object v0, p0, mListenerHandler:Landroid/os/Handler;

    iget-object v1, p0, mOnStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_d
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 976
    return-void
.end method

.method public cancel()V
    .registers 3

    .prologue
    .line 301
    iget-boolean v0, p0, mStarted:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, mEnded:Z

    if-nez v0, :cond_13

    .line 302
    invoke-direct {p0}, fireAnimationEnd()V

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, mEnded:Z

    .line 304
    iget-object v0, p0, guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 307
    :cond_13
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, mStartTime:J

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, mOneMoreTime:Z

    iput-boolean v0, p0, mMore:Z

    .line 309
    return-void
.end method

.method protected clone()Landroid/view/animation/Animation;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 266
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, mPreviousRegion:Landroid/graphics/RectF;

    .line 267
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, mRegion:Landroid/graphics/RectF;

    .line 268
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, mTransformation:Landroid/view/animation/Transformation;

    .line 269
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 270
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, clone()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public computeDurationHint()J
    .registers 5

    .prologue
    .line 823
    invoke-virtual {p0}, getStartOffset()J

    move-result-wide v0

    invoke-virtual {p0}, getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, getRepeatCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public detach()V
    .registers 2

    .prologue
    .line 315
    iget-boolean v0, p0, mStarted:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, mEnded:Z

    if-nez v0, :cond_13

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, mEnded:Z

    .line 317
    iget-object v0, p0, guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 318
    invoke-direct {p0}, fireAnimationEnd()V

    .line 320
    :cond_13
    return-void
.end method

.method protected ensureInterpolator()V
    .registers 2

    .prologue
    .line 811
    iget-object v0, p0, mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_b

    .line 812
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, mInterpolator:Landroid/view/animation/Interpolator;

    .line 814
    :cond_b
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1056
    :try_start_0
    iget-object v0, p0, guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 1057
    iget-object v0, p0, guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 1060
    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1062
    return-void

    .line 1060
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBackgroundColor()I
    .registers 2

    .prologue
    .line 760
    iget v0, p0, mBackgroundColor:I

    return v0
.end method

.method public getDetachWallpaper()Z
    .registers 2

    .prologue
    .line 768
    iget-boolean v0, p0, mDetachWallpaper:Z

    return v0
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 685
    iget-wide v0, p0, mDuration:J

    return-wide v0
.end method

.method public getFillAfter()Z
    .registers 2

    .prologue
    .line 740
    iget-boolean v0, p0, mFillAfter:Z

    return v0
.end method

.method public getFillBefore()Z
    .registers 2

    .prologue
    .line 729
    iget-boolean v0, p0, mFillBefore:Z

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .prologue
    .line 664
    iget-object v0, p0, mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V
    .registers 16
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "invalidate"    # Landroid/graphics/RectF;
    .param p6, "transformation"    # Landroid/view/animation/Transformation;

    .prologue
    const/high16 v8, -0x40800000    # -1.0f

    .line 1015
    iget-object v2, p0, mRegion:Landroid/graphics/RectF;

    .line 1016
    .local v2, "tempRegion":Landroid/graphics/RectF;
    iget-object v0, p0, mPreviousRegion:Landroid/graphics/RectF;

    .line 1018
    .local v0, "previousRegion":Landroid/graphics/RectF;
    int-to-float v4, p1

    int-to-float v5, p2

    int-to-float v6, p3

    int-to-float v7, p4

    invoke-virtual {p5, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1019
    invoke-virtual {p6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1021
    invoke-virtual {p5, v8, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 1022
    invoke-virtual {v2, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1023
    invoke-virtual {p5, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 1025
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1027
    iget-object v3, p0, mTransformation:Landroid/view/animation/Transformation;

    .line 1028
    .local v3, "tempTransformation":Landroid/view/animation/Transformation;
    iget-object v1, p0, mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 1030
    .local v1, "previousTransformation":Landroid/view/animation/Transformation;
    invoke-virtual {v3, p6}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1031
    invoke-virtual {p6, v1}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1032
    invoke-virtual {v1, v3}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1033
    return-void
.end method

.method public getRepeatCount()I
    .registers 2

    .prologue
    .line 716
    iget v0, p0, mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    .prologue
    .line 705
    iget v0, p0, mRepeatMode:I

    return v0
.end method

.method protected getScaleFactor()F
    .registers 2

    .prologue
    .line 641
    iget v0, p0, mScaleFactor:F

    return v0
.end method

.method public getStartOffset()J
    .registers 3

    .prologue
    .line 695
    iget-wide v0, p0, mStartOffset:J

    return-wide v0
.end method

.method public getStartTime()J
    .registers 3

    .prologue
    .line 675
    iget-wide v0, p0, mStartTime:J

    return-wide v0
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .registers 19
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;

    .prologue
    .line 837
    iget-wide v10, p0, mStartTime:J

    const-wide/16 v12, -0x1

    cmp-long v7, v10, v12

    if-nez v7, :cond_c

    .line 838
    move-wide/from16 v0, p1

    iput-wide v0, p0, mStartTime:J

    .line 841
    :cond_c
    invoke-virtual {p0}, getStartOffset()J

    move-result-wide v8

    .line 842
    .local v8, "startOffset":J
    iget-wide v2, p0, mDuration:J

    .line 844
    .local v2, "duration":J
    const-wide/16 v10, 0x0

    cmp-long v7, v2, v10

    if-eqz v7, :cond_aa

    .line 845
    iget-wide v10, p0, mStartTime:J

    add-long/2addr v10, v8

    sub-long v10, p1, v10

    long-to-float v7, v10

    long-to-float v10, v2

    div-float v6, v7, v10

    .line 852
    .local v6, "normalizedTime":F
    :goto_21
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_b6

    const/4 v4, 0x1

    .line 853
    .local v4, "expired":Z
    :goto_28
    if-nez v4, :cond_b9

    const/4 v7, 0x1

    :goto_2b
    iput-boolean v7, p0, mMore:Z

    .line 855
    iget-boolean v7, p0, mFillEnabled:Z

    if-nez v7, :cond_3c

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v10, 0x0

    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 857
    :cond_3c
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-gez v7, :cond_45

    iget-boolean v7, p0, mFillBefore:Z

    if-eqz v7, :cond_86

    :cond_45
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v6, v7

    if-lez v7, :cond_4f

    iget-boolean v7, p0, mFillAfter:Z

    if-eqz v7, :cond_86

    .line 858
    :cond_4f
    iget-boolean v7, p0, mStarted:Z

    if-nez v7, :cond_64

    .line 859
    invoke-direct {p0}, fireAnimationStart()V

    .line 860
    const/4 v7, 0x1

    iput-boolean v7, p0, mStarted:Z

    .line 861
    sget-boolean v7, USE_CLOSEGUARD:Z

    if-eqz v7, :cond_64

    .line 862
    iget-object v7, p0, guard:Ldalvik/system/CloseGuard;

    const-string v10, "cancel or detach or getTransformation"

    invoke-virtual {v7, v10}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 866
    :cond_64
    iget-boolean v7, p0, mFillEnabled:Z

    if-eqz v7, :cond_73

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v10, 0x0

    invoke-static {v7, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 868
    :cond_73
    iget-boolean v7, p0, mCycleFlip:Z

    if-eqz v7, :cond_7b

    .line 869
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    .line 872
    :cond_7b
    iget-object v7, p0, mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    .line 873
    .local v5, "interpolatedTime":F
    move-object/from16 v0, p3

    invoke-virtual {p0, v5, v0}, applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 876
    .end local v5    # "interpolatedTime":F
    :cond_86
    if-eqz v4, :cond_9d

    .line 877
    iget v7, p0, mRepeatCount:I

    iget v10, p0, mRepeated:I

    if-ne v7, v10, :cond_bc

    .line 878
    iget-boolean v7, p0, mEnded:Z

    if-nez v7, :cond_9d

    .line 879
    const/4 v7, 0x1

    iput-boolean v7, p0, mEnded:Z

    .line 880
    iget-object v7, p0, guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v7}, Ldalvik/system/CloseGuard;->close()V

    .line 881
    invoke-direct {p0}, fireAnimationEnd()V

    .line 899
    :cond_9d
    :goto_9d
    iget-boolean v7, p0, mMore:Z

    if-nez v7, :cond_df

    iget-boolean v7, p0, mOneMoreTime:Z

    if-eqz v7, :cond_df

    .line 900
    const/4 v7, 0x0

    iput-boolean v7, p0, mOneMoreTime:Z

    .line 901
    const/4 v7, 0x1

    .line 904
    :goto_a9
    return v7

    .line 849
    .end local v4    # "expired":Z
    .end local v6    # "normalizedTime":F
    :cond_aa
    iget-wide v10, p0, mStartTime:J

    cmp-long v7, p1, v10

    if-gez v7, :cond_b3

    const/4 v6, 0x0

    .restart local v6    # "normalizedTime":F
    :goto_b1
    goto/16 :goto_21

    .end local v6    # "normalizedTime":F
    :cond_b3
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_b1

    .line 852
    .restart local v6    # "normalizedTime":F
    :cond_b6
    const/4 v4, 0x0

    goto/16 :goto_28

    .line 853
    .restart local v4    # "expired":Z
    :cond_b9
    const/4 v7, 0x0

    goto/16 :goto_2b

    .line 884
    :cond_bc
    iget v7, p0, mRepeatCount:I

    if-lez v7, :cond_c6

    .line 885
    iget v7, p0, mRepeated:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, mRepeated:I

    .line 888
    :cond_c6
    iget v7, p0, mRepeatMode:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_d2

    .line 889
    iget-boolean v7, p0, mCycleFlip:Z

    if-nez v7, :cond_dd

    const/4 v7, 0x1

    :goto_d0
    iput-boolean v7, p0, mCycleFlip:Z

    .line 892
    :cond_d2
    const-wide/16 v10, -0x1

    iput-wide v10, p0, mStartTime:J

    .line 893
    const/4 v7, 0x1

    iput-boolean v7, p0, mMore:Z

    .line 895
    invoke-direct {p0}, fireAnimationRepeat()V

    goto :goto_9d

    .line 889
    :cond_dd
    const/4 v7, 0x0

    goto :goto_d0

    .line 904
    :cond_df
    iget-boolean v7, p0, mMore:Z

    goto :goto_a9
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .registers 6
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;
    .param p4, "scale"    # F

    .prologue
    .line 942
    iput p4, p0, mScaleFactor:F

    .line 943
    invoke-virtual {p0, p1, p2, p3}, getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    return v0
.end method

.method public getZAdjustment()I
    .registers 2

    .prologue
    .line 752
    iget v0, p0, mZAdjustment:I

    return v0
.end method

.method public hasAlpha()Z
    .registers 2

    .prologue
    .line 1070
    const/4 v0, 0x0

    return v0
.end method

.method public hasEnded()Z
    .registers 2

    .prologue
    .line 961
    iget-boolean v0, p0, mEnded:Z

    return v0
.end method

.method public hasStarted()Z
    .registers 2

    .prologue
    .line 952
    iget-boolean v0, p0, mStarted:Z

    return v0
.end method

.method public initialize(IIII)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 348
    invoke-virtual {p0}, reset()V

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, mInitialized:Z

    .line 350
    return-void
.end method

.method public initializeInvalidateRegion(IIII)V
    .registers 12
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    .line 1044
    iget-object v1, p0, mPreviousRegion:Landroid/graphics/RectF;

    .line 1045
    .local v1, "region":Landroid/graphics/RectF;
    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1047
    invoke-virtual {v1, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 1048
    iget-boolean v2, p0, mFillBefore:Z

    if-eqz v2, :cond_1e

    .line 1049
    iget-object v0, p0, mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 1050
    .local v0, "previousTransformation":Landroid/view/animation/Transformation;
    iget-object v2, p0, mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {p0, v2, v0}, applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 1052
    .end local v0    # "previousTransformation":Landroid/view/animation/Transformation;
    :cond_1e
    return-void
.end method

.method public isFillEnabled()Z
    .registers 2

    .prologue
    .line 558
    iget-boolean v0, p0, mFillEnabled:Z

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 329
    iget-boolean v0, p0, mInitialized:Z

    return v0
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 279
    iget-object v0, p0, mPreviousRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 280
    iget-object v0, p0, mPreviousTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 281
    iput-boolean v1, p0, mInitialized:Z

    .line 282
    iput-boolean v1, p0, mCycleFlip:Z

    .line 283
    iput v1, p0, mRepeated:I

    .line 284
    iput-boolean v2, p0, mMore:Z

    .line 285
    iput-boolean v2, p0, mOneMoreTime:Z

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, mListenerHandler:Landroid/os/Handler;

    .line 287
    return-void
.end method

.method protected resolveSize(IFII)F
    .registers 6
    .param p1, "type"    # I
    .param p2, "value"    # F
    .param p3, "size"    # I
    .param p4, "parentSize"    # I

    .prologue
    .line 990
    packed-switch p1, :pswitch_data_a

    .line 998
    .end local p2    # "value":F
    :goto_3
    :pswitch_3
    return p2

    .line 994
    .restart local p2    # "value":F
    :pswitch_4
    int-to-float v0, p3

    mul-float/2addr p2, v0

    goto :goto_3

    .line 996
    :pswitch_7
    int-to-float v0, p4

    mul-float/2addr p2, v0

    goto :goto_3

    .line 990
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

.method public restrictDuration(J)V
    .registers 14
    .param p1, "durationMillis"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 447
    iget-wide v2, p0, mStartOffset:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_10

    .line 448
    iput-wide p1, p0, mStartOffset:J

    .line 449
    iput-wide v8, p0, mDuration:J

    .line 450
    iput v6, p0, mRepeatCount:I

    .line 477
    :cond_f
    :goto_f
    return-void

    .line 454
    :cond_10
    iget-wide v2, p0, mDuration:J

    iget-wide v4, p0, mStartOffset:J

    add-long v0, v2, v4

    .line 455
    .local v0, "dur":J
    cmp-long v2, v0, p1

    if-lez v2, :cond_21

    .line 456
    iget-wide v2, p0, mStartOffset:J

    sub-long v2, p1, v2

    iput-wide v2, p0, mDuration:J

    .line 457
    move-wide v0, p1

    .line 460
    :cond_21
    iget-wide v2, p0, mDuration:J

    cmp-long v2, v2, v8

    if-gtz v2, :cond_2c

    .line 461
    iput-wide v8, p0, mDuration:J

    .line 462
    iput v6, p0, mRepeatCount:I

    goto :goto_f

    .line 468
    :cond_2c
    iget v2, p0, mRepeatCount:I

    if-ltz v2, :cond_3f

    iget v2, p0, mRepeatCount:I

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-gtz v2, :cond_3f

    iget v2, p0, mRepeatCount:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    cmp-long v2, v2, p1

    if-lez v2, :cond_f

    .line 472
    :cond_3f
    div-long v2, p1, v0

    long-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, mRepeatCount:I

    .line 473
    iget v2, p0, mRepeatCount:I

    if-gez v2, :cond_f

    .line 474
    iput v6, p0, mRepeatCount:I

    goto :goto_f
.end method

.method public scaleCurrentDuration(F)V
    .registers 4
    .param p1, "scale"    # F

    .prologue
    .line 485
    iget-wide v0, p0, mDuration:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, mDuration:J

    .line 486
    iget-wide v0, p0, mStartOffset:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, mStartOffset:J

    .line 487
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 803
    iput-object p1, p0, mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 804
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 2
    .param p1, "bg"    # I

    .prologue
    .line 628
    iput p1, p0, mBackgroundColor:I

    .line 629
    return-void
.end method

.method public setDetachWallpaper(Z)V
    .registers 2
    .param p1, "detachWallpaper"    # Z

    .prologue
    .line 654
    iput-boolean p1, p0, mDetachWallpaper:Z

    .line 655
    return-void
.end method

.method public setDuration(J)V
    .registers 6
    .param p1, "durationMillis"    # J

    .prologue
    .line 430
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_e

    .line 431
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation duration cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_e
    iput-wide p1, p0, mDuration:J

    .line 434
    return-void
.end method

.method public setFillAfter(Z)V
    .registers 2
    .param p1, "fillAfter"    # Z

    .prologue
    .line 607
    iput-boolean p1, p0, mFillAfter:Z

    .line 608
    return-void
.end method

.method public setFillBefore(Z)V
    .registers 2
    .param p1, "fillBefore"    # Z

    .prologue
    .line 591
    iput-boolean p1, p0, mFillBefore:Z

    .line 592
    return-void
.end method

.method public setFillEnabled(Z)V
    .registers 2
    .param p1, "fillEnabled"    # Z

    .prologue
    .line 573
    iput-boolean p1, p0, mFillEnabled:Z

    .line 574
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .prologue
    .line 393
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 394
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2
    .param p1, "i"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 404
    iput-object p1, p0, mInterpolator:Landroid/view/animation/Interpolator;

    .line 405
    return-void
.end method

.method public setListenerHandler(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 358
    iget-object v0, p0, mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_19

    .line 359
    new-instance v0, Landroid/view/animation/Animation$1;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$1;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, mOnStart:Ljava/lang/Runnable;

    .line 366
    new-instance v0, Landroid/view/animation/Animation$2;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$2;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, mOnRepeat:Ljava/lang/Runnable;

    .line 373
    new-instance v0, Landroid/view/animation/Animation$3;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$3;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, mOnEnd:Ljava/lang/Runnable;

    .line 381
    :cond_19
    iput-object p1, p0, mListenerHandler:Landroid/os/Handler;

    .line 382
    return-void
.end method

.method public setRepeatCount(I)V
    .registers 2
    .param p1, "repeatCount"    # I

    .prologue
    .line 545
    if-gez p1, :cond_3

    .line 546
    const/4 p1, -0x1

    .line 548
    :cond_3
    iput p1, p0, mRepeatCount:I

    .line 549
    return-void
.end method

.method public setRepeatMode(I)V
    .registers 2
    .param p1, "repeatMode"    # I

    .prologue
    .line 532
    iput p1, p0, mRepeatMode:I

    .line 533
    return-void
.end method

.method public setStartOffset(J)V
    .registers 4
    .param p1, "startOffset"    # J

    .prologue
    .line 417
    iput-wide p1, p0, mStartOffset:J

    .line 418
    return-void
.end method

.method public setStartTime(J)V
    .registers 4
    .param p1, "startTimeMillis"    # J

    .prologue
    const/4 v0, 0x0

    .line 500
    iput-wide p1, p0, mStartTime:J

    .line 501
    iput-boolean v0, p0, mEnded:Z

    iput-boolean v0, p0, mStarted:Z

    .line 502
    iput-boolean v0, p0, mCycleFlip:Z

    .line 503
    iput v0, p0, mRepeated:I

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, mMore:Z

    .line 505
    return-void
.end method

.method public setZAdjustment(I)V
    .registers 2
    .param p1, "zAdjustment"    # I

    .prologue
    .line 618
    iput p1, p0, mZAdjustment:I

    .line 619
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 512
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, setStartTime(J)V

    .line 513
    return-void
.end method

.method public startNow()V
    .registers 3

    .prologue
    .line 520
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, setStartTime(J)V

    .line 521
    return-void
.end method

.method public willChangeBounds()Z
    .registers 2

    .prologue
    .line 792
    const/4 v0, 0x1

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .registers 2

    .prologue
    .line 780
    const/4 v0, 0x1

    return v0
.end method
