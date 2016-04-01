.class public Landroid/view/ViewConfiguration;
.super Ljava/lang/Object;
.source "ViewConfiguration.java"


# static fields
.field private static final ACTION_MODE_HIDE_DURATION_DEFAULT:J = 0x7d0L

.field private static final AMERICANO:Z

.field private static final DEFAULT_LONG_PRESS_TIMEOUT:I = 0x1f4

.field private static final DOUBLE_TAP_MIN_TIME:I = 0x28

.field private static final DOUBLE_TAP_SLOP:I = 0x64

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x12c

.field private static final DOUBLE_TAP_TOUCH_SLOP:I = 0x8

.field private static final EDGE_SLOP:I = 0xc

.field private static final FADING_EDGE_LENGTH:I = 0xc

.field public static final FAKE_MENU:I = 0x0

.field public static final FAKE_MENU_BACK_LONG:I = 0x2

.field public static final FAKE_MENU_RECENT_LONG:I = 0x1

.field private static final GLOBAL_ACTIONS_KEY_TIMEOUT:I = 0x1f4

.field private static final HAS_PERMANENT_MENU_KEY_AUTODETECT:I = 0x0

.field private static final HAS_PERMANENT_MENU_KEY_FALSE:I = 0x2

.field private static final HAS_PERMANENT_MENU_KEY_TRUE:I = 0x1

.field private static final HOVER_TAP_SLOP:I = 0x14

.field private static final HOVER_TAP_TIMEOUT:I = 0x96

.field private static final JUMP_TAP_TIMEOUT:I = 0x1f4

.field private static final KEY_REPEAT_DELAY:I = 0x32

.field private static final MAXIMUM_DRAWING_CACHE_SIZE:I = 0x177000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MAXIMUM_FLING_VELOCITY:I = 0x1f40

.field private static final MINIMUM_FLING_VELOCITY:I = 0x32

.field private static final MOCHA:Z

.field private static final OVERFLING_DISTANCE:I = 0x6

.field private static final OVERSCROLL_DISTANCE:I = 0x0

.field private static final PAGING_TOUCH_SLOP:I = 0x10

.field private static final PRESSED_STATE_DURATION:I = 0x40

.field private static final SCROLL_BAR_DEFAULT_DELAY:I = 0x12c

.field private static final SCROLL_BAR_FADE_DURATION:I = 0xfa

.field private static final SCROLL_BAR_SIZE:I = 0xa

.field private static final SCROLL_FRICTION:F = 0.015f

.field private static final SEND_RECURRING_ACCESSIBILITY_EVENTS_INTERVAL_MILLIS:J = 0x64L

.field private static final TAP_TIMEOUT:I = 0xb4

.field private static final TOUCH_SLOP:I = 0x8

.field private static final WINDOW_TOUCH_SLOP:I = 0x10

.field private static final ZOOM_CONTROLS_TIMEOUT:I = 0xbb8

.field static final sConfigurations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/ViewConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCheckDisabledHWMenuKey:Z

.field private mCheckEnableFakeMenuKeyByBackLong:Z

.field private final mDoubleTapSlop:I

.field private final mDoubleTapTouchSlop:I

.field private final mEdgeSlop:I

.field private final mFadingEdgeLength:I

.field private final mFadingMarqueeEnabled:Z

.field private final mGlobalActionsKeyTimeout:J

.field private final mMaximumDrawingCacheSize:I

.field private final mMaximumFlingVelocity:I

.field private final mMinimumFlingVelocity:I

.field private final mOverflingDistance:I

.field private final mOverscrollDistance:I

.field private final mPagingTouchSlop:I

.field private final mScrollbarSize:I

.field private final mTouchSlop:I

.field private final mWindowTouchSlop:I

.field private sHasPermanentMenuKey:Z

.field private sHasPermanentMenuKeySet:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 251
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, sConfigurations:Landroid/util/SparseArray;

    .line 267
    const-string v0, "americano"

    const-string/jumbo v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, AMERICANO:Z

    .line 268
    const-string/jumbo v0, "mocha"

    const-string/jumbo v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, MOCHA:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v2, 0x10

    const/16 v0, 0xc

    const/16 v1, 0x8

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput v0, p0, mEdgeSlop:I

    .line 277
    iput v0, p0, mFadingEdgeLength:I

    .line 278
    const/16 v0, 0x32

    iput v0, p0, mMinimumFlingVelocity:I

    .line 279
    const/16 v0, 0x1f40

    iput v0, p0, mMaximumFlingVelocity:I

    .line 280
    const/16 v0, 0xa

    iput v0, p0, mScrollbarSize:I

    .line 281
    iput v1, p0, mTouchSlop:I

    .line 282
    iput v1, p0, mDoubleTapTouchSlop:I

    .line 283
    iput v2, p0, mPagingTouchSlop:I

    .line 284
    const/16 v0, 0x64

    iput v0, p0, mDoubleTapSlop:I

    .line 285
    iput v2, p0, mWindowTouchSlop:I

    .line 287
    const v0, 0x177000

    iput v0, p0, mMaximumDrawingCacheSize:I

    .line 288
    const/4 v0, 0x0

    iput v0, p0, mOverscrollDistance:I

    .line 289
    const/4 v0, 0x6

    iput v0, p0, mOverflingDistance:I

    .line 290
    const/4 v0, 0x1

    iput-boolean v0, p0, mFadingMarqueeEnabled:Z

    .line 291
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, mGlobalActionsKeyTimeout:J

    .line 292
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 306
    .local v7, "res":Landroid/content/res/Resources;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 307
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 308
    .local v1, "config":Landroid/content/res/Configuration;
    iget v3, v6, Landroid/util/DisplayMetrics;->density:F

    .line 310
    .local v3, "density":F
    const/4 v12, 0x4

    invoke-virtual {v1, v12}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    move-result v12

    if-eqz v12, :cond_f1

    .line 311
    const/high16 v12, 0x3fc00000    # 1.5f

    mul-float v9, v3, v12

    .line 316
    .local v9, "sizeAndDensity":F
    :goto_1c
    const/high16 v12, 0x41400000    # 12.0f

    mul-float/2addr v12, v9

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, mEdgeSlop:I

    .line 317
    const/high16 v12, 0x41400000    # 12.0f

    mul-float/2addr v12, v9

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, mFadingEdgeLength:I

    .line 318
    const/high16 v12, 0x41200000    # 10.0f

    mul-float/2addr v12, v3

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, mScrollbarSize:I

    .line 319
    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v12, v9

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, mDoubleTapSlop:I

    .line 320
    const/high16 v12, 0x41800000    # 16.0f

    mul-float/2addr v12, v9

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, mWindowTouchSlop:I

    .line 323
    const-string/jumbo v12, "window"

    invoke-virtual {p1, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    .line 324
    .local v10, "win":Landroid/view/WindowManager;
    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 325
    .local v4, "display":Landroid/view/Display;
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 326
    .local v8, "size":Landroid/graphics/Point;
    invoke-virtual {v4, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 327
    iget v12, v8, Landroid/graphics/Point;->x:I

    mul-int/lit8 v12, v12, 0x4

    iget v13, v8, Landroid/graphics/Point;->y:I

    mul-int/2addr v12, v13

    iput v12, p0, mMaximumDrawingCacheSize:I

    .line 329
    const/4 v12, 0x0

    mul-float/2addr v12, v9

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, mOverscrollDistance:I

    .line 330
    const/high16 v12, 0x40c00000    # 6.0f

    mul-float/2addr v12, v9

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, mOverflingDistance:I

    .line 332
    iget-boolean v12, p0, sHasPermanentMenuKeySet:Z

    if-nez v12, :cond_96

    .line 333
    const v12, 0x10e008b

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 336
    .local v2, "configVal":I
    packed-switch v2, :pswitch_data_10a

    .line 339
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v11

    .line 341
    .local v11, "wm":Landroid/view/IWindowManager;
    :try_start_8a
    invoke-interface {v11}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v12

    if-nez v12, :cond_f4

    const/4 v12, 0x1

    :goto_91
    iput-boolean v12, p0, sHasPermanentMenuKey:Z

    .line 342
    const/4 v12, 0x1

    iput-boolean v12, p0, sHasPermanentMenuKeySet:Z
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_96} :catch_f6

    .line 361
    .end local v2    # "configVal":I
    .end local v11    # "wm":Landroid/view/IWindowManager;
    :cond_96
    :goto_96
    const v12, 0x1120017

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    iput-boolean v12, p0, mFadingMarqueeEnabled:Z

    .line 363
    const-string v12, "0"

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 364
    .local v0, "advancedTouchSlop":I
    if-nez v0, :cond_ae

    const v12, 0x105000f

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .end local v0    # "advancedTouchSlop":I
    :cond_ae
    iput v0, p0, mTouchSlop:I

    .line 366
    iget v12, p0, mTouchSlop:I

    mul-int/lit8 v12, v12, 0x2

    iput v12, p0, mPagingTouchSlop:I

    .line 368
    iget v12, p0, mTouchSlop:I

    iput v12, p0, mDoubleTapTouchSlop:I

    .line 370
    const v12, 0x1050010

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, p0, mMinimumFlingVelocity:I

    .line 372
    const v12, 0x1050011

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iput v12, p0, mMaximumFlingVelocity:I

    .line 374
    const v12, 0x10e0083

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    int-to-long v12, v12

    iput-wide v12, p0, mGlobalActionsKeyTimeout:J

    .line 377
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x11200cb

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    iput-boolean v12, p0, mCheckDisabledHWMenuKey:Z

    .line 378
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x11200cc

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    iput-boolean v12, p0, mCheckEnableFakeMenuKeyByBackLong:Z

    .line 379
    return-void

    .line 313
    .end local v4    # "display":Landroid/view/Display;
    .end local v8    # "size":Landroid/graphics/Point;
    .end local v9    # "sizeAndDensity":F
    .end local v10    # "win":Landroid/view/WindowManager;
    :cond_f1
    move v9, v3

    .restart local v9    # "sizeAndDensity":F
    goto/16 :goto_1c

    .line 341
    .restart local v2    # "configVal":I
    .restart local v4    # "display":Landroid/view/Display;
    .restart local v8    # "size":Landroid/graphics/Point;
    .restart local v10    # "win":Landroid/view/WindowManager;
    .restart local v11    # "wm":Landroid/view/IWindowManager;
    :cond_f4
    const/4 v12, 0x0

    goto :goto_91

    .line 343
    :catch_f6
    move-exception v5

    .line 344
    .local v5, "ex":Landroid/os/RemoteException;
    const/4 v12, 0x0

    iput-boolean v12, p0, sHasPermanentMenuKey:Z

    goto :goto_96

    .line 350
    .end local v5    # "ex":Landroid/os/RemoteException;
    .end local v11    # "wm":Landroid/view/IWindowManager;
    :pswitch_fb
    const/4 v12, 0x1

    iput-boolean v12, p0, sHasPermanentMenuKey:Z

    .line 351
    const/4 v12, 0x1

    iput-boolean v12, p0, sHasPermanentMenuKeySet:Z

    goto :goto_96

    .line 355
    :pswitch_102
    const/4 v12, 0x0

    iput-boolean v12, p0, sHasPermanentMenuKey:Z

    .line 356
    const/4 v12, 0x1

    iput-boolean v12, p0, sHasPermanentMenuKeySet:Z

    goto :goto_96

    .line 336
    nop

    :pswitch_data_10a
    .packed-switch 0x1
        :pswitch_fb
        :pswitch_102
    .end packed-switch
.end method

.method public static get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 389
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 390
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const/high16 v3, 0x42c80000    # 100.0f

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 392
    .local v1, "density":I
    sget-object v3, sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewConfiguration;

    .line 393
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    if-nez v0, :cond_22

    .line 394
    new-instance v0, Landroid/view/ViewConfiguration;

    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    .line 395
    .restart local v0    # "configuration":Landroid/view/ViewConfiguration;
    sget-object v3, sConfigurations:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 398
    :cond_22
    return-object v0
.end method

.method public static getDefaultActionModeHideDuration()J
    .registers 2

    .prologue
    .line 768
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method public static getDoubleTapMinTime()I
    .registers 1

    .prologue
    .line 517
    const/16 v0, 0x28

    return v0
.end method

.method public static getDoubleTapSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 602
    const/16 v0, 0x64

    return v0
.end method

.method public static getDoubleTapTimeout()I
    .registers 1

    .prologue
    .line 506
    const/16 v0, 0x12c

    return v0
.end method

.method public static getEdgeSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 548
    const/16 v0, 0xc

    return v0
.end method

.method public static getFadingEdgeLength()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 441
    const/16 v0, 0xc

    return v0
.end method

.method public static getGlobalActionKeyTimeout()J
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 739
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public static getHoverTapSlop()I
    .registers 1

    .prologue
    .line 537
    const/16 v0, 0x14

    return v0
.end method

.method public static getHoverTapTimeout()I
    .registers 1

    .prologue
    .line 527
    const/16 v0, 0x96

    return v0
.end method

.method public static getJumpTapTimeout()I
    .registers 1

    .prologue
    .line 497
    const/16 v0, 0x1f4

    return v0
.end method

.method public static getKeyRepeatDelay()I
    .registers 1

    .prologue
    .line 479
    const/16 v0, 0x32

    return v0
.end method

.method public static getKeyRepeatTimeout()I
    .registers 1

    .prologue
    .line 472
    invoke-static {}, getLongPressTimeout()I

    move-result v0

    return v0
.end method

.method public static getLongPressTimeout()I
    .registers 2

    .prologue
    .line 464
    const-string v0, "long_press_timeout"

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaximumDrawingCacheSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 690
    const v0, 0x177000

    return v0
.end method

.method public static getMaximumFlingVelocity()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 670
    const/16 v0, 0x1f40

    return v0
.end method

.method public static getMinimumFlingVelocity()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 653
    const/16 v0, 0x32

    return v0
.end method

.method public static getPressedStateDuration()I
    .registers 1

    .prologue
    .line 456
    const/16 v0, 0x40

    return v0
.end method

.method public static getScrollBarFadeDuration()I
    .registers 1

    .prologue
    .line 424
    const/16 v0, 0xfa

    return v0
.end method

.method public static getScrollBarSize()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 409
    const/16 v0, 0xa

    return v0
.end method

.method public static getScrollDefaultDelay()I
    .registers 1

    .prologue
    .line 431
    const/16 v0, 0x12c

    return v0
.end method

.method public static getScrollFriction()F
    .registers 1

    .prologue
    .line 761
    const v0, 0x3c75c28f    # 0.015f

    return v0
.end method

.method public static getSendRecurringAccessibilityEventsInterval()J
    .registers 2

    .prologue
    .line 623
    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public static getTapTimeout()I
    .registers 1

    .prologue
    .line 488
    const/16 v0, 0xb4

    return v0
.end method

.method public static getTouchSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 566
    const/16 v0, 0x8

    return v0
.end method

.method public static getWindowTouchSlop()I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 635
    const/16 v0, 0x10

    return v0
.end method

.method public static getZoomControlsTimeout()J
    .registers 2

    .prologue
    .line 726
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method


# virtual methods
.method public getDeviceGlobalActionKeyTimeout()J
    .registers 3

    .prologue
    .line 751
    iget-wide v0, p0, mGlobalActionsKeyTimeout:J

    return-wide v0
.end method

.method public getScaledDoubleTapSlop()I
    .registers 2

    .prologue
    .line 610
    iget v0, p0, mDoubleTapSlop:I

    return v0
.end method

.method public getScaledDoubleTapTouchSlop()I
    .registers 2

    .prologue
    .line 582
    iget v0, p0, mDoubleTapTouchSlop:I

    return v0
.end method

.method public getScaledEdgeSlop()I
    .registers 2

    .prologue
    .line 556
    iget v0, p0, mEdgeSlop:I

    return v0
.end method

.method public getScaledFadingEdgeLength()I
    .registers 2

    .prologue
    .line 448
    iget v0, p0, mFadingEdgeLength:I

    return v0
.end method

.method public getScaledMaximumDrawingCacheSize()I
    .registers 2

    .prologue
    .line 699
    iget v0, p0, mMaximumDrawingCacheSize:I

    return v0
.end method

.method public getScaledMaximumFlingVelocity()I
    .registers 2

    .prologue
    .line 677
    iget v0, p0, mMaximumFlingVelocity:I

    return v0
.end method

.method public getScaledMinimumFlingVelocity()I
    .registers 2

    .prologue
    .line 660
    iget v0, p0, mMinimumFlingVelocity:I

    return v0
.end method

.method public getScaledOverflingDistance()I
    .registers 2

    .prologue
    .line 715
    iget v0, p0, mOverflingDistance:I

    return v0
.end method

.method public getScaledOverscrollDistance()I
    .registers 2

    .prologue
    .line 707
    iget v0, p0, mOverscrollDistance:I

    return v0
.end method

.method public getScaledPagingTouchSlop()I
    .registers 2

    .prologue
    .line 590
    iget v0, p0, mPagingTouchSlop:I

    return v0
.end method

.method public getScaledScrollBarSize()I
    .registers 2

    .prologue
    .line 417
    iget v0, p0, mScrollbarSize:I

    return v0
.end method

.method public getScaledTouchSlop()I
    .registers 2

    .prologue
    .line 573
    iget v0, p0, mTouchSlop:I

    return v0
.end method

.method public getScaledWindowTouchSlop()I
    .registers 2

    .prologue
    .line 643
    iget v0, p0, mWindowTouchSlop:I

    return v0
.end method

.method public hasFakeMenuKey()Z
    .registers 2

    .prologue
    .line 795
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, hasFakeMenuKey(I)Z

    move-result v0

    return v0
.end method

.method public hasFakeMenuKey(I)Z
    .registers 5
    .param p1, "KeyType"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 802
    iget-boolean v2, p0, mCheckDisabledHWMenuKey:Z

    if-nez v2, :cond_7

    .line 820
    :cond_6
    :goto_6
    return v0

    .line 806
    :cond_7
    if-ne p1, v1, :cond_13

    .line 807
    sget-boolean v2, AMERICANO:Z

    if-nez v2, :cond_11

    sget-boolean v2, MOCHA:Z

    if-eqz v2, :cond_6

    :cond_11
    move v0, v1

    goto :goto_6

    .line 808
    :cond_13
    const/4 v2, 0x2

    if-ne p1, v2, :cond_24

    .line 809
    sget-boolean v2, AMERICANO:Z

    if-nez v2, :cond_6

    sget-boolean v2, MOCHA:Z

    if-nez v2, :cond_6

    .line 811
    iget-boolean v2, p0, mCheckEnableFakeMenuKeyByBackLong:Z

    if-eqz v2, :cond_6

    move v0, v1

    .line 812
    goto :goto_6

    .line 814
    :cond_24
    if-nez p1, :cond_6

    .line 815
    iget-boolean v2, p0, mCheckEnableFakeMenuKeyByBackLong:Z

    if-nez v2, :cond_32

    sget-boolean v2, AMERICANO:Z

    if-nez v2, :cond_32

    sget-boolean v2, MOCHA:Z

    if-eqz v2, :cond_6

    :cond_32
    move v0, v1

    .line 818
    goto :goto_6
.end method

.method public hasPermanentMenuKey()Z
    .registers 2

    .prologue
    .line 784
    iget-boolean v0, p0, mCheckDisabledHWMenuKey:Z

    if-eqz v0, :cond_6

    .line 785
    const/4 v0, 0x0

    .line 787
    :goto_5
    return v0

    :cond_6
    iget-boolean v0, p0, sHasPermanentMenuKey:Z

    goto :goto_5
.end method

.method public isFadingMarqueeEnabled()Z
    .registers 2

    .prologue
    .line 828
    iget-boolean v0, p0, mFadingMarqueeEnabled:Z

    return v0
.end method
