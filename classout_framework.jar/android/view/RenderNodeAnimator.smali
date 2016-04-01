.class public Landroid/view/RenderNodeAnimator;
.super Landroid/animation/Animator;
.source "RenderNodeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    }
.end annotation


# static fields
.field public static final ALPHA:I = 0xb

.field public static final LAST_VALUE:I = 0xb

.field public static final PAINT_ALPHA:I = 0x1

.field public static final PAINT_STROKE_WIDTH:I = 0x0

.field public static final ROTATION:I = 0x5

.field public static final ROTATION_X:I = 0x6

.field public static final ROTATION_Y:I = 0x7

.field public static final SCALE_X:I = 0x3

.field public static final SCALE_Y:I = 0x4

.field private static final STATE_DELAYED:I = 0x1

.field private static final STATE_FINISHED:I = 0x3

.field private static final STATE_PREPARE:I = 0x0

.field private static final STATE_RUNNING:I = 0x2

.field public static final TRANSLATION_X:I = 0x0

.field public static final TRANSLATION_Y:I = 0x1

.field public static final TRANSLATION_Z:I = 0x2

.field public static final X:I = 0x8

.field public static final Y:I = 0x9

.field public static final Z:I = 0xa

.field private static sAnimationHelper:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final sViewPropertyAnimatorMap:Landroid/util/SparseIntArray;


# instance fields
.field private mFinalValue:F

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

.field private mRenderProperty:I

.field private mStartDelay:J

.field private mStartTime:J

.field private mState:I

.field private mTarget:Landroid/view/RenderNode;

.field private final mUiThreadHandlesDelay:Z

.field private mUnscaledDuration:J

.field private mUnscaledStartDelay:J

.field private mViewTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 67
    new-instance v0, Landroid/view/RenderNodeAnimator$1;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/view/RenderNodeAnimator$1;-><init>(I)V

    sput-object v0, sViewPropertyAnimatorMap:Landroid/util/SparseIntArray;

    .line 427
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, sAnimationHelper:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(IF)V
    .registers 7
    .param p1, "property"    # I
    .param p2, "finalValue"    # F

    .prologue
    const-wide/16 v2, 0x0

    .line 111
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, mRenderProperty:I

    .line 94
    const/4 v0, 0x0

    iput v0, p0, mState:I

    .line 96
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, mUnscaledDuration:J

    .line 97
    iput-wide v2, p0, mUnscaledStartDelay:J

    .line 104
    iput-wide v2, p0, mStartDelay:J

    .line 112
    iput p1, p0, mRenderProperty:I

    .line 113
    iput p2, p0, mFinalValue:F

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, mUiThreadHandlesDelay:Z

    .line 115
    invoke-static {p1, p2}, nCreateAnimator(IF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, init(J)V

    .line 116
    return-void
.end method

.method public constructor <init>(IIFF)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F

    .prologue
    const-wide/16 v2, 0x0

    .line 138
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, mRenderProperty:I

    .line 94
    const/4 v0, 0x0

    iput v0, p0, mState:I

    .line 96
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, mUnscaledDuration:J

    .line 97
    iput-wide v2, p0, mUnscaledStartDelay:J

    .line 104
    iput-wide v2, p0, mStartDelay:J

    .line 139
    invoke-static {p1, p2, p3, p4}, nCreateRevealAnimator(IIFF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, init(J)V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, mUiThreadHandlesDelay:Z

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/graphics/CanvasProperty;F)V
    .registers 9
    .param p2, "finalValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .local p1, "property":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 118
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, mRenderProperty:I

    .line 94
    iput v2, p0, mState:I

    .line 96
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, mUnscaledDuration:J

    .line 97
    iput-wide v4, p0, mUnscaledStartDelay:J

    .line 104
    iput-wide v4, p0, mStartDelay:J

    .line 119
    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v0

    invoke-static {v0, v1, p2}, nCreateCanvasPropertyFloatAnimator(JF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, init(J)V

    .line 121
    iput-boolean v2, p0, mUiThreadHandlesDelay:Z

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/graphics/CanvasProperty;IF)V
    .registers 10
    .param p2, "paintField"    # I
    .param p3, "finalValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;IF)V"
        }
    .end annotation

    .prologue
    .local p1, "property":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 132
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, mRenderProperty:I

    .line 94
    iput v2, p0, mState:I

    .line 96
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, mUnscaledDuration:J

    .line 97
    iput-wide v4, p0, mUnscaledStartDelay:J

    .line 104
    iput-wide v4, p0, mStartDelay:J

    .line 133
    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, nCreateCanvasPropertyPaintAnimator(JIF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, init(J)V

    .line 135
    iput-boolean v2, p0, mUiThreadHandlesDelay:Z

    .line 136
    return-void
.end method

.method static synthetic access$000(Landroid/view/RenderNodeAnimator;J)Z
    .registers 4
    .param p0, "x0"    # Landroid/view/RenderNodeAnimator;
    .param p1, "x1"    # J

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, processDelayed(J)Z

    move-result v0

    return v0
.end method

.method private applyInterpolator()V
    .registers 7

    .prologue
    .line 162
    iget-object v4, p0, mInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v4, :cond_5

    .line 172
    :goto_4
    return-void

    .line 165
    :cond_5
    iget-object v4, p0, mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v4}, isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 166
    iget-object v4, p0, mInterpolator:Landroid/animation/TimeInterpolator;

    check-cast v4, Lcom/android/internal/view/animation/NativeInterpolatorFactory;

    invoke-interface {v4}, Lcom/android/internal/view/animation/NativeInterpolatorFactory;->createNativeInterpolator()J

    move-result-wide v2

    .line 171
    .local v2, "ni":J
    :goto_15
    iget-object v4, p0, mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v4}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, nSetInterpolator(JJ)V

    goto :goto_4

    .line 168
    .end local v2    # "ni":J
    :cond_1f
    iget-object v4, p0, mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v4}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v4

    invoke-static {v4, v5}, nGetDuration(J)J

    move-result-wide v0

    .line 169
    .local v0, "duration":J
    iget-object v4, p0, mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v4, v0, v1}, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J

    move-result-wide v2

    .restart local v2    # "ni":J
    goto :goto_15
.end method

.method private static callOnFinished(Landroid/view/RenderNodeAnimator;)V
    .registers 1
    .param p0, "animator"    # Landroid/view/RenderNodeAnimator;

    .prologue
    .line 483
    invoke-virtual {p0}, onFinished()V

    .line 484
    return-void
.end method

.method private checkMutable()V
    .registers 3

    .prologue
    .line 148
    iget v0, p0, mState:I

    if-eqz v0, :cond_c

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animator has already started, cannot change it now!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_c
    iget-object v0, p0, mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-nez v0, :cond_18

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animator\'s target has been destroyed (trying to modify an animation after activity destroy?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_18
    return-void
.end method

.method private cloneListeners()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p0}, getListeners()Ljava/util/ArrayList;

    move-result-object v0

    .line 395
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v0, :cond_c

    .line 396
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 398
    .restart local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_c
    return-object v0
.end method

.method private doStart()V
    .registers 4

    .prologue
    .line 202
    iget v0, p0, mRenderProperty:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_e

    .line 205
    iget-object v0, p0, mViewTarget:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v1, p0, mFinalValue:F

    iput v1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 208
    :cond_e
    invoke-direct {p0}, moveToRunningState()V

    .line 210
    iget-object v0, p0, mViewTarget:Landroid/view/View;

    if-eqz v0, :cond_1c

    .line 212
    iget-object v0, p0, mViewTarget:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 214
    :cond_1c
    return-void
.end method

.method private static getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    .registers 2

    .prologue
    .line 419
    sget-object v1, sAnimationHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    .line 420
    .local v0, "helper":Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    if-nez v0, :cond_14

    .line 421
    new-instance v0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    .end local v0    # "helper":Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    invoke-direct {v0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;-><init>()V

    .line 422
    .restart local v0    # "helper":Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    sget-object v1, sAnimationHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 424
    :cond_14
    return-object v0
.end method

.method private init(J)V
    .registers 4
    .param p1, "ptr"    # J

    .prologue
    .line 144
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 145
    return-void
.end method

.method static isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z
    .registers 3
    .param p0, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/internal/view/animation/HasNativeInterpolator;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static mapViewPropertyToRenderProperty(I)I
    .registers 2
    .param p0, "viewProperty"    # I

    .prologue
    .line 108
    sget-object v0, sViewPropertyAnimatorMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method private moveToRunningState()V
    .registers 3

    .prologue
    .line 217
    const/4 v0, 0x2

    iput v0, p0, mState:I

    .line 218
    iget-object v0, p0, mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_10

    .line 219
    iget-object v0, p0, mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, nStart(J)V

    .line 221
    :cond_10
    invoke-direct {p0}, notifyStartListeners()V

    .line 222
    return-void
.end method

.method private static native nCreateAnimator(IF)J
.end method

.method private static native nCreateCanvasPropertyFloatAnimator(JF)J
.end method

.method private static native nCreateCanvasPropertyPaintAnimator(JIF)J
.end method

.method private static native nCreateRevealAnimator(IIFF)J
.end method

.method private static native nEnd(J)V
.end method

.method private static native nGetDuration(J)J
.end method

.method private static native nSetAllowRunningAsync(JZ)V
.end method

.method private static native nSetDuration(JJ)V
.end method

.method private static native nSetInterpolator(JJ)V
.end method

.method private static native nSetListener(JLandroid/view/RenderNodeAnimator;)V
.end method

.method private static native nSetStartDelay(JJ)V
.end method

.method private static native nSetStartValue(JF)V
.end method

.method private static native nStart(J)V
.end method

.method private notifyStartListeners()V
    .registers 5

    .prologue
    .line 225
    invoke-direct {p0}, cloneListeners()Ljava/util/ArrayList;

    move-result-object v1

    .line 226
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-nez v1, :cond_16

    const/4 v2, 0x0

    .line 227
    .local v2, "numListeners":I
    :goto_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v2, :cond_1b

    .line 228
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 226
    .end local v0    # "i":I
    .end local v2    # "numListeners":I
    :cond_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_7

    .line 230
    .restart local v0    # "i":I
    .restart local v2    # "numListeners":I
    :cond_1b
    return-void
.end method

.method private processDelayed(J)Z
    .registers 8
    .param p1, "frameTimeMs"    # J

    .prologue
    .line 409
    iget-wide v0, p0, mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 410
    iput-wide p1, p0, mStartTime:J

    .line 415
    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0

    .line 411
    :cond_c
    iget-wide v0, p0, mStartTime:J

    sub-long v0, p1, v0

    iget-wide v2, p0, mStartDelay:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_a

    .line 412
    invoke-direct {p0}, doStart()V

    .line 413
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private releaseNativePtr()V
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_c

    .line 387
    iget-object v0, p0, mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 390
    :cond_c
    return-void
.end method

.method private setTarget(Landroid/view/RenderNode;)V
    .registers 4
    .param p1, "node"    # Landroid/view/RenderNode;

    .prologue
    .line 294
    invoke-direct {p0}, checkMutable()V

    .line 295
    iget-object v0, p0, mTarget:Landroid/view/RenderNode;

    if-eqz v0, :cond_f

    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target already set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_f
    iget-object v0, p0, mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, nSetListener(JLandroid/view/RenderNodeAnimator;)V

    .line 299
    iput-object p1, p0, mTarget:Landroid/view/RenderNode;

    .line 300
    iget-object v0, p0, mTarget:Landroid/view/RenderNode;

    invoke-virtual {v0, p0}, Landroid/view/RenderNode;->addAnimator(Landroid/view/RenderNodeAnimator;)V

    .line 301
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 6

    .prologue
    .line 234
    iget v3, p0, mState:I

    if-eqz v3, :cond_36

    iget v3, p0, mState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_36

    .line 235
    iget v3, p0, mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_18

    .line 236
    invoke-static {}, getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    .line 237
    invoke-direct {p0}, moveToRunningState()V

    .line 240
    :cond_18
    invoke-direct {p0}, cloneListeners()Ljava/util/ArrayList;

    move-result-object v1

    .line 241
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-nez v1, :cond_2e

    const/4 v2, 0x0

    .line 242
    .local v2, "numListeners":I
    :goto_1f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_20
    if-ge v0, v2, :cond_33

    .line 243
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 241
    .end local v0    # "i":I
    .end local v2    # "numListeners":I
    :cond_2e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_1f

    .line 246
    .restart local v0    # "i":I
    .restart local v2    # "numListeners":I
    :cond_33
    invoke-virtual {p0}, end()V

    .line 248
    .end local v0    # "i":I
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v2    # "numListeners":I
    :cond_36
    return-void
.end method

.method public clone()Landroid/animation/Animator;
    .registers 3

    .prologue
    .line 488
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot clone this animator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, clone()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .registers 4

    .prologue
    .line 252
    iget v0, p0, mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2c

    .line 253
    iget v0, p0, mState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_14

    .line 254
    invoke-static {}, getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    .line 255
    invoke-direct {p0}, doStart()V

    .line 257
    :cond_14
    iget-object v0, p0, mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_2d

    .line 258
    iget-object v0, p0, mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, nEnd(J)V

    .line 259
    iget-object v0, p0, mViewTarget:Landroid/view/View;

    if-eqz v0, :cond_2c

    .line 261
    iget-object v0, p0, mViewTarget:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 268
    :cond_2c
    :goto_2c
    return-void

    .line 265
    :cond_2d
    invoke-virtual {p0}, onFinished()V

    goto :goto_2c
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 336
    iget-wide v0, p0, mUnscaledDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .prologue
    .line 357
    iget-object v0, p0, mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getNativeAnimator()J
    .registers 3

    .prologue
    .line 402
    iget-object v0, p0, mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartDelay()J
    .registers 3

    .prologue
    .line 320
    iget-wide v0, p0, mUnscaledStartDelay:J

    return-wide v0
.end method

.method public isRunning()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 341
    iget v1, p0, mState:I

    if-eq v1, v0, :cond_a

    iget v1, p0, mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isStarted()Z
    .registers 2

    .prologue
    .line 346
    iget v0, p0, mState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected onFinished()V
    .registers 6

    .prologue
    .line 361
    iget v3, p0, mState:I

    if-nez v3, :cond_8

    .line 364
    invoke-direct {p0}, releaseNativePtr()V

    .line 383
    :goto_7
    return-void

    .line 367
    :cond_8
    iget v3, p0, mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    .line 368
    invoke-static {}, getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    .line 369
    invoke-direct {p0}, notifyStartListeners()V

    .line 371
    :cond_17
    const/4 v3, 0x3

    iput v3, p0, mState:I

    .line 373
    invoke-direct {p0}, cloneListeners()Ljava/util/ArrayList;

    move-result-object v1

    .line 374
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-nez v1, :cond_30

    const/4 v2, 0x0

    .line 375
    .local v2, "numListeners":I
    :goto_21
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    if-ge v0, v2, :cond_35

    .line 376
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 374
    .end local v0    # "i":I
    .end local v2    # "numListeners":I
    :cond_30
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_21

    .line 382
    .restart local v0    # "i":I
    .restart local v2    # "numListeners":I
    :cond_35
    invoke-direct {p0}, releaseNativePtr()V

    goto :goto_7
.end method

.method public pause()V
    .registers 2

    .prologue
    .line 272
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public resume()V
    .registers 2

    .prologue
    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAllowRunningAsynchronously(Z)V
    .registers 4
    .param p1, "mayRunAsync"    # Z

    .prologue
    .line 493
    invoke-direct {p0}, checkMutable()V

    .line 494
    iget-object v0, p0, mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, nSetAllowRunningAsync(JZ)V

    .line 495
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .registers 4
    .param p1, "x0"    # J

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, setDuration(J)Landroid/view/RenderNodeAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/view/RenderNodeAnimator;
    .registers 8
    .param p1, "duration"    # J

    .prologue
    .line 325
    invoke-direct {p0}, checkMutable()V

    .line 326
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_22

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration must be positive; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_22
    iput-wide p1, p0, mUnscaledDuration:J

    .line 330
    iget-object v0, p0, mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    long-to-float v2, p1

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, nSetDuration(JJ)V

    .line 331
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 351
    invoke-direct {p0}, checkMutable()V

    .line 352
    iput-object p1, p0, mInterpolator:Landroid/animation/TimeInterpolator;

    .line 353
    return-void
.end method

.method public setStartDelay(J)V
    .registers 6
    .param p1, "startDelay"    # J

    .prologue
    .line 310
    invoke-direct {p0}, checkMutable()V

    .line 311
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_23

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDelay must be positive; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_23
    iput-wide p1, p0, mUnscaledStartDelay:J

    .line 315
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    long-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, mStartDelay:J

    .line 316
    return-void
.end method

.method public setStartValue(F)V
    .registers 4
    .param p1, "startValue"    # F

    .prologue
    .line 304
    invoke-direct {p0}, checkMutable()V

    .line 305
    iget-object v0, p0, mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, nSetStartValue(JF)V

    .line 306
    return-void
.end method

.method public setTarget(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 286
    instance-of v1, p1, Landroid/view/DisplayListCanvas;

    if-nez v1, :cond_c

    .line 287
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not a GLES20RecordingCanvas"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    move-object v0, p1

    .line 289
    check-cast v0, Landroid/view/DisplayListCanvas;

    .line 290
    .local v0, "recordingCanvas":Landroid/view/DisplayListCanvas;
    iget-object v1, v0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    invoke-direct {p0, v1}, setTarget(Landroid/view/RenderNode;)V

    .line 291
    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 281
    iput-object p1, p0, mViewTarget:Landroid/view/View;

    .line 282
    iget-object v0, p0, mViewTarget:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-direct {p0, v0}, setTarget(Landroid/view/RenderNode;)V

    .line 283
    return-void
.end method

.method public start()V
    .registers 5

    .prologue
    .line 176
    iget-object v0, p0, mTarget:Landroid/view/RenderNode;

    if-nez v0, :cond_c

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing target!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_c
    iget v0, p0, mState:I

    if-eqz v0, :cond_18

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already started!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_18
    const/4 v0, 0x1

    iput v0, p0, mState:I

    .line 185
    invoke-direct {p0}, applyInterpolator()V

    .line 187
    iget-object v0, p0, mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-nez v0, :cond_26

    .line 189
    invoke-virtual {p0}, cancel()V

    .line 196
    :goto_25
    return-void

    .line 190
    :cond_26
    iget-wide v0, p0, mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_32

    iget-boolean v0, p0, mUiThreadHandlesDelay:Z

    if-nez v0, :cond_41

    .line 191
    :cond_32
    iget-object v0, p0, mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    iget-wide v2, p0, mStartDelay:J

    invoke-static {v0, v1, v2, v3}, nSetStartDelay(JJ)V

    .line 192
    invoke-direct {p0}, doStart()V

    goto :goto_25

    .line 194
    :cond_41
    invoke-static {}, getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->addDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    goto :goto_25
.end method
