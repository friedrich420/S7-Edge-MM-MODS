.class public Lcom/android/internal/widget/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;,
        Lcom/android/internal/widget/LockPatternView$SavedState;,
        Lcom/android/internal/widget/LockPatternView$OnPatternListener;,
        Lcom/android/internal/widget/LockPatternView$DisplayMode;,
        Lcom/android/internal/widget/LockPatternView$CellState;,
        Lcom/android/internal/widget/LockPatternView$Cell;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field public static final DEBUG_A11Y:Z = false

.field protected static final DRAG_THRESHHOLD:F = 0.0f

.field private static final MESSAGE_HANDLE_ACTION_UP:I = 0xa

.field protected static final MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final PROFILE_DRAWING:Z = false

.field private static final TAG:Ljava/lang/String; = "LockPatternView"

.field public static final VIRTUAL_BASE_VIEW_ID:I = 0x1


# instance fields
.field protected mAnimatingPeriodStart:J

.field private mAspect:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected final mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

.field protected final mCurrentPath:Landroid/graphics/Path;

.field private final mDotSize:I

.field private final mDotSizeActivated:I

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mErrorColor:I

.field private mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mHandler:Landroid/os/Handler;

.field private mHitFactor:F

.field protected mInProgressX:F

.field protected mInProgressY:F

.field protected mInStealthMode:Z

.field private mInputEnabled:Z

.field protected final mInvalidate:Landroid/graphics/Rect;

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPathPaint:Landroid/graphics/Paint;

.field private final mPathWidth:I

.field protected mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field protected mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field protected mPatternDrawLookup:[[Z

.field protected mPatternInProgress:Z

.field private mRegularColor:I

.field protected mSquareHeight:F

.field protected mSquareWidth:F

.field private mSuccessColor:I

.field protected final mTmpInvalidateRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 286
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v12, 0x2

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 289
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    iput-boolean v10, p0, mDrawingProfilingStarted:Z

    .line 84
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, mPaint:Landroid/graphics/Paint;

    .line 85
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, mPathPaint:Landroid/graphics/Paint;

    .line 88
    new-instance v5, Lcom/android/internal/widget/LockPatternView$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/android/internal/widget/LockPatternView$1;-><init>(Lcom/android/internal/widget/LockPatternView;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v5, p0, mHandler:Landroid/os/Handler;

    .line 116
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0x9

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, mPattern:Ljava/util/ArrayList;

    .line 124
    filled-new-array {v9, v9}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    iput-object v5, p0, mPatternDrawLookup:[[Z

    .line 131
    iput v11, p0, mInProgressX:F

    .line 132
    iput v11, p0, mInProgressY:F

    .line 136
    sget-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v5, p0, mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 137
    iput-boolean v8, p0, mInputEnabled:Z

    .line 138
    iput-boolean v10, p0, mInStealthMode:Z

    .line 139
    iput-boolean v8, p0, mEnableHapticFeedback:Z

    .line 140
    iput-boolean v10, p0, mPatternInProgress:Z

    .line 142
    const v5, 0x3f19999a    # 0.6f

    iput v5, p0, mHitFactor:F

    .line 147
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, mCurrentPath:Landroid/graphics/Path;

    .line 148
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, mInvalidate:Landroid/graphics/Rect;

    .line 149
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 291
    sget-object v5, Lcom/android/internal/R$styleable;->LockPatternView:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 293
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "aspect":Ljava/lang/String;
    const-string/jumbo v5, "square"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_154

    .line 296
    iput v10, p0, mAspect:I

    .line 305
    :goto_7b
    invoke-virtual {p0, v8}, setClickable(Z)V

    .line 308
    iget-object v5, p0, mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 309
    iget-object v5, p0, mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 311
    const v5, 0x106004a

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    iput v5, p0, mRegularColor:I

    .line 312
    const v5, 0x106004c

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    iput v5, p0, mErrorColor:I

    .line 313
    const v5, 0x106004b

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    iput v5, p0, mSuccessColor:I

    .line 314
    iget v5, p0, mRegularColor:I

    invoke-virtual {v0, v12, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, mRegularColor:I

    .line 315
    iget v5, p0, mErrorColor:I

    invoke-virtual {v0, v9, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, mErrorColor:I

    .line 316
    const/4 v5, 0x4

    iget v6, p0, mSuccessColor:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, mSuccessColor:I

    .line 318
    iget v5, p0, mRegularColor:I

    invoke-virtual {v0, v8, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 319
    .local v4, "pathColor":I
    iget-object v5, p0, mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 321
    iget-object v5, p0, mPathPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 322
    iget-object v5, p0, mPathPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 323
    iget-object v5, p0, mPathPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 325
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105008c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, mPathWidth:I

    .line 326
    iget-object v5, p0, mPathPaint:Landroid/graphics/Paint;

    iget v6, p0, mPathWidth:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 328
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105008d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, mDotSize:I

    .line 329
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105008e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, mDotSizeActivated:I

    .line 332
    iget-object v5, p0, mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 333
    iget-object v5, p0, mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 335
    filled-new-array {v9, v9}, [I

    move-result-object v5

    const-class v6, Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Lcom/android/internal/widget/LockPatternView$CellState;

    iput-object v5, p0, mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    .line 336
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_124
    if-ge v2, v9, :cond_173

    .line 337
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_127
    if-ge v3, v9, :cond_170

    .line 338
    iget-object v5, p0, mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v5, v5, v2

    new-instance v6, Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-direct {v6}, Lcom/android/internal/widget/LockPatternView$CellState;-><init>()V

    aput-object v6, v5, v3

    .line 339
    iget-object v5, p0, mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    iget v6, p0, mDotSize:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iput v6, v5, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 340
    iget-object v5, p0, mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    iput v2, v5, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    .line 341
    iget-object v5, p0, mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v5, v5, v2

    aget-object v5, v5, v3

    iput v3, v5, Lcom/android/internal/widget/LockPatternView$CellState;->col:I

    .line 337
    add-int/lit8 v3, v3, 0x1

    goto :goto_127

    .line 297
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "pathColor":I
    :cond_154
    const-string v5, "lock_width"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_160

    .line 298
    iput v8, p0, mAspect:I

    goto/16 :goto_7b

    .line 299
    :cond_160
    const-string v5, "lock_height"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16c

    .line 300
    iput v12, p0, mAspect:I

    goto/16 :goto_7b

    .line 302
    :cond_16c
    iput v10, p0, mAspect:I

    goto/16 :goto_7b

    .line 336
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "pathColor":I
    :cond_170
    add-int/lit8 v2, v2, 0x1

    goto :goto_124

    .line 345
    .end local v3    # "j":I
    :cond_173
    const v5, 0x10c000d

    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    iput-object v5, p0, mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 347
    const v5, 0x10c000e

    invoke-static {p1, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    iput-object v5, p0, mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 349
    new-instance v5, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-direct {v5, p0, p0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;-><init>(Lcom/android/internal/widget/LockPatternView;Landroid/view/View;)V

    iput-object v5, p0, mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    .line 350
    iget-object v5, p0, mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {p0, v5}, setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 351
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, mAudioManager:Landroid/media/AudioManager;

    .line 352
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/LockPatternView;Landroid/view/MotionEvent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 69
    invoke-direct {p0, p1}, handleActionUpEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/widget/LockPatternView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;

    .prologue
    .line 69
    iget v0, p0, mDotSize:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/LockPatternView;F)I
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;
    .param p1, "x1"    # F

    .prologue
    .line 69
    invoke-direct {p0, p1}, getRowHit(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/LockPatternView;F)I
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;
    .param p1, "x1"    # F

    .prologue
    .line 69
    invoke-direct {p0, p1}, getColumnHit(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/LockPatternView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;

    .prologue
    .line 69
    iget v0, p0, mDotSizeActivated:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/LockPatternView;)Landroid/view/animation/Interpolator;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;

    .prologue
    .line 69
    iget-object v0, p0, mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/LockPatternView;FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V
    .registers 9
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # J
    .param p5, "x4"    # Landroid/view/animation/Interpolator;
    .param p6, "x5"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p7, "x6"    # Ljava/lang/Runnable;

    .prologue
    .line 69
    invoke-direct/range {p0 .. p7}, startRadiusAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/widget/LockPatternView;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;

    .prologue
    .line 69
    iget v0, p0, mHitFactor:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/LockPatternView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;

    .prologue
    .line 69
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/LockPatternView;)Landroid/media/AudioManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/LockPatternView;

    .prologue
    .line 69
    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private cancelLineAnimations()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 1009
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v5, :cond_21

    .line 1010
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_6
    if-ge v1, v5, :cond_1e

    .line 1011
    iget-object v3, p0, mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v3, v3, v0

    aget-object v2, v3, v1

    .line 1012
    .local v2, "state":Lcom/android/internal/widget/LockPatternView$CellState;
    iget-object v3, v2, Lcom/android/internal/widget/LockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1b

    .line 1013
    iget-object v3, v2, Lcom/android/internal/widget/LockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1014
    iput v4, v2, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    .line 1015
    iput v4, v2, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    .line 1010
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1009
    .end local v2    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1019
    .end local v1    # "j":I
    :cond_21
    return-void
.end method

.method private checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 803
    invoke-direct {p0, p2}, getRowHit(F)I

    move-result v1

    .line 804
    .local v1, "rowHit":I
    if-gez v1, :cond_8

    .line 815
    :cond_7
    :goto_7
    return-object v2

    .line 807
    :cond_8
    invoke-direct {p0, p1}, getColumnHit(F)I

    move-result v0

    .line 808
    .local v0, "columnHit":I
    if-ltz v0, :cond_7

    .line 812
    iget-object v3, p0, mPatternDrawLookup:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v0

    if-nez v3, :cond_7

    .line 815
    invoke-static {v1, v0}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    goto :goto_7
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFFZF)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "radius"    # F
    .param p5, "partOfPattern"    # Z
    .param p6, "alpha"    # F

    .prologue
    .line 1212
    iget-object v0, p0, mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p5}, getCurrentColor(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1213
    iget-object v0, p0, mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p6

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1214
    iget-object v0, p0, mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1215
    return-void
.end method

.method private getColumnHit(F)I
    .registers 10
    .param p1, "x"    # F

    .prologue
    .line 845
    iget v4, p0, mSquareWidth:F

    .line 846
    .local v4, "squareWidth":F
    iget v5, p0, mHitFactor:F

    mul-float v1, v4, v5

    .line 848
    .local v1, "hitSize":F
    iget v5, p0, mPaddingLeft:I

    int-to-float v5, v5

    sub-float v6, v4, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 849
    .local v3, "offset":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    const/4 v5, 0x3

    if-ge v2, v5, :cond_26

    .line 851
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v0, v3, v5

    .line 852
    .local v0, "hitLeft":F
    cmpl-float v5, p1, v0

    if-ltz v5, :cond_23

    add-float v5, v0, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_23

    .line 856
    .end local v0    # "hitLeft":F
    .end local v2    # "i":I
    :goto_22
    return v2

    .line 849
    .restart local v0    # "hitLeft":F
    .restart local v2    # "i":I
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 856
    .end local v0    # "hitLeft":F
    :cond_26
    const/4 v2, -0x1

    goto :goto_22
.end method

.method private getCurrentColor(Z)I
    .registers 5
    .param p1, "partOfPattern"    # Z

    .prologue
    .line 1193
    if-eqz p1, :cond_a

    iget-boolean v0, p0, mInStealthMode:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, mPatternInProgress:Z

    if-eqz v0, :cond_d

    .line 1195
    :cond_a
    iget v0, p0, mRegularColor:I

    .line 1201
    :goto_c
    return v0

    .line 1196
    :cond_d
    iget-object v0, p0, mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_16

    .line 1198
    iget v0, p0, mErrorColor:I

    goto :goto_c

    .line 1199
    :cond_16
    iget-object v0, p0, mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v0, v1, :cond_22

    iget-object v0, p0, mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_25

    .line 1201
    :cond_22
    iget v0, p0, mSuccessColor:I

    goto :goto_c

    .line 1203
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown display mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getRowHit(F)I
    .registers 10
    .param p1, "y"    # F

    .prologue
    .line 825
    iget v4, p0, mSquareHeight:F

    .line 826
    .local v4, "squareHeight":F
    iget v5, p0, mHitFactor:F

    mul-float v0, v4, v5

    .line 828
    .local v0, "hitSize":F
    iget v5, p0, mPaddingTop:I

    int-to-float v5, v5

    sub-float v6, v4, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 829
    .local v3, "offset":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    const/4 v5, 0x3

    if-ge v2, v5, :cond_26

    .line 831
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v1, v3, v5

    .line 832
    .local v1, "hitTop":F
    cmpl-float v5, p1, v1

    if-ltz v5, :cond_23

    add-float v5, v1, v0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_23

    .line 836
    .end local v1    # "hitTop":F
    .end local v2    # "i":I
    :goto_22
    return v2

    .line 829
    .restart local v1    # "hitTop":F
    .restart local v2    # "i":I
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 836
    .end local v1    # "hitTop":F
    :cond_26
    const/4 v2, -0x1

    goto :goto_22
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 1021
    invoke-direct {p0}, resetPattern()V

    .line 1022
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 1023
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 1024
    .local v6, "y":F
    invoke-virtual {p0, v5, v6}, detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    .line 1025
    .local v1, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v1, :cond_48

    .line 1026
    const/4 v7, 0x1

    invoke-direct {p0, v7}, setPatternInProgress(Z)V

    .line 1027
    sget-object v7, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v7, p0, mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1028
    invoke-virtual {p0}, notifyPatternStarted()V

    .line 1033
    :cond_1e
    :goto_1e
    if-eqz v1, :cond_43

    .line 1034
    iget v7, v1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-virtual {p0, v7}, getCenterXForColumn(I)F

    move-result v2

    .line 1035
    .local v2, "startX":F
    iget v7, v1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-virtual {p0, v7}, getCenterYForRow(I)F

    move-result v3

    .line 1037
    .local v3, "startY":F
    iget v7, p0, mSquareWidth:F

    div-float v4, v7, v8

    .line 1038
    .local v4, "widthOffset":F
    iget v7, p0, mSquareHeight:F

    div-float v0, v7, v8

    .line 1040
    .local v0, "heightOffset":F
    sub-float v7, v2, v4

    float-to-int v7, v7

    sub-float v8, v3, v0

    float-to-int v8, v8

    add-float v9, v2, v4

    float-to-int v9, v9

    add-float v10, v3, v0

    float-to-int v10, v10

    invoke-virtual {p0, v7, v8, v9, v10}, invalidate(IIII)V

    .line 1043
    .end local v0    # "heightOffset":F
    .end local v2    # "startX":F
    .end local v3    # "startY":F
    .end local v4    # "widthOffset":F
    :cond_43
    iput v5, p0, mInProgressX:F

    .line 1044
    iput v6, p0, mInProgressY:F

    .line 1051
    return-void

    .line 1029
    :cond_48
    iget-boolean v7, p0, mPatternInProgress:Z

    if-eqz v7, :cond_1e

    .line 1030
    const/4 v7, 0x0

    invoke-direct {p0, v7}, setPatternInProgress(Z)V

    .line 1031
    invoke-direct {p0}, notifyPatternCleared()V

    goto :goto_1e
.end method

.method private handleActionUp()V
    .registers 2

    .prologue
    .line 994
    iget-object v0, p0, mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 995
    const/4 v0, 0x0

    invoke-direct {p0, v0}, setPatternInProgress(Z)V

    .line 996
    invoke-direct {p0}, cancelLineAnimations()V

    .line 997
    invoke-direct {p0}, notifyPatternDetected()V

    .line 998
    invoke-virtual {p0}, invalidate()V

    .line 1006
    :cond_15
    return-void
.end method

.method private handleActionUpEvent(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1240
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1241
    invoke-virtual {p0, p1}, onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1242
    return-void
.end method

.method private notifyCellAdded()V
    .registers 3

    .prologue
    .line 548
    iget-object v0, p0, mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_b

    .line 549
    iget-object v0, p0, mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 553
    :cond_b
    iget-object v0, p0, mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 554
    return-void
.end method

.method private notifyPatternCleared()V
    .registers 2

    .prologue
    .line 572
    const v0, 0x10402ab

    invoke-direct {p0, v0}, sendAccessEvent(I)V

    .line 573
    iget-object v0, p0, mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_f

    .line 574
    iget-object v0, p0, mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    .line 576
    :cond_f
    return-void
.end method

.method private notifyPatternDetected()V
    .registers 3

    .prologue
    .line 564
    const v0, 0x10402ae

    invoke-direct {p0, v0}, sendAccessEvent(I)V

    .line 565
    iget-object v0, p0, mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_19

    .line 566
    const-string v0, "LockPatternView"

    const-string/jumbo v1, "notifyPatternDetected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 569
    :cond_19
    return-void
.end method

.method private resetPattern()V
    .registers 2

    .prologue
    .line 598
    iget-object v0, p0, mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 599
    invoke-virtual {p0}, clearPatternDrawLookup()V

    .line 600
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 601
    invoke-virtual {p0}, invalidate()V

    .line 602
    return-void
.end method

.method private resolveMeasured(II)I
    .registers 6
    .param p1, "measureSpec"    # I
    .param p2, "desired"    # I

    .prologue
    .line 643
    const/4 v0, 0x0

    .line 644
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 645
    .local v1, "specSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_16

    .line 654
    move v0, v1

    .line 656
    :goto_d
    return v0

    .line 647
    :sswitch_e
    move v0, p2

    .line 648
    goto :goto_d

    .line 650
    :sswitch_10
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 651
    goto :goto_d

    .line 645
    nop

    :sswitch_data_16
    .sparse-switch
        -0x80000000 -> :sswitch_10
        0x0 -> :sswitch_e
    .end sparse-switch
.end method

.method private sendAccessEvent(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 989
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 990
    return-void
.end method

.method private setPatternInProgress(Z)V
    .registers 3
    .param p1, "progress"    # Z

    .prologue
    .line 920
    iput-boolean p1, p0, mPatternInProgress:Z

    .line 921
    iget-object v0, p0, mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 922
    return-void
.end method

.method private startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .registers 14
    .param p1, "cell"    # Lcom/android/internal/widget/LockPatternView$Cell;

    .prologue
    .line 739
    iget-object v0, p0, mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v0, v0, v1

    iget v1, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-object v7, v0, v1

    .line 740
    .local v7, "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    iget v0, p0, mDotSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget v0, p0, mDotSizeActivated:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    const-wide/16 v4, 0x60

    iget-object v6, p0, mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v8, Lcom/android/internal/widget/LockPatternView$5;

    invoke-direct {v8, p0, v7}, Lcom/android/internal/widget/LockPatternView$5;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, startRadiusAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    .line 749
    iget v8, p0, mInProgressX:F

    iget v9, p0, mInProgressY:F

    iget v0, p1, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-virtual {p0, v0}, getCenterXForColumn(I)F

    move-result v10

    iget v0, p1, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-virtual {p0, v0}, getCenterYForRow(I)F

    move-result v11

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, startLineEndAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V

    .line 751
    return-void
.end method

.method private startCellStateAnimationHw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .registers 26
    .param p1, "cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F
    .param p4, "startTranslationY"    # F
    .param p5, "endTranslationY"    # F
    .param p6, "startScale"    # F
    .param p7, "endScale"    # F
    .param p8, "delay"    # J
    .param p10, "duration"    # J
    .param p12, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p13, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 493
    iput p3, p1, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    .line 494
    move/from16 v0, p5

    iput v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    .line 495
    iget v2, p0, mDotSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float v2, v2, p7

    iput v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 496
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwAnimating:Z

    .line 497
    iget v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    invoke-virtual {p0, v2}, getCenterYForRow(I)F

    move-result v2

    add-float v2, v2, p4

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    .line 499
    iget v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->col:I

    invoke-virtual {p0, v2}, getCenterXForColumn(I)F

    move-result v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterX:Landroid/graphics/CanvasProperty;

    .line 500
    iget v2, p0, mDotSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float v2, v2, p6

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    .line 501
    iget-object v2, p0, mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, getCurrentColor(Z)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 502
    iget-object v2, p0, mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, p2

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 503
    new-instance v2, Landroid/graphics/Paint;

    iget-object v3, p0, mPaint:Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    .line 505
    iget-object v4, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    iget v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->row:I

    invoke-virtual {p0, v2}, getCenterYForRow(I)F

    move-result v2

    add-float v5, v2, p5

    move-object v3, p0

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    move-object/from16 v10, p12

    invoke-direct/range {v3 .. v10}, startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V

    .line 507
    iget-object v4, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    iget v2, p0, mDotSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float v5, v2, p7

    move-object v3, p0

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    move-object/from16 v10, p12

    invoke-direct/range {v3 .. v10}, startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V

    .line 509
    new-instance v11, Lcom/android/internal/widget/LockPatternView$4;

    move-object/from16 v0, p13

    invoke-direct {v11, p0, p1, v0}, Lcom/android/internal/widget/LockPatternView$4;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    move-object/from16 v10, p12

    invoke-direct/range {v3 .. v11}, startRtAlphaAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FJJLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 520
    invoke-virtual {p0}, invalidate()V

    .line 521
    return-void
.end method

.method private startCellStateAnimationSw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .registers 26
    .param p1, "cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F
    .param p4, "startTranslationY"    # F
    .param p5, "endTranslationY"    # F
    .param p6, "startScale"    # F
    .param p7, "endScale"    # F
    .param p8, "delay"    # J
    .param p10, "duration"    # J
    .param p12, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p13, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 460
    iput p2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    .line 461
    move/from16 v0, p4

    iput v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    .line 462
    iget v2, p0, mDotSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    mul-float v2, v2, p6

    iput v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    .line 463
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_4a

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    .line 464
    .local v11, "animator":Landroid/animation/ValueAnimator;
    move-wide/from16 v0, p10

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 465
    move-wide/from16 v0, p8

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 466
    move-object/from16 v0, p12

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 467
    new-instance v2, Lcom/android/internal/widget/LockPatternView$2;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/widget/LockPatternView$2;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFFFF)V

    invoke-virtual {v11, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 477
    new-instance v2, Lcom/android/internal/widget/LockPatternView$3;

    move-object/from16 v0, p13

    invoke-direct {v2, p0, v0}, Lcom/android/internal/widget/LockPatternView$3;-><init>(Lcom/android/internal/widget/LockPatternView;Ljava/lang/Runnable;)V

    invoke-virtual {v11, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 485
    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    .line 486
    return-void

    .line 463
    :array_4a
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startLineEndAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V
    .registers 14
    .param p1, "state"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "startX"    # F
    .param p3, "startY"    # F
    .param p4, "targetX"    # F
    .param p5, "targetY"    # F

    .prologue
    .line 755
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_30

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 756
    .local v7, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/internal/widget/LockPatternView$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p4

    move v5, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/LockPatternView$6;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 765
    new-instance v0, Lcom/android/internal/widget/LockPatternView$7;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/LockPatternView$7;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 771
    iget-object v0, p0, mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 772
    const-wide/16 v0, 0x64

    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 773
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 774
    iput-object v7, p1, Lcom/android/internal/widget/LockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    .line 775
    return-void

    .line 755
    :array_30
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startRadiusAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V
    .registers 11
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "state"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p7, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 779
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 780
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/internal/widget/LockPatternView$8;

    invoke-direct {v1, p0, p6}, Lcom/android/internal/widget/LockPatternView$8;-><init>(Lcom/android/internal/widget/LockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 787
    if-eqz p7, :cond_1f

    .line 788
    new-instance v1, Lcom/android/internal/widget/LockPatternView$9;

    invoke-direct {v1, p0, p7}, Lcom/android/internal/widget/LockPatternView$9;-><init>(Lcom/android/internal/widget/LockPatternView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 795
    :cond_1f
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 796
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 797
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 798
    return-void
.end method

.method private startRtAlphaAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FJJLandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V
    .registers 14
    .param p1, "cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "endAlpha"    # F
    .param p3, "delay"    # J
    .param p5, "duration"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p8, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 526
    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p1, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    const/4 v2, 0x1

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, p2

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 528
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p5, p6}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 529
    invoke-virtual {v0, p3, p4}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    .line 530
    invoke-virtual {v0, p7}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 531
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 532
    invoke-virtual {v0, p8}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 533
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 534
    return-void
.end method

.method private startRtFloatAnimation(Landroid/graphics/CanvasProperty;FJJLandroid/view/animation/Interpolator;)V
    .registers 9
    .param p2, "endValue"    # F
    .param p3, "delay"    # J
    .param p5, "duration"    # J
    .param p7, "interpolator"    # Landroid/view/animation/Interpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;FJJ",
            "Landroid/view/animation/Interpolator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 538
    .local p1, "property":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-direct {v0, p1, p2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 539
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, p5, p6}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 540
    invoke-virtual {v0, p3, p4}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    .line 541
    invoke-virtual {v0, p7}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 542
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 543
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 544
    return-void
.end method


# virtual methods
.method protected addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .registers 5
    .param p1, "newCell"    # Lcom/android/internal/widget/LockPatternView$Cell;

    .prologue
    .line 730
    iget-object v0, p0, mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 731
    iget-object v0, p0, mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    iget-boolean v0, p0, mInStealthMode:Z

    if-nez v0, :cond_1b

    .line 733
    invoke-direct {p0, p1}, startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 735
    :cond_1b
    invoke-direct {p0}, notifyCellAdded()V

    .line 736
    return-void
.end method

.method protected calculateLastSegmentAlpha(FFFF)F
    .registers 13
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "lastX"    # F
    .param p4, "lastY"    # F

    .prologue
    .line 1185
    sub-float v0, p1, p3

    .line 1186
    .local v0, "diffX":F
    sub-float v1, p2, p4

    .line 1187
    .local v1, "diffY":F
    mul-float v4, v0, v0

    mul-float v5, v1, v1

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 1188
    .local v2, "dist":F
    iget v4, p0, mSquareWidth:F

    div-float v3, v2, v4

    .line 1189
    .local v3, "frac":F
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const v6, 0x3e99999a    # 0.3f

    sub-float v6, v3, v6

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4
.end method

.method public clearPattern()V
    .registers 1

    .prologue
    .line 582
    invoke-direct {p0}, resetPattern()V

    .line 583
    return-void
.end method

.method protected clearPatternDrawLookup()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 608
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v4, :cond_14

    .line 609
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    if-ge v1, v4, :cond_11

    .line 610
    iget-object v2, p0, mPatternDrawLookup:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 609
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 608
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 613
    .end local v1    # "j":I
    :cond_14
    return-void
.end method

.method protected detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 16
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v12, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 689
    invoke-direct {p0, p1, p2}, checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    .line 690
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v0, :cond_77

    .line 693
    const/4 v4, 0x0

    .line 694
    .local v4, "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v7, p0, mPattern:Ljava/util/ArrayList;

    .line 695
    .local v7, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_58

    .line 696
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 697
    .local v6, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v8, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    iget v11, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    sub-int v2, v8, v11

    .line 698
    .local v2, "dRow":I
    iget v8, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    iget v11, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    sub-int v1, v8, v11

    .line 700
    .local v1, "dColumn":I
    iget v5, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 701
    .local v5, "fillInRow":I
    iget v3, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 703
    .local v3, "fillInColumn":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_41

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_41

    .line 704
    iget v11, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    if-lez v2, :cond_75

    move v8, v9

    :goto_3f
    add-int v5, v11, v8

    .line 707
    :cond_41
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_54

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_54

    .line 708
    iget v8, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    if-lez v1, :cond_52

    move v10, v9

    :cond_52
    add-int v3, v8, v10

    .line 711
    :cond_54
    invoke-static {v5, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    .line 714
    .end local v1    # "dColumn":I
    .end local v2    # "dRow":I
    .end local v3    # "fillInColumn":I
    .end local v5    # "fillInRow":I
    .end local v6    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_58
    if-eqz v4, :cond_69

    iget-object v8, p0, mPatternDrawLookup:[[Z

    iget v10, v4, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v8, v8, v10

    iget v10, v4, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v8, v8, v10

    if-nez v8, :cond_69

    .line 716
    invoke-virtual {p0, v4}, addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 718
    :cond_69
    invoke-virtual {p0, v0}, addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 719
    iget-boolean v8, p0, mEnableHapticFeedback:Z

    if-eqz v8, :cond_74

    .line 720
    const/4 v8, 0x3

    invoke-virtual {p0, v9, v8}, performHapticFeedback(II)Z

    .line 726
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v4    # "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v7    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_74
    :goto_74
    return-object v0

    .restart local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v1    # "dColumn":I
    .restart local v2    # "dRow":I
    .restart local v3    # "fillInColumn":I
    .restart local v4    # "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v5    # "fillInRow":I
    .restart local v6    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v7    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_75
    move v8, v10

    .line 704
    goto :goto_3f

    .line 726
    .end local v1    # "dColumn":I
    .end local v2    # "dRow":I
    .end local v3    # "fillInColumn":I
    .end local v4    # "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v5    # "fillInRow":I
    .end local v6    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v7    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_77
    const/4 v0, 0x0

    goto :goto_74
.end method

.method public disableInput()V
    .registers 2

    .prologue
    .line 620
    const/4 v0, 0x0

    iput-boolean v0, p0, mInputEnabled:Z

    .line 621
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 589
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 590
    .local v0, "handled":Z
    iget-object v1, p0, mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 591
    return v0
.end method

.method public enableInput()V
    .registers 2

    .prologue
    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, mInputEnabled:Z

    .line 628
    return-void
.end method

.method public getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    return-object v0
.end method

.method protected getCenterXForColumn(I)F
    .registers 5
    .param p1, "column"    # I

    .prologue
    .line 1054
    iget v0, p0, mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, mSquareWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method protected getCenterYForRow(I)F
    .registers 5
    .param p1, "row"    # I

    .prologue
    .line 1058
    iget v0, p0, mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, mSquareHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method protected handleActionMove(Landroid/view/MotionEvent;)V
    .registers 32
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 927
    move-object/from16 v0, p0

    iget v0, v0, mPathWidth:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v19, v0

    .line 928
    .local v19, "radius":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    .line 929
    .local v7, "historySize":I
    move-object/from16 v0, p0

    iget-object v0, v0, mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->setEmpty()V

    .line 930
    const/4 v12, 0x0

    .line 931
    .local v12, "invalidateNow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1a
    add-int/lit8 v25, v7, 0x1

    move/from16 v0, v25

    if-ge v11, v0, :cond_150

    .line 932
    if-ge v11, v7, :cond_144

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v23

    .line 933
    .local v23, "x":F
    :goto_28
    if-ge v11, v7, :cond_14a

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v24

    .line 934
    .local v24, "y":F
    :goto_30
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v8

    .line 935
    .local v8, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, mPattern:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 936
    .local v18, "patternSize":I
    if-eqz v8, :cond_5a

    const/16 v25, 0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_5a

    .line 937
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, setPatternInProgress(Z)V

    .line 938
    invoke-virtual/range {p0 .. p0}, notifyPatternStarted()V

    .line 941
    :cond_5a
    move-object/from16 v0, p0

    iget v0, v0, mInProgressX:F

    move/from16 v25, v0

    sub-float v25, v23, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 942
    .local v4, "dx":F
    move-object/from16 v0, p0

    iget v0, v0, mInProgressY:F

    move/from16 v25, v0

    sub-float v25, v24, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 943
    .local v5, "dy":F
    const/16 v25, 0x0

    cmpl-float v25, v4, v25

    if-gtz v25, :cond_7e

    const/16 v25, 0x0

    cmpl-float v25, v5, v25

    if-lez v25, :cond_7f

    .line 944
    :cond_7e
    const/4 v12, 0x1

    .line 947
    :cond_7f
    move-object/from16 v0, p0

    iget-boolean v0, v0, mPatternInProgress:Z

    move/from16 v25, v0

    if-eqz v25, :cond_140

    if-lez v18, :cond_140

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, mPattern:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 949
    .local v17, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    add-int/lit8 v25, v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 950
    .local v13, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v0, v13, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, getCenterXForColumn(I)F

    move-result v14

    .line 951
    .local v14, "lastCellCenterX":F
    iget v0, v13, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, getCenterYForRow(I)F

    move-result v15

    .line 954
    .local v15, "lastCellCenterY":F
    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    sub-float v16, v25, v19

    .line 955
    .local v16, "left":F
    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    add-float v20, v25, v19

    .line 956
    .local v20, "right":F
    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    sub-float v21, v25, v19

    .line 957
    .local v21, "top":F
    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    add-float v3, v25, v19

    .line 960
    .local v3, "bottom":F
    if-eqz v8, :cond_127

    .line 961
    move-object/from16 v0, p0

    iget v0, v0, mSquareWidth:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v22, v25, v26

    .line 962
    .local v22, "width":F
    move-object/from16 v0, p0

    iget v0, v0, mSquareHeight:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v6, v25, v26

    .line 963
    .local v6, "height":F
    iget v0, v8, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, getCenterXForColumn(I)F

    move-result v9

    .line 964
    .local v9, "hitCellCenterX":F
    iget v0, v8, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, getCenterYForRow(I)F

    move-result v10

    .line 966
    .local v10, "hitCellCenterY":F
    sub-float v25, v9, v22

    move/from16 v0, v25

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 967
    add-float v25, v9, v22

    move/from16 v0, v25

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    .line 968
    sub-float v25, v10, v6

    move/from16 v0, v25

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 969
    add-float v25, v10, v6

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 973
    .end local v6    # "height":F
    .end local v9    # "hitCellCenterX":F
    .end local v10    # "hitCellCenterY":F
    .end local v22    # "width":F
    :cond_127
    move-object/from16 v0, p0

    iget-object v0, v0, mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v26

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v27

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v28

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v29

    invoke-virtual/range {v25 .. v29}, Landroid/graphics/Rect;->union(IIII)V

    .line 931
    .end local v3    # "bottom":F
    .end local v13    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v14    # "lastCellCenterX":F
    .end local v15    # "lastCellCenterY":F
    .end local v16    # "left":F
    .end local v17    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v20    # "right":F
    .end local v21    # "top":F
    :cond_140
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1a

    .line 932
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v8    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v18    # "patternSize":I
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_144
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    goto/16 :goto_28

    .line 933
    .restart local v23    # "x":F
    :cond_14a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    goto/16 :goto_30

    .line 977
    .end local v23    # "x":F
    :cond_150
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, mInProgressX:F

    .line 978
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, mInProgressY:F

    .line 981
    if-eqz v12, :cond_191

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, invalidate(Landroid/graphics/Rect;)V

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 986
    :cond_191
    return-void
.end method

.method public isInStealthMode()Z
    .registers 2

    .prologue
    .line 362
    iget-boolean v0, p0, mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .registers 2

    .prologue
    .line 369
    iget-boolean v0, p0, mEnableHapticFeedback:Z

    return v0
.end method

.method protected notifyPatternStarted()V
    .registers 2

    .prologue
    .line 557
    const v0, 0x10402aa

    invoke-direct {p0, v0}, sendAccessEvent(I)V

    .line 558
    iget-object v0, p0, mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_f

    .line 559
    iget-object v0, p0, mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    .line 561
    :cond_f
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 39
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, mPattern:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    .line 1064
    .local v32, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 1065
    .local v16, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, mPatternDrawLookup:[[Z

    move-object/from16 v20, v0

    .line 1067
    .local v20, "drawLookup":[[Z
    move-object/from16 v0, p0

    iget-object v4, v0, mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v4, v5, :cond_bb

    .line 1072
    add-int/lit8 v4, v16, 0x1

    mul-int/lit16 v0, v4, 0x2bc

    move/from16 v31, v0

    .line 1073
    .local v31, "oneCycle":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, mAnimatingPeriodStart:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    rem-int v34, v4, v31

    .line 1075
    .local v34, "spotInCycle":I
    move/from16 v0, v34

    div-int/lit16 v0, v0, 0x2bc

    move/from16 v30, v0

    .line 1077
    .local v30, "numCircles":I
    invoke-virtual/range {p0 .. p0}, clearPatternDrawLookup()V

    .line 1078
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_35
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_55

    .line 1079
    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1080
    .local v12, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    aget-object v4, v20, v4

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 1078
    add-int/lit8 v24, v24, 0x1

    goto :goto_35

    .line 1085
    .end local v12    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_55
    if-lez v30, :cond_10c

    move/from16 v0, v30

    move/from16 v1, v16

    if-ge v0, v1, :cond_10c

    const/16 v28, 0x1

    .line 1088
    .local v28, "needToUpdateInProgressPoint":Z
    :goto_5f
    if-eqz v28, :cond_b8

    .line 1089
    move/from16 v0, v34

    rem-int/lit16 v4, v0, 0x2bc

    int-to-float v4, v4

    const/high16 v5, 0x442f0000    # 700.0f

    div-float v33, v4, v5

    .line 1093
    .local v33, "percentageOfNextCircle":F
    add-int/lit8 v4, v30, -0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1094
    .local v17, "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getCenterXForColumn(I)F

    move-result v14

    .line 1095
    .local v14, "centerX":F
    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getCenterYForRow(I)F

    move-result v15

    .line 1097
    .local v15, "centerY":F
    move-object/from16 v0, v32

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1098
    .local v29, "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getCenterXForColumn(I)F

    move-result v4

    sub-float/2addr v4, v14

    mul-float v22, v33, v4

    .line 1100
    .local v22, "dx":F
    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getCenterYForRow(I)F

    move-result v4

    sub-float/2addr v4, v15

    mul-float v23, v33, v4

    .line 1102
    .local v23, "dy":F
    add-float v4, v14, v22

    move-object/from16 v0, p0

    iput v4, v0, mInProgressX:F

    .line 1103
    add-float v4, v15, v23

    move-object/from16 v0, p0

    iput v4, v0, mInProgressY:F

    .line 1106
    .end local v14    # "centerX":F
    .end local v15    # "centerY":F
    .end local v17    # "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v22    # "dx":F
    .end local v23    # "dy":F
    .end local v29    # "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v33    # "percentageOfNextCircle":F
    :cond_b8
    invoke-virtual/range {p0 .. p0}, invalidate()V

    .line 1109
    .end local v24    # "i":I
    .end local v28    # "needToUpdateInProgressPoint":Z
    .end local v30    # "numCircles":I
    .end local v31    # "oneCycle":I
    .end local v34    # "spotInCycle":I
    :cond_bb
    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    .line 1110
    .local v18, "currentPath":Landroid/graphics/Path;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->rewind()V

    .line 1113
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_c6
    const/4 v4, 0x3

    move/from16 v0, v24

    if-ge v0, v4, :cond_129

    .line 1114
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, getCenterYForRow(I)F

    move-result v15

    .line 1115
    .restart local v15    # "centerY":F
    const/16 v25, 0x0

    .local v25, "j":I
    :goto_d5
    const/4 v4, 0x3

    move/from16 v0, v25

    if-ge v0, v4, :cond_126

    .line 1116
    move-object/from16 v0, p0

    iget-object v4, v0, mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v4, v4, v24

    aget-object v13, v4, v25

    .line 1117
    .local v13, "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, getCenterXForColumn(I)F

    move-result v14

    .line 1118
    .restart local v14    # "centerX":F
    iget v0, v13, Lcom/android/internal/widget/LockPatternView$CellState;->translationY:F

    move/from16 v36, v0

    .line 1119
    .local v36, "translationY":F
    invoke-virtual/range {p0 .. p0}, isHardwareAccelerated()Z

    move-result v4

    if-eqz v4, :cond_110

    iget-boolean v4, v13, Lcom/android/internal/widget/LockPatternView$CellState;->hwAnimating:Z

    if-eqz v4, :cond_110

    move-object/from16 v19, p1

    .line 1120
    check-cast v19, Landroid/view/DisplayListCanvas;

    .line 1121
    .local v19, "displayListCanvas":Landroid/view/DisplayListCanvas;
    iget-object v4, v13, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterX:Landroid/graphics/CanvasProperty;

    iget-object v5, v13, Lcom/android/internal/widget/LockPatternView$CellState;->hwCenterY:Landroid/graphics/CanvasProperty;

    iget-object v6, v13, Lcom/android/internal/widget/LockPatternView$CellState;->hwRadius:Landroid/graphics/CanvasProperty;

    iget-object v7, v13, Lcom/android/internal/widget/LockPatternView$CellState;->hwPaint:Landroid/graphics/CanvasProperty;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/DisplayListCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    .line 1115
    .end local v19    # "displayListCanvas":Landroid/view/DisplayListCanvas;
    :goto_109
    add-int/lit8 v25, v25, 0x1

    goto :goto_d5

    .line 1085
    .end local v13    # "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    .end local v14    # "centerX":F
    .end local v15    # "centerY":F
    .end local v18    # "currentPath":Landroid/graphics/Path;
    .end local v25    # "j":I
    .end local v36    # "translationY":F
    .restart local v30    # "numCircles":I
    .restart local v31    # "oneCycle":I
    .restart local v34    # "spotInCycle":I
    :cond_10c
    const/16 v28, 0x0

    goto/16 :goto_5f

    .line 1124
    .end local v30    # "numCircles":I
    .end local v31    # "oneCycle":I
    .end local v34    # "spotInCycle":I
    .restart local v13    # "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    .restart local v14    # "centerX":F
    .restart local v15    # "centerY":F
    .restart local v18    # "currentPath":Landroid/graphics/Path;
    .restart local v25    # "j":I
    .restart local v36    # "translationY":F
    :cond_110
    float-to-int v4, v14

    int-to-float v6, v4

    float-to-int v4, v15

    int-to-float v4, v4

    add-float v7, v4, v36

    iget v8, v13, Lcom/android/internal/widget/LockPatternView$CellState;->radius:F

    aget-object v4, v20, v24

    aget-boolean v9, v4, v25

    iget v10, v13, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, drawCircle(Landroid/graphics/Canvas;FFFZF)V

    goto :goto_109

    .line 1113
    .end local v13    # "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    .end local v14    # "centerX":F
    .end local v36    # "translationY":F
    :cond_126
    add-int/lit8 v24, v24, 0x1

    goto :goto_c6

    .line 1134
    .end local v15    # "centerY":F
    .end local v25    # "j":I
    :cond_129
    move-object/from16 v0, p0

    iget-boolean v4, v0, mInStealthMode:Z

    if-nez v4, :cond_1b4

    const/16 v21, 0x1

    .line 1136
    .local v21, "drawPath":Z
    :goto_131
    if-eqz v21, :cond_1b3

    .line 1137
    move-object/from16 v0, p0

    iget-object v4, v0, mPathPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, getCurrentColor(Z)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1139
    const/4 v11, 0x0

    .line 1140
    .local v11, "anyCircles":Z
    const/16 v26, 0x0

    .line 1141
    .local v26, "lastX":F
    const/16 v27, 0x0

    .line 1142
    .local v27, "lastY":F
    const/16 v24, 0x0

    :goto_148
    move/from16 v0, v24

    move/from16 v1, v16

    if-ge v0, v1, :cond_162

    .line 1143
    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 1148
    .restart local v12    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget v4, v12, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v4, v20, v4

    iget v5, v12, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v4, v4, v5

    if-nez v4, :cond_1b8

    .line 1171
    .end local v12    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_162
    move-object/from16 v0, p0

    iget-boolean v4, v0, mPatternInProgress:Z

    if-nez v4, :cond_170

    move-object/from16 v0, p0

    iget-object v4, v0, mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v4, v5, :cond_1b3

    :cond_170
    if-eqz v11, :cond_1b3

    .line 1173
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->rewind()V

    .line 1174
    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1175
    move-object/from16 v0, p0

    iget v4, v0, mInProgressX:F

    move-object/from16 v0, p0

    iget v5, v0, mInProgressY:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1177
    move-object/from16 v0, p0

    iget-object v4, v0, mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, mInProgressX:F

    move-object/from16 v0, p0

    iget v6, v0, mInProgressY:F

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v5, v6, v1, v2}, calculateLastSegmentAlpha(FFFF)F

    move-result v5

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1179
    move-object/from16 v0, p0

    iget-object v4, v0, mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1182
    .end local v11    # "anyCircles":Z
    .end local v26    # "lastX":F
    .end local v27    # "lastY":F
    :cond_1b3
    return-void

    .line 1134
    .end local v21    # "drawPath":Z
    :cond_1b4
    const/16 v21, 0x0

    goto/16 :goto_131

    .line 1151
    .restart local v11    # "anyCircles":Z
    .restart local v12    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v21    # "drawPath":Z
    .restart local v26    # "lastX":F
    .restart local v27    # "lastY":F
    :cond_1b8
    const/4 v11, 0x1

    .line 1153
    iget v4, v12, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getCenterXForColumn(I)F

    move-result v14

    .line 1154
    .restart local v14    # "centerX":F
    iget v4, v12, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, getCenterYForRow(I)F

    move-result v15

    .line 1155
    .restart local v15    # "centerY":F
    if-eqz v24, :cond_20d

    .line 1156
    move-object/from16 v0, p0

    iget-object v4, v0, mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    iget v5, v12, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v4, v4, v5

    iget v5, v12, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-object v35, v4, v5

    .line 1157
    .local v35, "state":Lcom/android/internal/widget/LockPatternView$CellState;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->rewind()V

    .line 1158
    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1159
    move-object/from16 v0, v35

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    const/4 v5, 0x1

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_215

    move-object/from16 v0, v35

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    const/4 v5, 0x1

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_215

    .line 1160
    move-object/from16 v0, v35

    iget v4, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    move-object/from16 v0, v35

    iget v5, v0, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1164
    :goto_202
    move-object/from16 v0, p0

    iget-object v4, v0, mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1166
    .end local v35    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_20d
    move/from16 v26, v14

    .line 1167
    move/from16 v27, v15

    .line 1142
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_148

    .line 1162
    .restart local v35    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_215
    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_202
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v3, 0xa

    .line 861
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 862
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 863
    .local v0, "action":I
    packed-switch v0, :pswitch_data_4a

    .line 877
    :goto_15
    :pswitch_15
    invoke-virtual {p0, p1}, onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 878
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 880
    .end local v0    # "action":I
    :cond_1b
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_1f
    return v1

    .line 865
    .restart local v0    # "action":I
    :pswitch_20
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_15

    .line 868
    :pswitch_25
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_15

    .line 871
    :pswitch_2a
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 872
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 874
    :cond_37
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 875
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1f

    .line 863
    nop

    :pswitch_data_4a
    .packed-switch 0x7
        :pswitch_25
        :pswitch_15
        :pswitch_20
        :pswitch_2a
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .registers 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 661
    invoke-virtual {p0}, getSuggestedMinimumWidth()I

    move-result v1

    .line 662
    .local v1, "minimumWidth":I
    invoke-virtual {p0}, getSuggestedMinimumHeight()I

    move-result v0

    .line 663
    .local v0, "minimumHeight":I
    invoke-direct {p0, p1, v1}, resolveMeasured(II)I

    move-result v3

    .line 664
    .local v3, "viewWidth":I
    invoke-direct {p0, p2, v0}, resolveMeasured(II)I

    move-result v2

    .line 666
    .local v2, "viewHeight":I
    iget v4, p0, mAspect:I

    packed-switch v4, :pswitch_data_2a

    .line 678
    :goto_15
    invoke-virtual {p0, v3, v2}, setMeasuredDimension(II)V

    .line 679
    return-void

    .line 668
    :pswitch_19
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v2

    .line 669
    goto :goto_15

    .line 671
    :pswitch_1f
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 672
    goto :goto_15

    .line 674
    :pswitch_24
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_15

    .line 666
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_19
        :pswitch_1f
        :pswitch_24
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1228
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/LockPatternView$SavedState;

    .line 1229
    .local v0, "ss":Lcom/android/internal/widget/LockPatternView$SavedState;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1230
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 1233
    invoke-static {}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->getDisplayMode()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1234
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInputEnabled()Z

    move-result v1

    iput-boolean v1, p0, mInputEnabled:Z

    .line 1235
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInStealthMode()Z

    move-result v1

    iput-boolean v1, p0, mInStealthMode:Z

    .line 1236
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result v1

    iput-boolean v1, p0, mEnableHapticFeedback:Z

    .line 1237
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 9

    .prologue
    .line 1219
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1220
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/LockPatternView$SavedState;

    iget-object v2, p0, mPattern:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, mInputEnabled:Z

    iget-boolean v5, p0, mInStealthMode:Z

    iget-boolean v6, p0, mEnableHapticFeedback:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/android/internal/widget/LockPatternView$1;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 10
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    .line 632
    iget v2, p0, mPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, p0, mPaddingRight:I

    sub-int v1, v2, v3

    .line 633
    .local v1, "width":I
    int-to-float v2, v1

    div-float/2addr v2, v4

    iput v2, p0, mSquareWidth:F

    .line 636
    iget v2, p0, mPaddingTop:I

    sub-int v2, p2, v2

    iget v3, p0, mPaddingBottom:I

    sub-int v0, v2, v3

    .line 637
    .local v0, "height":I
    int-to-float v2, v0

    div-float/2addr v2, v4

    iput v2, p0, mSquareHeight:F

    .line 638
    iget-object v2, p0, mExploreByTouchHelper:Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateRoot()V

    .line 639
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v3, 0xa

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 885
    iget-boolean v2, p0, mInputEnabled:Z

    if-eqz v2, :cond_e

    invoke-virtual {p0}, isEnabled()Z

    move-result v2

    if-nez v2, :cond_10

    :cond_e
    move v0, v1

    .line 916
    :cond_f
    :goto_f
    return v0

    .line 889
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_40

    move v0, v1

    .line 916
    goto :goto_f

    .line 891
    :pswitch_19
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 892
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 894
    :cond_26
    invoke-direct {p0, p1}, handleActionDown(Landroid/view/MotionEvent;)V

    goto :goto_f

    .line 897
    :pswitch_2a
    invoke-direct {p0}, handleActionUp()V

    goto :goto_f

    .line 900
    :pswitch_2e
    invoke-virtual {p0, p1}, handleActionMove(Landroid/view/MotionEvent;)V

    goto :goto_f

    .line 903
    :pswitch_32
    iget-boolean v2, p0, mPatternInProgress:Z

    if-eqz v2, :cond_f

    .line 904
    invoke-direct {p0, v1}, setPatternInProgress(Z)V

    .line 905
    invoke-direct {p0}, resetPattern()V

    .line 906
    invoke-direct {p0}, notifyPatternCleared()V

    goto :goto_f

    .line 889
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_19
        :pswitch_2a
        :pswitch_2e
        :pswitch_32
    .end packed-switch
.end method

.method public setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V
    .registers 6
    .param p1, "displayMode"    # Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .prologue
    .line 425
    iput-object p1, p0, mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 426
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p1, v1, :cond_3d

    .line 427
    iget-object v1, p0, mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_17

    .line 428
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 431
    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, mAnimatingPeriodStart:J

    .line 432
    iget-object v1, p0, mPattern:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 433
    .local v0, "first":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-virtual {p0, v1}, getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, mInProgressX:F

    .line 434
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-virtual {p0, v1}, getCenterYForRow(I)F

    move-result v1

    iput v1, p0, mInProgressY:F

    .line 435
    invoke-virtual {p0}, clearPatternDrawLookup()V

    .line 437
    .end local v0    # "first":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_3d
    invoke-virtual {p0}, invalidate()V

    .line 438
    return-void
.end method

.method public setInStealthMode(Z)V
    .registers 2
    .param p1, "inStealthMode"    # Z

    .prologue
    .line 379
    iput-boolean p1, p0, mInStealthMode:Z

    .line 380
    return-void
.end method

.method public setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V
    .registers 2
    .param p1, "onPatternListener"    # Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .prologue
    .line 398
    iput-object p1, p0, mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 399
    return-void
.end method

.method public setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V
    .registers 8
    .param p1, "displayMode"    # Lcom/android/internal/widget/LockPatternView$DisplayMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternView$DisplayMode;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v2, p0, mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 409
    iget-object v2, p0, mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 410
    invoke-virtual {p0}, clearPatternDrawLookup()V

    .line 411
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 412
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v2, p0, mPatternDrawLookup:[[Z

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_11

    .line 415
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_2d
    invoke-virtual {p0, p1}, setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 416
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .registers 2
    .param p1, "tactileFeedbackEnabled"    # Z

    .prologue
    .line 389
    iput-boolean p1, p0, mEnableHapticFeedback:Z

    .line 390
    return-void
.end method

.method public startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .registers 16
    .param p1, "cellState"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "startAlpha"    # F
    .param p3, "endAlpha"    # F
    .param p4, "startTranslationY"    # F
    .param p5, "endTranslationY"    # F
    .param p6, "startScale"    # F
    .param p7, "endScale"    # F
    .param p8, "delay"    # J
    .param p10, "duration"    # J
    .param p12, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p13, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 444
    invoke-virtual {p0}, isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 445
    invoke-direct/range {p0 .. p13}, startCellStateAnimationHw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 453
    :goto_9
    return-void

    .line 449
    :cond_a
    invoke-direct/range {p0 .. p13}, startCellStateAnimationSw(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_9
.end method
