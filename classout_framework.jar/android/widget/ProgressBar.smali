.class public Landroid/widget/ProgressBar;
.super Landroid/view/View;
.source "ProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ProgressBar$1;,
        Landroid/widget/ProgressBar$ProgressTintInfo;,
        Landroid/widget/ProgressBar$AccessibilityEventSender;,
        Landroid/widget/ProgressBar$SavedState;,
        Landroid/widget/ProgressBar$RefreshData;,
        Landroid/widget/ProgressBar$RefreshProgressRunnable;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MAX_LEVEL:I = 0x2710

.field public static final MODE_DUAL_COLOR:I = 0x2

.field public static final MODE_SPLIT:I = 0x4

.field public static final MODE_STANDARD:I = 0x0

.field public static final MODE_VERTICAL:I = 0x3

.field public static final MODE_WARNING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ProgressBar"

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mAttached:Z

.field private mBehavior:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mCurrentMode:I

.field protected mDensity:F

.field private mDuration:I

.field private mHasAnimation:Z

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field private mMin:I

.field mMinHeight:I

.field mMinWidth:I

.field mMirrorForRtl:Z

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

.field private final mRefreshData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshIsPosted:Z

.field private mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

.field mSampleTile:Landroid/graphics/Bitmap;

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 207
    const/4 v0, 0x0

    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 302
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 305
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 306
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 310
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/16 v10, 0x10

    const/4 v9, -0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 313
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 246
    iput-boolean v4, p0, mMirrorForRtl:Z

    .line 248
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, mRefreshData:Ljava/util/ArrayList;

    .line 289
    iput v4, p0, mCurrentMode:I

    .line 315
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    iput-wide v6, p0, mUiThreadId:J

    .line 316
    invoke-direct {p0}, initProgressBar()V

    .line 318
    sget-object v6, Lcom/android/internal/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 321
    .local v0, "a":Landroid/content/res/TypedArray;
    iput-boolean v5, p0, mNoInvalidate:Z

    .line 323
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 324
    .local v2, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_3a

    .line 328
    invoke-static {v2}, needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_207

    .line 329
    invoke-virtual {p0, v2}, setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    .line 335
    :cond_3a
    :goto_3a
    const/16 v6, 0x9

    iget v7, p0, mDuration:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, mDuration:I

    .line 337
    const/16 v6, 0xb

    iget v7, p0, mMinWidth:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, mMinWidth:I

    .line 338
    iget v6, p0, mMaxWidth:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, mMaxWidth:I

    .line 339
    const/16 v6, 0xc

    iget v7, p0, mMinHeight:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, mMinHeight:I

    .line 340
    iget v6, p0, mMaxHeight:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, mMaxHeight:I

    .line 342
    const/16 v6, 0xa

    iget v7, p0, mBehavior:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, mBehavior:I

    .line 344
    const/16 v6, 0xd

    const v7, 0x10a000b

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 347
    .local v3, "resID":I
    if-lez v3, :cond_80

    .line 348
    invoke-virtual {p0, p1, v3}, setInterpolator(Landroid/content/Context;I)V

    .line 351
    :cond_80
    const/4 v6, 0x2

    iget v7, p0, mMax:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, setMax(I)V

    .line 353
    const/4 v6, 0x3

    iget v7, p0, mProgress:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, setProgress(I)V

    .line 355
    const/4 v6, 0x4

    iget v7, p0, mSecondaryProgress:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, setSecondaryProgress(I)V

    .line 358
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 360
    .local v1, "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_ae

    .line 361
    invoke-static {v1}, needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_20c

    .line 362
    invoke-virtual {p0, v1}, setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    .line 368
    :cond_ae
    :goto_ae
    const/4 v6, 0x6

    iget-boolean v7, p0, mOnlyIndeterminate:Z

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, mOnlyIndeterminate:Z

    .line 371
    iput-boolean v4, p0, mNoInvalidate:Z

    .line 373
    iget-boolean v6, p0, mOnlyIndeterminate:Z

    if-nez v6, :cond_c6

    const/4 v6, 0x5

    iget-boolean v7, p0, mIndeterminate:Z

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_c7

    :cond_c6
    move v4, v5

    :cond_c7
    invoke-virtual {p0, v4}, setIndeterminate(Z)V

    .line 376
    const/16 v4, 0xf

    iget-boolean v6, p0, mMirrorForRtl:Z

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, mMirrorForRtl:Z

    .line 378
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_f9

    .line 379
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_e7

    .line 380
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 382
    :cond_e7
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x11

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v8}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 384
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 387
    :cond_f9
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_116

    .line 388
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_10a

    .line 389
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 391
    :cond_10a
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 393
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    .line 396
    :cond_116
    const/16 v4, 0x13

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_13b

    .line 397
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_129

    .line 398
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 400
    :cond_129
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x13

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v8}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 402
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 405
    :cond_13b
    const/16 v4, 0x12

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_15c

    .line 406
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_14e

    .line 407
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 409
    :cond_14e
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x12

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 411
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    .line 414
    :cond_15c
    const/16 v4, 0x15

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_181

    .line 415
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_16f

    .line 416
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 418
    :cond_16f
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x15

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v8}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 420
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 423
    :cond_181
    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1a2

    .line 424
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_194

    .line 425
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 427
    :cond_194
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x14

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 429
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    .line 432
    :cond_1a2
    const/16 v4, 0x17

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1c7

    .line 433
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_1b5

    .line 434
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 436
    :cond_1b5
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x17

    invoke-virtual {v0, v6, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v8}, Landroid/graphics/drawable/Drawable;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 438
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    .line 441
    :cond_1c7
    const/16 v4, 0x16

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1e8

    .line 442
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v4, :cond_1da

    .line 443
    new-instance v4, Landroid/widget/ProgressBar$ProgressTintInfo;

    invoke-direct {v4, v8}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 445
    :cond_1da
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/16 v6, 0x16

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 447
    iget-object v4, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-boolean v5, v4, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    .line 450
    :cond_1e8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 452
    invoke-direct {p0}, applyProgressTints()V

    .line 453
    invoke-direct {p0}, applyIndeterminateTint()V

    .line 456
    invoke-virtual {p0}, getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_1fa

    .line 457
    invoke-virtual {p0, v5}, setImportantForAccessibility(I)V

    .line 461
    :cond_1fa
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, mDensity:F

    .line 463
    return-void

    .line 331
    .end local v1    # "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "resID":I
    :cond_207
    invoke-virtual {p0, v2}, setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3a

    .line 364
    .restart local v1    # "indeterminateDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "resID":I
    :cond_20c
    invoke-virtual {p0, v1}, setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_ae
.end method

.method static synthetic access$100(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ProgressBar;

    .prologue
    .line 205
    iget-object v0, p0, mRefreshData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/ProgressBar;IIZZ)V
    .registers 5
    .param p0, "x0"    # Landroid/widget/ProgressBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 205
    invoke-direct {p0, p1, p2, p3, p4}, doRefreshProgress(IIZZ)V

    return-void
.end method

.method static synthetic access$302(Landroid/widget/ProgressBar;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/ProgressBar;
    .param p1, "x1"    # Z

    .prologue
    .line 205
    iput-boolean p1, p0, mRefreshIsPosted:Z

    return p1
.end method

.method private applyIndeterminateTint()V
    .registers 4

    .prologue
    .line 780
    iget-object v1, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_41

    iget-object v1, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v1, :cond_41

    .line 781
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 782
    .local v0, "tintInfo":Landroid/widget/ProgressBar$ProgressTintInfo;
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-nez v1, :cond_12

    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_41

    .line 783
    :cond_12
    iget-object v1, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 785
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-eqz v1, :cond_25

    .line 786
    iget-object v1, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 789
    :cond_25
    iget-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_30

    .line 790
    iget-object v1, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 795
    :cond_30
    iget-object v1, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 796
    iget-object v1, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 800
    .end local v0    # "tintInfo":Landroid/widget/ProgressBar$ProgressTintInfo;
    :cond_41
    return-void
.end method

.method private applyPrimaryProgressTint()V
    .registers 4

    .prologue
    .line 904
    iget-object v1, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-nez v1, :cond_c

    iget-object v1, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v1, :cond_3d

    .line 906
    :cond_c
    const v1, 0x102000d

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 907
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3d

    .line 908
    iget-object v1, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-eqz v1, :cond_23

    .line 909
    iget-object v1, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 911
    :cond_23
    iget-object v1, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v1, :cond_30

    .line 912
    iget-object v1, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 917
    :cond_30
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 918
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 922
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3d
    return-void
.end method

.method private applyProgressBackgroundTint()V
    .registers 4

    .prologue
    .line 929
    iget-object v1, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-nez v1, :cond_c

    iget-object v1, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v1, :cond_3c

    .line 931
    :cond_c
    const/high16 v1, 0x1020000

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 932
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3c

    .line 933
    iget-object v1, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-eqz v1, :cond_22

    .line 934
    iget-object v1, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 936
    :cond_22
    iget-object v1, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v1, :cond_2f

    .line 937
    iget-object v1, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 942
    :cond_2f
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 943
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 947
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3c
    return-void
.end method

.method private applyProgressTints()V
    .registers 2

    .prologue
    .line 892
    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_11

    .line 893
    invoke-direct {p0}, applyPrimaryProgressTint()V

    .line 894
    invoke-direct {p0}, applyProgressBackgroundTint()V

    .line 895
    invoke-direct {p0}, applySecondaryProgressTint()V

    .line 897
    :cond_11
    return-void
.end method

.method private applySecondaryProgressTint()V
    .registers 4

    .prologue
    .line 954
    iget-object v1, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-nez v1, :cond_c

    iget-object v1, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v1, :cond_3d

    .line 956
    :cond_c
    const v1, 0x102000f

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 957
    .local v0, "target":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3d

    .line 958
    iget-object v1, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-eqz v1, :cond_23

    .line 959
    iget-object v1, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 961
    :cond_23
    iget-object v1, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v1, :cond_30

    .line 962
    iget-object v1, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v1, v1, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 967
    :cond_30
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 968
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 972
    .end local v0    # "target":Landroid/graphics/drawable/Drawable;
    :cond_3d
    return-void
.end method

.method private declared-synchronized doRefreshProgress(IIZZ)V
    .registers 15
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z
    .param p4, "callBackToApp"    # Z

    .prologue
    .line 1351
    monitor-enter p0

    :try_start_1
    iget v8, p0, mMax:I

    if-lez v8, :cond_42

    int-to-float v8, p2

    iget v9, p0, mMax:I

    int-to-float v9, v9

    div-float v7, v8, v9

    .line 1352
    .local v7, "scale":F
    :goto_b
    const v8, 0x461c4000    # 10000.0f

    mul-float/2addr v8, v7

    float-to-int v3, v8

    .line 1353
    .local v3, "level":I
    iget-object v1, p0, mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1354
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_8b

    .line 1355
    const/4 v6, 0x0

    .line 1358
    .local v6, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v8, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v8, :cond_44

    .line 1359
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v8, v0

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1360
    if-eqz v6, :cond_30

    invoke-virtual {p0}, canResolveLayoutDirection()Z

    move-result v8

    if-eqz v8, :cond_30

    .line 1361
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1363
    :cond_30
    if-eqz v6, :cond_33

    move-object v1, v6

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_33
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1389
    .end local v6    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_36
    :goto_36
    if-eqz p4, :cond_40

    const v8, 0x102000d

    if-ne p1, v8, :cond_40

    .line 1390
    invoke-virtual {p0, v7, p3, p2}, onProgressRefresh(FZI)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_88

    .line 1392
    :cond_40
    monitor-exit p0

    return-void

    .line 1351
    .end local v3    # "level":I
    .end local v7    # "scale":F
    :cond_42
    const/4 v7, 0x0

    goto :goto_b

    .line 1364
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "level":I
    .restart local v6    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "scale":F
    :cond_44
    :try_start_44
    instance-of v8, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v8, :cond_81

    .line 1365
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    .line 1367
    .local v5, "numStates":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_51
    if-ge v2, v5, :cond_36

    .line 1368
    const/4 v4, 0x0

    .line 1369
    .local v4, "mStateDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 1371
    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    move-object v8, v0

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1373
    instance-of v8, v4, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v8, :cond_76

    .line 1374
    check-cast v4, Landroid/graphics/drawable/LayerDrawable;

    .end local v4    # "mStateDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1375
    if-eqz v6, :cond_76

    invoke-virtual {p0}, canResolveLayoutDirection()Z

    move-result v8

    if-eqz v8, :cond_76

    .line 1376
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1379
    :cond_76
    if-eqz v6, :cond_7f

    move-object v8, v6

    :goto_79
    invoke-virtual {v8, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1367
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    :cond_7f
    move-object v8, v1

    .line 1379
    goto :goto_79

    .line 1382
    .end local v2    # "i":I
    .end local v5    # "numStates":I
    :cond_81
    if-eqz v6, :cond_84

    move-object v1, v6

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_84
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_87
    .catchall {:try_start_44 .. :try_end_87} :catchall_88

    goto :goto_36

    .line 1351
    .end local v3    # "level":I
    .end local v6    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "scale":F
    :catchall_88
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1386
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "level":I
    .restart local v7    # "scale":F
    :cond_8b
    :try_start_8b
    invoke-virtual {p0}, invalidate()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_88

    goto :goto_36
.end method

.method private getTintTarget(IZ)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "layerId"    # I
    .param p2, "shouldFallback"    # Z

    .prologue
    .line 1228
    const/4 v1, 0x0

    .line 1230
    .local v1, "layer":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1231
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1b

    .line 1232
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 1234
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_16

    move-object v2, v0

    .line 1235
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1238
    :cond_16
    if-eqz p2, :cond_1b

    if-nez v1, :cond_1b

    .line 1239
    move-object v1, v0

    .line 1243
    :cond_1b
    return-object v1
.end method

.method private initProgressBar()V
    .registers 5

    .prologue
    const/16 v3, 0x30

    const/16 v2, 0x18

    const/4 v1, 0x0

    .line 613
    const/16 v0, 0x64

    iput v0, p0, mMax:I

    .line 614
    iput v1, p0, mMin:I

    .line 615
    iput v1, p0, mProgress:I

    .line 616
    iput v1, p0, mSecondaryProgress:I

    .line 617
    iput-boolean v1, p0, mIndeterminate:Z

    .line 618
    iput-boolean v1, p0, mOnlyIndeterminate:Z

    .line 619
    const/16 v0, 0xfa0

    iput v0, p0, mDuration:I

    .line 620
    const/4 v0, 0x1

    iput v0, p0, mBehavior:I

    .line 621
    iput v2, p0, mMinWidth:I

    .line 622
    iput v3, p0, mMaxWidth:I

    .line 623
    iput v2, p0, mMinHeight:I

    .line 624
    iput v3, p0, mMaxHeight:I

    .line 625
    return-void
.end method

.method private static needsTileify(Landroid/graphics/drawable/Drawable;)Z
    .registers 8
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 473
    instance-of v6, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v6, :cond_20

    move-object v3, p0

    .line 474
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 475
    .local v3, "orig":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .line 476
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_1e

    .line 477
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6}, needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 501
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "orig":Landroid/graphics/drawable/LayerDrawable;
    :cond_1a
    :goto_1a
    return v4

    .line 476
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v3    # "orig":Landroid/graphics/drawable/LayerDrawable;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1e
    move v4, v5

    .line 481
    goto :goto_1a

    .line 484
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "orig":Landroid/graphics/drawable/LayerDrawable;
    :cond_20
    instance-of v6, p0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v6, :cond_3d

    move-object v2, p0

    .line 485
    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    .line 486
    .local v2, "in":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v0

    .line 487
    .restart local v0    # "N":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2c
    if-ge v1, v0, :cond_3b

    .line 488
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6}, needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 487
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_3b
    move v4, v5

    .line 492
    goto :goto_1a

    .line 497
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "in":Landroid/graphics/drawable/StateListDrawable;
    :cond_3d
    instance-of v6, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v6, :cond_1a

    move v4, v5

    .line 501
    goto :goto_1a
.end method

.method private declared-synchronized refreshProgress(IIZ)V
    .registers 10
    .param p1, "id"    # I
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 1405
    monitor-enter p0

    :try_start_1
    iget-wide v2, p0, mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_15

    .line 1406
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, doRefreshProgress(IIZZ)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3b

    .line 1419
    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    .line 1408
    :cond_15
    :try_start_15
    iget-object v1, p0, mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    if-nez v1, :cond_21

    .line 1409
    new-instance v1, Landroid/widget/ProgressBar$RefreshProgressRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/ProgressBar$RefreshProgressRunnable;-><init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$1;)V

    iput-object v1, p0, mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    .line 1412
    :cond_21
    invoke-static {p1, p2, p3}, Landroid/widget/ProgressBar$RefreshData;->obtain(IIZ)Landroid/widget/ProgressBar$RefreshData;

    move-result-object v0

    .line 1413
    .local v0, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget-object v1, p0, mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1414
    iget-boolean v1, p0, mAttached:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p0, mRefreshIsPosted:Z

    if-nez v1, :cond_13

    .line 1415
    iget-object v1, p0, mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v1}, post(Ljava/lang/Runnable;)Z

    .line 1416
    const/4 v1, 0x1

    iput-boolean v1, p0, mRefreshIsPosted:Z
    :try_end_3a
    .catchall {:try_start_15 .. :try_end_3a} :catchall_3b

    goto :goto_13

    .line 1405
    .end local v0    # "rd":Landroid/widget/ProgressBar$RefreshData;
    :catchall_3b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private scheduleAccessibilityEventSender()V
    .registers 5

    .prologue
    .line 1984
    iget-object v0, p0, mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_14

    .line 1985
    new-instance v0, Landroid/widget/ProgressBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ProgressBar$AccessibilityEventSender;-><init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$1;)V

    iput-object v0, p0, mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    .line 1989
    :goto_c
    iget-object v0, p0, mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, postDelayed(Ljava/lang/Runnable;J)Z

    .line 1990
    return-void

    .line 1987
    :cond_14
    iget-object v0, p0, mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_c
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v7, 0x2710

    .line 583
    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_36

    move-object v1, p1

    .line 584
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 585
    .local v1, "background":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    .line 586
    .local v0, "N":I
    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 587
    .local v4, "newBg":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 589
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    if-ge v3, v0, :cond_32

    .line 590
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 591
    .local v2, "frame":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 592
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 589
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 594
    .end local v2    # "frame":Landroid/graphics/drawable/Drawable;
    :cond_32
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    .line 595
    move-object p1, v4

    .line 597
    .end local v0    # "N":I
    .end local v1    # "background":Landroid/graphics/drawable/AnimationDrawable;
    .end local v3    # "i":I
    .end local v4    # "newBg":Landroid/graphics/drawable/AnimationDrawable;
    :cond_36
    return-object p1
.end method

.method private updateDrawableState()V
    .registers 3

    .prologue
    .line 1841
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v0

    .line 1843
    .local v0, "state":[I
    iget-object v1, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_15

    iget-object v1, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1844
    iget-object v1, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1847
    :cond_15
    iget-object v1, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_26

    iget-object v1, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1848
    iget-object v1, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1850
    :cond_26
    return-void
.end method


# virtual methods
.method checkMode(I)Z
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 2074
    iget v0, p0, mCurrentMode:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method drawTrack(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 1777
    iget-object v0, p0, mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1778
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_69

    .line 1781
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1783
    .local v1, "saveCount":I
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, checkMode(I)Z

    move-result v3

    if-nez v3, :cond_6a

    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_6a

    iget-boolean v3, p0, mMirrorForRtl:Z

    if-eqz v3, :cond_6a

    .line 1784
    invoke-virtual {p0}, getWidth()I

    move-result v3

    iget v6, p0, mPaddingRight:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget v6, p0, mPaddingTop:I

    int-to-float v6, v6

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1785
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1790
    :goto_2f
    invoke-virtual {p0}, getDrawingTime()J

    move-result-wide v4

    .line 1791
    .local v4, "time":J
    iget-boolean v3, p0, mHasAnimation:Z

    if-eqz v3, :cond_54

    .line 1792
    iget-object v3, p0, mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v6, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 1793
    iget-object v3, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    .line 1795
    .local v2, "scale":F
    const/4 v3, 0x1

    :try_start_45
    iput-boolean v3, p0, mInDrawing:Z

    .line 1796
    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_74

    .line 1798
    iput-boolean v7, p0, mInDrawing:Z

    .line 1800
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    .line 1803
    .end local v2    # "scale":F
    :cond_54
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1804
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1806
    iget-boolean v3, p0, mShouldStartAnimationDrawable:Z

    if-eqz v3, :cond_69

    instance-of v3, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_69

    .line 1807
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 1808
    iput-boolean v7, p0, mShouldStartAnimationDrawable:Z

    .line 1811
    .end local v1    # "saveCount":I
    .end local v4    # "time":J
    :cond_69
    return-void

    .line 1787
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "saveCount":I
    :cond_6a
    iget v3, p0, mPaddingLeft:I

    int-to-float v3, v3

    iget v6, p0, mPaddingTop:I

    int-to-float v6, v6

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2f

    .line 1798
    .restart local v2    # "scale":F
    .restart local v4    # "time":J
    :catchall_74
    move-exception v3

    iput-boolean v7, p0, mInDrawing:Z

    throw v3
.end method

.method public drawableHotspotChanged(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1854
    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 1856
    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1857
    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1860
    :cond_c
    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    .line 1861
    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 1863
    :cond_15
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 1

    .prologue
    .line 1836
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1837
    invoke-direct {p0}, updateDrawableState()V

    .line 1838
    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "stream"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 1995
    invoke-super {p0, p1}, Landroid/view/View;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1997
    const-string/jumbo v0, "progress:max"

    invoke-virtual {p0}, getMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1998
    const-string/jumbo v0, "progress:progress"

    invoke-virtual {p0}, getProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 1999
    const-string/jumbo v0, "progress:secondaryProgress"

    invoke-virtual {p0}, getSecondaryProgress()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 2000
    const-string/jumbo v0, "progress:indeterminate"

    invoke-virtual {p0}, isIndeterminate()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 2001
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1965
    const-class v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 1269
    iget-object v0, p0, mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 573
    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_e

    .line 574
    .local v0, "roundedCorners":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    .line 573
    :array_e
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 673
    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndeterminateTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 741
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 776
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    .prologue
    .line 1661
    iget-object v0, p0, mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 1533
    monitor-enter p0

    :try_start_1
    iget v0, p0, mMax:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 1502
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, mIndeterminate:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget v0, p0, mProgress:I
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_b

    goto :goto_6

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 1098
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 1132
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 831
    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getProgressTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 1016
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 1053
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public declared-synchronized getSecondaryProgress()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 1519
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, mIndeterminate:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget v0, p0, mSecondaryProgress:I
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_b

    goto :goto_6

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .prologue
    .line 1177
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .prologue
    .line 1215
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iget-object v0, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .registers 3
    .param p1, "diff"    # I

    .prologue
    .line 1569
    monitor-enter p0

    :try_start_1
    iget v0, p0, mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, setProgress(I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 1570
    monitor-exit p0

    return-void

    .line 1569
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .registers 3
    .param p1, "diff"    # I

    .prologue
    .line 1580
    monitor-enter p0

    :try_start_1
    iget v0, p0, mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, setSecondaryProgress(I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 1581
    monitor-exit p0

    return-void

    .line 1580
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 9
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1697
    iget-boolean v3, p0, mInDrawing:Z

    if-nez v3, :cond_29

    .line 1698
    invoke-virtual {p0, p1}, verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1699
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1700
    .local v0, "dirty":Landroid/graphics/Rect;
    iget v3, p0, mScrollX:I

    iget v4, p0, mPaddingLeft:I

    add-int v1, v3, v4

    .line 1701
    .local v1, "scrollX":I
    iget v3, p0, mScrollY:I

    iget v4, p0, mPaddingTop:I

    add-int v2, v3, v4

    .line 1703
    .local v2, "scrollY":I
    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, invalidate(IIII)V

    .line 1709
    .end local v0    # "dirty":Landroid/graphics/Rect;
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_29
    :goto_29
    return-void

    .line 1706
    :cond_2a
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_29
.end method

.method public declared-synchronized isIndeterminate()Z
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    .prologue
    .line 634
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, mIndeterminate:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .prologue
    .line 1280
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1281
    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1282
    :cond_c
    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1283
    :cond_15
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 1927
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1928
    iget-boolean v3, p0, mIndeterminate:Z

    if-eqz v3, :cond_b

    .line 1929
    invoke-virtual {p0}, startAnimation()V

    .line 1931
    :cond_b
    iget-object v3, p0, mRefreshData:Ljava/util/ArrayList;

    if-eqz v3, :cond_37

    .line 1932
    monitor-enter p0

    .line 1933
    :try_start_10
    iget-object v3, p0, mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1934
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    if-ge v1, v0, :cond_31

    .line 1935
    iget-object v3, p0, mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar$RefreshData;

    .line 1936
    .local v2, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget v3, v2, Landroid/widget/ProgressBar$RefreshData;->id:I

    iget v4, v2, Landroid/widget/ProgressBar$RefreshData;->progress:I

    iget-boolean v5, v2, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    const/4 v6, 0x1

    invoke-direct {p0, v3, v4, v5, v6}, doRefreshProgress(IIZZ)V

    .line 1937
    invoke-virtual {v2}, Landroid/widget/ProgressBar$RefreshData;->recycle()V

    .line 1934
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 1939
    .end local v2    # "rd":Landroid/widget/ProgressBar$RefreshData;
    :cond_31
    iget-object v3, p0, mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1940
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_10 .. :try_end_37} :catchall_3a

    .line 1942
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_37
    iput-boolean v7, p0, mAttached:Z

    .line 1943
    return-void

    .line 1940
    :catchall_3a
    move-exception v3

    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v3
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1947
    iget-boolean v0, p0, mIndeterminate:Z

    if-eqz v0, :cond_8

    .line 1948
    invoke-virtual {p0}, stopAnimation()V

    .line 1950
    :cond_8
    iget-object v0, p0, mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    if-eqz v0, :cond_13

    .line 1951
    iget-object v0, p0, mRefreshProgressRunnable:Landroid/widget/ProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1952
    iput-boolean v1, p0, mRefreshIsPosted:Z

    .line 1954
    :cond_13
    iget-object v0, p0, mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_1c

    .line 1955
    iget-object v0, p0, mAccessibilityEventSender:Landroid/widget/ProgressBar$AccessibilityEventSender;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1959
    :cond_1c
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1960
    iput-boolean v1, p0, mAttached:Z

    .line 1961
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1768
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1770
    invoke-virtual {p0, p1}, drawTrack(Landroid/graphics/Canvas;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 1771
    monitor-exit p0

    return-void

    .line 1768
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1971
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1972
    iget v0, p0, mMax:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1973
    iget v0, p0, mProgress:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1974
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1815
    monitor-enter p0

    const/4 v2, 0x0

    .line 1816
    .local v2, "dw":I
    const/4 v1, 0x0

    .line 1818
    .local v1, "dh":I
    :try_start_3
    iget-object v0, p0, mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1819
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_27

    .line 1820
    iget v5, p0, mMinWidth:I

    iget v6, p0, mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1821
    iget v5, p0, mMinHeight:I

    iget v6, p0, mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1824
    :cond_27
    invoke-direct {p0}, updateDrawableState()V

    .line 1826
    iget v5, p0, mPaddingLeft:I

    iget v6, p0, mPaddingRight:I

    add-int/2addr v5, v6

    add-int/2addr v2, v5

    .line 1827
    iget v5, p0, mPaddingTop:I

    iget v6, p0, mPaddingBottom:I

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 1829
    const/4 v5, 0x0

    invoke-static {v2, p1, v5}, resolveSizeAndState(III)I

    move-result v4

    .line 1830
    .local v4, "measuredWidth":I
    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, resolveSizeAndState(III)I

    move-result v3

    .line 1831
    .local v3, "measuredHeight":I
    invoke-virtual {p0, v4, v3}, setMeasuredDimension(II)V
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_45

    .line 1832
    monitor-exit p0

    return-void

    .line 1815
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    :catchall_45
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method onProgressRefresh(FZI)V
    .registers 7
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    .prologue
    .line 1395
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1396
    invoke-direct {p0}, scheduleAccessibilityEventSender()V

    .line 1399
    :cond_f
    iget v0, p0, mSecondaryProgress:I

    iget v1, p0, mProgress:I

    if-le v0, v1, :cond_20

    if-nez p2, :cond_20

    .line 1400
    const v0, 0x102000f

    iget v1, p0, mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, refreshProgress(IIZ)V

    .line 1402
    :cond_20
    return-void
.end method

.method public onResolveDrawables(I)V
    .registers 4
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1290
    iget-object v0, p0, mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 1291
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_7

    .line 1292
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1294
    :cond_7
    iget-object v1, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    .line 1295
    iget-object v1, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1297
    :cond_10
    iget-object v1, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_19

    .line 1298
    iget-object v1, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1300
    :cond_19
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1918
    move-object v0, p1

    check-cast v0, Landroid/widget/ProgressBar$SavedState;

    .line 1919
    .local v0, "ss":Landroid/widget/ProgressBar$SavedState;
    invoke-virtual {v0}, Landroid/widget/ProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1921
    iget v1, v0, Landroid/widget/ProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, setProgress(I)V

    .line 1922
    iget v1, v0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, setSecondaryProgress(I)V

    .line 1923
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 1907
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1908
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/ProgressBar$SavedState;

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1910
    .local v0, "ss":Landroid/widget/ProgressBar$SavedState;
    iget v2, p0, mProgress:I

    iput v2, v0, Landroid/widget/ProgressBar$SavedState;->progress:I

    .line 1911
    iget v2, p0, mSecondaryProgress:I

    iput v2, v0, Landroid/widget/ProgressBar$SavedState;->secondaryProgress:I

    .line 1913
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1713
    invoke-virtual {p0, p1, p2}, updateDrawableBounds(II)V

    .line 1714
    return-void
.end method

.method protected onSlidingRefresh(I)V
    .registers 5
    .param p1, "level"    # I

    .prologue
    .line 2082
    iget-object v0, p0, mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 2083
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_19

    .line 2084
    const/4 v1, 0x0

    .line 2086
    .local v1, "progressDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_14

    .line 2087
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    const v2, 0x102000d

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2089
    :cond_14
    if-eqz v1, :cond_19

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 2091
    .end local v1    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :cond_19
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 1683
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1685
    iget-boolean v0, p0, mIndeterminate:Z

    if-eqz v0, :cond_11

    .line 1687
    const/16 v0, 0x8

    if-eq p2, v0, :cond_e

    const/4 v0, 0x4

    if-ne p2, v0, :cond_12

    .line 1688
    :cond_e
    invoke-virtual {p0}, stopAnimation()V

    .line 1693
    :cond_11
    :goto_11
    return-void

    .line 1690
    :cond_12
    invoke-virtual {p0}, startAnimation()V

    goto :goto_11
.end method

.method public postInvalidate()V
    .registers 2

    .prologue
    .line 1304
    iget-boolean v0, p0, mNoInvalidate:Z

    if-nez v0, :cond_7

    .line 1305
    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    .line 1307
    :cond_7
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .registers 3
    .param p1, "indeterminate"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 649
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, mOnlyIndeterminate:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, mIndeterminate:Z

    if-nez v0, :cond_18

    :cond_9
    iget-boolean v0, p0, mIndeterminate:Z

    if-eq p1, v0, :cond_18

    .line 650
    iput-boolean p1, p0, mIndeterminate:Z

    .line 652
    if-eqz p1, :cond_1a

    .line 654
    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 655
    invoke-virtual {p0}, startAnimation()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_22

    .line 661
    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    .line 657
    :cond_1a
    :try_start_1a
    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 658
    invoke-virtual {p0}, stopAnimation()V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_22

    goto :goto_18

    .line 649
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 684
    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3a

    .line 685
    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_13

    .line 686
    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 687
    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 690
    :cond_13
    iput-object p1, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    .line 692
    if-eqz p1, :cond_31

    .line 693
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 694
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 695
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 696
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 698
    :cond_2e
    invoke-direct {p0}, applyIndeterminateTint()V

    .line 701
    :cond_31
    iget-boolean v0, p0, mIndeterminate:Z

    if-eqz v0, :cond_3a

    .line 702
    iput-object p1, p0, mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 703
    invoke-virtual {p0}, postInvalidate()V

    .line 706
    :cond_3a
    return-void
.end method

.method public setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 814
    if-eqz p1, :cond_6

    .line 815
    invoke-direct {p0, p1}, tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 818
    :cond_6
    invoke-virtual {p0, p1}, setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 819
    return-void
.end method

.method public setIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 725
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_c

    .line 726
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 728
    :cond_c
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    .line 729
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    .line 731
    invoke-direct {p0}, applyIndeterminateTint()V

    .line 732
    return-void
.end method

.method public setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 756
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_c

    .line 757
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 759
    :cond_c
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 760
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    .line 762
    invoke-direct {p0}, applyIndeterminateTint()V

    .line 763
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .prologue
    .line 1642
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1643
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 1652
    iput-object p1, p0, mInterpolator:Landroid/view/animation/Interpolator;

    .line 1653
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .registers 5
    .param p1, "max"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1547
    monitor-enter p0

    if-gez p1, :cond_4

    .line 1548
    const/4 p1, 0x0

    .line 1550
    :cond_4
    :try_start_4
    iget v0, p0, mMax:I

    if-eq p1, v0, :cond_1c

    .line 1551
    iput p1, p0, mMax:I

    .line 1552
    invoke-virtual {p0}, postInvalidate()V

    .line 1554
    iget v0, p0, mProgress:I

    if-le v0, p1, :cond_13

    .line 1555
    iput p1, p0, mProgress:I

    .line 1557
    :cond_13
    const v0, 0x102000d

    iget v1, p0, mProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, refreshProgress(IIZ)V
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_1e

    .line 1559
    :cond_1c
    monitor-exit p0

    return-void

    .line 1547
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMin(I)V
    .registers 2
    .param p1, "min"    # I

    .prologue
    .line 2041
    iput p1, p0, mMin:I

    .line 2042
    return-void
.end method

.method public setMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .prologue
    .line 2052
    iput p1, p0, mCurrentMode:I

    .line 2054
    packed-switch p1, :pswitch_data_24

    .line 2068
    :cond_5
    :goto_5
    return-void

    .line 2056
    :pswitch_6
    iget-object v1, p0, mContext:Landroid/content/Context;

    const v2, 0x10809d9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2057
    .local v0, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5

    .line 2058
    invoke-virtual {p0, v0}, setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 2062
    .end local v0    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    :pswitch_15
    iget-object v1, p0, mContext:Landroid/content/Context;

    const v2, 0x10809ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2063
    .restart local v0    # "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_5

    .line 2064
    invoke-virtual {p0, v0}, setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 2054
    :pswitch_data_24
    .packed-switch 0x3
        :pswitch_6
        :pswitch_15
    .end packed-switch
.end method

.method public declared-synchronized setProgress(I)V
    .registers 3
    .param p1, "progress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1434
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, setProgress(IZ)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 1435
    monitor-exit p0

    return-void

    .line 1434
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgress(IZ)Z
    .registers 6
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1439
    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, mIndeterminate:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_20

    if-eqz v1, :cond_8

    .line 1453
    :cond_6
    :goto_6
    monitor-exit p0

    return v0

    .line 1444
    :cond_8
    :try_start_8
    iget v1, p0, mMin:I

    iget v2, p0, mMax:I

    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    .line 1446
    iget v1, p0, mProgress:I

    if-eq p1, v1, :cond_6

    .line 1451
    iput p1, p0, mProgress:I

    .line 1452
    const v0, 0x102000d

    iget v1, p0, mProgress:I

    invoke-direct {p0, v0, v1, p2}, refreshProgress(IIZ)V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_20

    .line 1453
    const/4 v0, 0x1

    goto :goto_6

    .line 1439
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1078
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_c

    .line 1079
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1081
    :cond_c
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    .line 1082
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    .line 1084
    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 1085
    invoke-direct {p0}, applyProgressBackgroundTint()V

    .line 1087
    :cond_1c
    return-void
.end method

.method public setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 1113
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_c

    .line 1114
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1116
    :cond_c
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1117
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    .line 1119
    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 1120
    invoke-direct {p0}, applyProgressBackgroundTint()V

    .line 1122
    :cond_1c
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x0

    .line 842
    iget-object v2, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_6d

    .line 843
    iget-object v2, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_14

    .line 844
    iget-object v2, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 845
    iget-object v2, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 848
    :cond_14
    iput-object p1, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 850
    if-eqz p1, :cond_46

    .line 851
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 852
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 853
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 854
    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 858
    :cond_2f
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, checkMode(I)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 859
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 860
    .local v1, "drawableWidth":I
    iget v2, p0, mMaxWidth:I

    if-ge v2, v1, :cond_43

    .line 861
    iput v1, p0, mMaxWidth:I

    .line 862
    invoke-virtual {p0}, requestLayout()V

    .line 872
    .end local v1    # "drawableWidth":I
    :cond_43
    :goto_43
    invoke-direct {p0}, applyProgressTints()V

    .line 875
    :cond_46
    iget-boolean v2, p0, mIndeterminate:Z

    if-nez v2, :cond_4f

    .line 876
    iput-object p1, p0, mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    .line 877
    invoke-virtual {p0}, postInvalidate()V

    .line 880
    :cond_4f
    invoke-virtual {p0}, getWidth()I

    move-result v2

    invoke-virtual {p0}, getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, updateDrawableBounds(II)V

    .line 881
    invoke-direct {p0}, updateDrawableState()V

    .line 883
    const v2, 0x102000d

    iget v3, p0, mProgress:I

    invoke-direct {p0, v2, v3, v4, v4}, doRefreshProgress(IIZZ)V

    .line 884
    const v2, 0x102000f

    iget v3, p0, mSecondaryProgress:I

    invoke-direct {p0, v2, v3, v4, v4}, doRefreshProgress(IIZZ)V

    .line 886
    :cond_6d
    return-void

    .line 865
    :cond_6e
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 866
    .local v0, "drawableHeight":I
    iget v2, p0, mMaxHeight:I

    if-ge v2, v0, :cond_43

    .line 867
    iput v0, p0, mMaxHeight:I

    .line 868
    invoke-virtual {p0}, requestLayout()V

    goto :goto_43
.end method

.method public setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1258
    if-eqz p1, :cond_7

    .line 1259
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1262
    :cond_7
    invoke-virtual {p0, p1}, setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1263
    return-void
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 996
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_c

    .line 997
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 999
    :cond_c
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    .line 1000
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    .line 1002
    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 1003
    invoke-direct {p0}, applyPrimaryProgressTint()V

    .line 1005
    :cond_1c
    return-void
.end method

.method public setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 1031
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_c

    .line 1032
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1034
    :cond_c
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1035
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    .line 1037
    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 1038
    invoke-direct {p0}, applyPrimaryProgressTint()V

    .line 1040
    :cond_1c
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .registers 5
    .param p1, "secondaryProgress"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1470
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, mIndeterminate:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_20

    if-eqz v0, :cond_7

    .line 1486
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 1474
    :cond_7
    if-gez p1, :cond_a

    .line 1475
    const/4 p1, 0x0

    .line 1478
    :cond_a
    :try_start_a
    iget v0, p0, mMax:I

    if-le p1, v0, :cond_10

    .line 1479
    iget p1, p0, mMax:I

    .line 1482
    :cond_10
    iget v0, p0, mSecondaryProgress:I

    if-eq p1, v0, :cond_5

    .line 1483
    iput p1, p0, mSecondaryProgress:I

    .line 1484
    const v0, 0x102000f

    iget v1, p0, mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, refreshProgress(IIZ)V
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_20

    goto :goto_5

    .line 1470
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .registers 4
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 1156
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_c

    .line 1157
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1159
    :cond_c
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    .line 1160
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    .line 1162
    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 1163
    invoke-direct {p0}, applySecondaryProgressTint()V

    .line 1165
    :cond_1c
    return-void
.end method

.method public setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 1193
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    if-nez v0, :cond_c

    .line 1194
    new-instance v0, Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar$ProgressTintInfo;-><init>(Landroid/widget/ProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    .line 1196
    :cond_c
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    iput-object p1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1197
    iget-object v0, p0, mProgressTintInfo:Landroid/widget/ProgressBar$ProgressTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/ProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    .line 1199
    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    .line 1200
    invoke-direct {p0}, applySecondaryProgressTint()V

    .line 1202
    :cond_1c
    return-void
.end method

.method public setVisibility(I)V
    .registers 3
    .param p1, "v"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1667
    invoke-virtual {p0}, getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_17

    .line 1668
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1670
    iget-boolean v0, p0, mIndeterminate:Z

    if-eqz v0, :cond_17

    .line 1672
    const/16 v0, 0x8

    if-eq p1, v0, :cond_14

    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    .line 1673
    :cond_14
    invoke-virtual {p0}, stopAnimation()V

    .line 1679
    :cond_17
    :goto_17
    return-void

    .line 1675
    :cond_18
    invoke-virtual {p0}, startAnimation()V

    goto :goto_17
.end method

.method startAnimation()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1587
    invoke-virtual {p0}, getVisibility()I

    move-result v0

    if-eqz v0, :cond_8

    .line 1620
    :goto_7
    return-void

    .line 1591
    :cond_8
    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_17

    .line 1592
    iput-boolean v1, p0, mShouldStartAnimationDrawable:Z

    .line 1593
    const/4 v0, 0x0

    iput-boolean v0, p0, mHasAnimation:Z

    .line 1619
    :goto_13
    invoke-virtual {p0}, postInvalidate()V

    goto :goto_7

    .line 1595
    :cond_17
    iput-boolean v1, p0, mHasAnimation:Z

    .line 1597
    iget-object v0, p0, mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_24

    .line 1598
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, mInterpolator:Landroid/view/animation/Interpolator;

    .line 1601
    :cond_24
    iget-object v0, p0, mTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_61

    .line 1602
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, mTransformation:Landroid/view/animation/Transformation;

    .line 1607
    :goto_2f
    iget-object v0, p0, mAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_67

    .line 1608
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, mAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1613
    :goto_3d
    iget-object v0, p0, mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 1614
    iget-object v0, p0, mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 1615
    iget-object v0, p0, mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, mDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1616
    iget-object v0, p0, mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1617
    iget-object v0, p0, mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    goto :goto_13

    .line 1604
    :cond_61
    iget-object v0, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    goto :goto_2f

    .line 1610
    :cond_67
    iget-object v0, p0, mAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    goto :goto_3d
.end method

.method stopAnimation()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1626
    iput-boolean v1, p0, mHasAnimation:Z

    .line 1627
    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_12

    .line 1628
    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 1629
    iput-boolean v1, p0, mShouldStartAnimationDrawable:Z

    .line 1631
    :cond_12
    invoke-virtual {p0}, postInvalidate()V

    .line 1632
    return-void
.end method

.method protected tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .registers 16
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "clip"    # Z

    .prologue
    const/4 v11, 0x1

    .line 513
    instance-of v10, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v10, :cond_80

    move-object v6, p1

    .line 514
    check-cast v6, Landroid/graphics/drawable/LayerDrawable;

    .line 515
    .local v6, "orig":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .line 516
    .local v0, "N":I
    new-array v8, v0, [Landroid/graphics/drawable/Drawable;

    .line 518
    .local v8, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v0, :cond_2f

    .line 519
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    .line 520
    .local v4, "id":I
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    const v10, 0x102000d

    if-eq v4, v10, :cond_23

    const v10, 0x102000f

    if-ne v4, v10, :cond_2d

    :cond_23
    move v10, v11

    :goto_24
    invoke-virtual {p0, v12, v10}, tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    aput-object v10, v8, v3

    .line 518
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 520
    :cond_2d
    const/4 v10, 0x0

    goto :goto_24

    .line 524
    .end local v4    # "id":I
    :cond_2f
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 525
    .local v2, "clone":Landroid/graphics/drawable/LayerDrawable;
    const/4 v3, 0x0

    :goto_35
    if-ge v3, v0, :cond_a6

    .line 526
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v10

    invoke-virtual {v2, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 527
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    move-result v10

    invoke-virtual {v2, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 528
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    move-result v10

    invoke-virtual {v2, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    .line 529
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    move-result v10

    invoke-virtual {v2, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    .line 530
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v10

    invoke-virtual {v2, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    .line 531
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result v10

    invoke-virtual {v2, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    .line 532
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    move-result v10

    invoke-virtual {v2, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    .line 533
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    move-result v10

    invoke-virtual {v2, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    .line 534
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    move-result v10

    invoke-virtual {v2, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    .line 535
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    move-result v10

    invoke-virtual {v2, v3, v10}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    .line 525
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 541
    .end local v0    # "N":I
    .end local v2    # "clone":Landroid/graphics/drawable/LayerDrawable;
    .end local v3    # "i":I
    .end local v6    # "orig":Landroid/graphics/drawable/LayerDrawable;
    .end local v8    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_80
    instance-of v10, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v10, :cond_a7

    move-object v5, p1

    .line 542
    check-cast v5, Landroid/graphics/drawable/StateListDrawable;

    .line 543
    .local v5, "in":Landroid/graphics/drawable/StateListDrawable;
    new-instance v7, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 544
    .local v7, "out":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v0

    .line 545
    .restart local v0    # "N":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_91
    if-ge v3, v0, :cond_a5

    .line 546
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateSet(I)[I

    move-result-object v10

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {p0, v11, p2}, tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 545
    add-int/lit8 v3, v3, 0x1

    goto :goto_91

    :cond_a5
    move-object v2, v7

    .line 569
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v5    # "in":Landroid/graphics/drawable/StateListDrawable;
    .end local v7    # "out":Landroid/graphics/drawable/StateListDrawable;
    :cond_a6
    :goto_a6
    return-object v2

    .line 552
    :cond_a7
    instance-of v10, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v10, :cond_d3

    move-object v1, p1

    .line 553
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 554
    .local v1, "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 555
    .local v9, "tileBitmap":Landroid/graphics/Bitmap;
    iget-object v10, p0, mSampleTile:Landroid/graphics/Bitmap;

    if-nez v10, :cond_b8

    .line 556
    iput-object v9, p0, mSampleTile:Landroid/graphics/Bitmap;

    .line 559
    :cond_b8
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 560
    .local v2, "clone":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v10, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v2, v10, v12}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 562
    if-eqz p2, :cond_a6

    .line 563
    new-instance v7, Landroid/graphics/drawable/ClipDrawable;

    const/4 v10, 0x3

    invoke-direct {v7, v2, v10, v11}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v2, v7

    goto :goto_a6

    .end local v1    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "clone":Landroid/graphics/drawable/BitmapDrawable;
    .end local v9    # "tileBitmap":Landroid/graphics/Bitmap;
    :cond_d3
    move-object v2, p1

    .line 569
    goto :goto_a6
.end method

.method protected updateDrawableBounds(II)V
    .registers 18
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1722
    iget v12, p0, mPaddingRight:I

    iget v13, p0, mPaddingLeft:I

    add-int/2addr v12, v13

    sub-int p1, p1, v12

    .line 1723
    iget v12, p0, mPaddingTop:I

    iget v13, p0, mPaddingBottom:I

    add-int/2addr v12, v13

    sub-int p2, p2, v12

    .line 1725
    move/from16 v8, p1

    .line 1726
    .local v8, "right":I
    move/from16 v1, p2

    .line 1727
    .local v1, "bottom":I
    const/4 v10, 0x0

    .line 1728
    .local v10, "top":I
    const/4 v7, 0x0

    .line 1730
    .local v7, "left":I
    iget-object v12, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_61

    .line 1732
    iget-boolean v12, p0, mOnlyIndeterminate:Z

    if-eqz v12, :cond_4d

    iget-object v12, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v12, v12, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v12, :cond_4d

    .line 1735
    iget-object v12, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 1736
    .local v6, "intrinsicWidth":I
    iget-object v12, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 1737
    .local v5, "intrinsicHeight":I
    int-to-float v12, v6

    int-to-float v13, v5

    div-float v4, v12, v13

    .line 1738
    .local v4, "intrinsicAspect":F
    move/from16 v0, p1

    int-to-float v12, v0

    move/from16 v0, p2

    int-to-float v13, v0

    div-float v2, v12, v13

    .line 1739
    .local v2, "boundAspect":F
    cmpl-float v12, v4, v2

    if-eqz v12, :cond_4d

    .line 1740
    cmpl-float v12, v2, v4

    if-lez v12, :cond_6d

    .line 1742
    move/from16 v0, p2

    int-to-float v12, v0

    mul-float/2addr v12, v4

    float-to-int v11, v12

    .line 1743
    .local v11, "width":I
    sub-int v12, p1, v11

    div-int/lit8 v7, v12, 0x2

    .line 1744
    add-int v8, v7, v11

    .line 1753
    .end local v2    # "boundAspect":F
    .end local v4    # "intrinsicAspect":F
    .end local v5    # "intrinsicHeight":I
    .end local v6    # "intrinsicWidth":I
    .end local v11    # "width":I
    :cond_4d
    :goto_4d
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v12

    if-eqz v12, :cond_5c

    iget-boolean v12, p0, mMirrorForRtl:Z

    if-eqz v12, :cond_5c

    .line 1754
    move v9, v7

    .line 1755
    .local v9, "tempLeft":I
    sub-int v7, p1, v8

    .line 1756
    sub-int v8, p1, v9

    .line 1758
    .end local v9    # "tempLeft":I
    :cond_5c
    iget-object v12, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v7, v10, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1761
    :cond_61
    iget-object v12, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_6c

    .line 1762
    iget-object v12, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1764
    :cond_6c
    return-void

    .line 1747
    .restart local v2    # "boundAspect":F
    .restart local v4    # "intrinsicAspect":F
    .restart local v5    # "intrinsicHeight":I
    .restart local v6    # "intrinsicWidth":I
    :cond_6d
    move/from16 v0, p1

    int-to-float v12, v0

    const/high16 v13, 0x3f800000    # 1.0f

    div-float/2addr v13, v4

    mul-float/2addr v12, v13

    float-to-int v3, v12

    .line 1748
    .local v3, "height":I
    sub-int v12, p2, v3

    div-int/lit8 v10, v12, 0x2

    .line 1749
    add-int v1, v10, v3

    goto :goto_4d
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1274
    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_e

    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_e

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
