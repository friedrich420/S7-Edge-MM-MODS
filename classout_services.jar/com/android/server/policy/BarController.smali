.class public Lcom/android/server/policy/BarController;
.super Ljava/lang/Object;
.source "BarController.java"


# static fields
.field private static final DEBUG:Z

.field private static final TRANSIENT_BAR_HIDING:I = 0x3

.field private static final TRANSIENT_BAR_NONE:I = 0x0

.field private static final TRANSIENT_BAR_SHOWING:I = 0x2

.field private static final TRANSIENT_BAR_SHOW_REQUESTED:I = 0x1

.field private static final TRANSLUCENT_ANIMATION_DELAY_MS:I = 0x3e8


# instance fields
.field protected final mHandler:Landroid/os/Handler;

.field private mLastTranslucent:J

.field private mLastTranslucents:[J

.field private mNoAnimationOnNextShow:Z

.field private mPendingShow:Z

.field private mPendingShows:[Z

.field private final mServiceAquireLock:Ljava/lang/Object;

.field private mSetUnHideFlagWhenNextTransparent:Z

.field private mShowTransparent:Z

.field private mState:I

.field private mStates:[I

.field private final mStatusBarManagerId:I

.field protected mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected final mTag:Ljava/lang/String;

.field private mTransientBarState:I

.field private mTransientBarStates:[I

.field private final mTransientFlag:I

.field private final mTranslucentFlag:I

.field private final mTranslucentWmFlag:I

.field private final mUnhideFlag:I

.field private mWin:Landroid/view/WindowManagerPolicy$WindowState;

.field private mWins:[Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII)V
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "transientFlag"    # I
    .param p3, "unhideFlag"    # I
    .param p4, "translucentFlag"    # I
    .param p5, "statusBarManagerId"    # I
    .param p6, "translucentWmFlag"    # I

    .prologue
    const/4 v1, 0x4

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mServiceAquireLock:Ljava/lang/Object;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, mState:I

    .line 73
    new-array v0, v1, [Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v0, p0, mWins:[Landroid/view/WindowManagerPolicy$WindowState;

    .line 74
    new-array v0, v1, [I

    iput-object v0, p0, mStates:[I

    .line 75
    new-array v0, v1, [I

    iput-object v0, p0, mTransientBarStates:[I

    .line 76
    new-array v0, v1, [Z

    iput-object v0, p0, mPendingShows:[Z

    .line 77
    new-array v0, v1, [J

    iput-object v0, p0, mLastTranslucents:[J

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarController."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mTag:Ljava/lang/String;

    .line 83
    iput p2, p0, mTransientFlag:I

    .line 84
    iput p3, p0, mUnhideFlag:I

    .line 85
    iput p4, p0, mTranslucentFlag:I

    .line 86
    iput p5, p0, mStatusBarManagerId:I

    .line 87
    iput p6, p0, mTranslucentWmFlag:I

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/BarController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/BarController;

    .prologue
    .line 43
    iget v0, p0, mStatusBarManagerId:I

    return v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 43
    sget-boolean v0, DEBUG:Z

    return v0
.end method

.method private computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;Z)I
    .registers 11
    .param p1, "wasVis"    # Z
    .param p2, "wasAnim"    # Z
    .param p3, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p4, "change"    # Z

    .prologue
    .line 383
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;ZI)I

    move-result v0

    return v0
.end method

.method private computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;ZI)I
    .registers 13
    .param p1, "wasVis"    # Z
    .param p2, "wasAnim"    # Z
    .param p3, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p4, "change"    # Z
    .param p5, "displayId"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 390
    iget v1, p0, mState:I

    .line 393
    .local v1, "mState":I
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 394
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    .line 395
    .local v2, "vis":Z
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    .line 396
    .local v0, "anim":Z
    if-ne v1, v5, :cond_1b

    if-nez p4, :cond_1b

    if-nez v2, :cond_1b

    move v1, v3

    .line 408
    .end local v0    # "anim":Z
    .end local v1    # "mState":I
    .end local v2    # "vis":Z
    :cond_1a
    :goto_1a
    return v1

    .line 398
    .restart local v0    # "anim":Z
    .restart local v1    # "mState":I
    .restart local v2    # "vis":Z
    :cond_1b
    if-ne v1, v3, :cond_21

    if-eqz v2, :cond_21

    move v1, v4

    .line 399
    goto :goto_1a

    .line 400
    :cond_21
    if-eqz p4, :cond_1a

    .line 401
    if-eqz p1, :cond_2d

    if-eqz v2, :cond_2d

    if-nez p2, :cond_2d

    if-eqz v0, :cond_2d

    move v1, v5

    .line 402
    goto :goto_1a

    :cond_2d
    move v1, v4

    .line 404
    goto :goto_1a
.end method

.method private setTransientBarState(II)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "displayId"    # I

    .prologue
    const/4 v2, 0x2

    .line 605
    iget-object v1, p0, mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 606
    .local v1, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    iget v0, p0, mTransientBarState:I

    .line 610
    .local v0, "mTransientBarState":I
    if-eqz v1, :cond_40

    if-eq p1, v0, :cond_40

    .line 611
    if-eq v0, v2, :cond_d

    if-ne p1, v2, :cond_13

    .line 617
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, mLastTranslucent:J

    .line 628
    :cond_13
    iput p1, p0, mTransientBarState:I

    .line 631
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_40

    iget-object v2, p0, mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "displayId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mTransientBarState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, transientBarStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_40
    return-void
.end method

.method private static transientBarStateToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "state"    # I

    .prologue
    .line 646
    const/4 v0, 0x3

    if-ne p0, v0, :cond_6

    const-string v0, "TRANSIENT_BAR_HIDING"

    .line 649
    :goto_5
    return-object v0

    .line 647
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    const-string v0, "TRANSIENT_BAR_SHOWING"

    goto :goto_5

    .line 648
    :cond_c
    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    const-string v0, "TRANSIENT_BAR_SHOW_REQUESTED"

    goto :goto_5

    .line 649
    :cond_12
    if-nez p0, :cond_17

    const-string v0, "TRANSIENT_BAR_NONE"

    goto :goto_5

    .line 650
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateStateLw(I)Z
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 413
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, updateStateLw(II)Z

    move-result v0

    return v0
.end method

.method private updateStateLw(II)Z
    .registers 7
    .param p1, "state"    # I
    .param p2, "displayId"    # I

    .prologue
    .line 420
    iget v0, p0, mState:I

    .line 424
    .local v0, "mState":I
    if-eq p1, v0, :cond_3d

    .line 430
    iput p1, p0, mState:I

    .line 434
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_31

    iget-object v1, p0, mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "displayId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_31
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/BarController$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/policy/BarController$1;-><init>(Lcom/android/server/policy/BarController;II)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 457
    const/4 v1, 0x1

    .line 459
    :goto_3c
    return v1

    :cond_3d
    const/4 v1, 0x0

    goto :goto_3c
.end method


# virtual methods
.method public adjustSystemUiVisibilityLw(II)V
    .registers 4
    .param p1, "oldVis"    # I
    .param p2, "vis"    # I

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, adjustSystemUiVisibilityLw(III)V

    .line 240
    return-void
.end method

.method public adjustSystemUiVisibilityLw(III)V
    .registers 8
    .param p1, "oldVis"    # I
    .param p2, "vis"    # I
    .param p3, "displayId"    # I

    .prologue
    const/4 v3, 0x1

    .line 248
    iget-object v1, p0, mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 249
    .local v1, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    iget v0, p0, mTransientBarState:I

    .line 253
    .local v0, "mTransientBarState":I
    if-eqz v1, :cond_1e

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1e

    iget v2, p0, mTransientFlag:I

    and-int/2addr v2, p2

    if-nez v2, :cond_1e

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 256
    const/4 v2, 0x3

    invoke-direct {p0, v2, p3}, setTransientBarState(II)V

    .line 257
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3, p3}, setBarShowingLw(ZZI)Z

    .line 262
    :cond_1d
    :goto_1d
    return-void

    .line 258
    :cond_1e
    if-eqz v1, :cond_1d

    iget v2, p0, mUnhideFlag:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_1d

    iget v2, p0, mUnhideFlag:I

    and-int/2addr v2, p2

    if-nez v2, :cond_1d

    .line 260
    invoke-virtual {p0, v3, v3, p3}, setBarShowingLw(ZZI)Z

    goto :goto_1d
.end method

.method public applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .registers 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "vis"    # I
    .param p3, "oldVis"    # I

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;III)I

    move-result v0

    return v0
.end method

.method public applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;III)I
    .registers 11
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "vis"    # I
    .param p3, "oldVis"    # I
    .param p4, "displayId"    # I

    .prologue
    const v5, 0x8000

    const v4, -0x8001

    .line 273
    iget-object v1, p0, mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 277
    .local v1, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v1, :cond_31

    .line 278
    if-eqz p1, :cond_3a

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_3a

    .line 280
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 281
    .local v0, "fl":I
    iget v2, p0, mTranslucentWmFlag:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_32

    .line 282
    iget v2, p0, mTranslucentFlag:I

    or-int/2addr p2, v2

    .line 286
    :goto_23
    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    if-nez v2, :cond_30

    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_30

    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_38

    .line 291
    :cond_30
    or-int/2addr p2, v5

    .line 300
    .end local v0    # "fl":I
    :cond_31
    :goto_31
    return p2

    .line 284
    .restart local v0    # "fl":I
    :cond_32
    iget v2, p0, mTranslucentFlag:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr p2, v2

    goto :goto_23

    .line 293
    :cond_38
    and-int/2addr p2, v4

    goto :goto_31

    .line 296
    .end local v0    # "fl":I
    :cond_3a
    iget v2, p0, mTranslucentFlag:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p2

    iget v3, p0, mTranslucentFlag:I

    and-int/2addr v3, p3

    or-int p2, v2, v3

    .line 297
    and-int v2, p2, v4

    and-int v3, p3, v5

    or-int p2, v2, v3

    goto :goto_31
.end method

.method public checkHiddenLw()Z
    .registers 2

    .prologue
    .line 464
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, checkHiddenLw(I)Z

    move-result v0

    return v0
.end method

.method public checkHiddenLw(I)Z
    .registers 8
    .param p1, "displayId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 475
    iget-object v2, p0, mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 476
    .local v2, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    iget v1, p0, mTransientBarState:I

    .line 477
    .local v1, "mTransientBarState":I
    iget-boolean v0, p0, mPendingShow:Z

    .line 480
    .local v0, "mPendingShow":Z
    if-eqz v2, :cond_34

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 481
    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-nez v5, :cond_20

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v5

    if-nez v5, :cond_20

    .line 482
    const/4 v5, 0x2

    invoke-direct {p0, v5, p1}, updateStateLw(II)Z

    .line 484
    :cond_20
    const/4 v5, 0x3

    if-ne v1, v5, :cond_34

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-nez v5, :cond_34

    .line 486
    invoke-direct {p0, v4, p1}, setTransientBarState(II)V

    .line 487
    if-eqz v0, :cond_33

    .line 488
    invoke-virtual {p0, v3, v3, p1}, setBarShowingLw(ZZI)Z

    .line 494
    iput-boolean v4, p0, mPendingShow:Z

    .line 501
    :cond_33
    :goto_33
    return v3

    :cond_34
    move v3, v4

    goto :goto_33
.end method

.method public checkShowTransientBarLw()Z
    .registers 2

    .prologue
    .line 506
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, checkShowTransientBarLw(I)Z

    move-result v0

    return v0
.end method

.method public checkShowTransientBarLw(I)Z
    .registers 7
    .param p1, "displayId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 515
    iget-object v1, p0, mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 516
    .local v1, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    iget v0, p0, mTransientBarState:I

    .line 520
    .local v0, "mTransientBarState":I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_15

    .line 521
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_14

    iget-object v3, p0, mTag:Ljava/lang/String;

    const-string v4, "Not showing transient bar, already shown"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_14
    :goto_14
    return v2

    .line 523
    :cond_15
    if-ne v0, v3, :cond_23

    .line 524
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_14

    iget-object v3, p0, mTag:Ljava/lang/String;

    const-string v4, "Not showing transient bar, already requested"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 526
    :cond_23
    if-nez v1, :cond_31

    .line 527
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_14

    iget-object v3, p0, mTag:Ljava/lang/String;

    const-string v4, "Not showing transient bar, bar doesn\'t exist"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 529
    :cond_31
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 530
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_14

    iget-object v3, p0, mTag:Ljava/lang/String;

    const-string v4, "Not showing transient bar, bar already visible"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_43
    move v2, v3

    .line 533
    goto :goto_14
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3d

    .line 668
    iget-object v0, p0, mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_42

    .line 669
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mState"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 671
    iget v0, p0, mState:I

    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTransientBar"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 673
    iget v0, p0, mTransientBarState:I

    invoke-static {v0}, transientBarStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 678
    :cond_42
    return-void
.end method

.method protected getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    .prologue
    .line 636
    iget-object v1, p0, mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 637
    :try_start_3
    iget-object v0, p0, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_14

    .line 638
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 641
    :cond_14
    iget-object v0, p0, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 642
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public hideTransient()V
    .registers 2

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, hideTransient(I)V

    .line 144
    return-void
.end method

.method public hideTransient(I)V
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 150
    iget-object v0, p0, mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 154
    .local v0, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, setTransientBarState(II)V

    .line 155
    return-void
.end method

.method public isTransientHiding()Z
    .registers 2

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, isTransientHiding(I)Z

    move-result v0

    return v0
.end method

.method public isTransientHiding(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 215
    iget v0, p0, mTransientBarState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isTransientShowRequested()Z
    .registers 2

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, isTransientShowRequested(I)Z

    move-result v0

    return v0
.end method

.method public isTransientShowRequested(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    const/4 v0, 0x1

    .line 199
    iget v1, p0, mTransientBarState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isTransientShowing()Z
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, isTransientShowing(I)Z

    move-result v0

    return v0
.end method

.method public isTransientShowing(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 184
    iget v0, p0, mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public resetTransient()V
    .registers 2

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, resetTransient(I)V

    .line 161
    return-void
.end method

.method public resetTransient(I)V
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 167
    iget-object v0, p0, mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 171
    .local v0, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, setTransientBarState(II)V

    .line 172
    return-void
.end method

.method public setBarShowingLw(Z)Z
    .registers 4
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x0

    .line 305
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1, v1}, setBarShowingLw(ZZIZ)Z

    move-result v0

    return v0
.end method

.method public setBarShowingLw(ZZ)Z
    .registers 4
    .param p1, "show"    # Z
    .param p2, "hideAnimation"    # Z

    .prologue
    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0, p1, p2, v0, v0}, setBarShowingLw(ZZIZ)Z

    move-result v0

    return v0
.end method

.method public setBarShowingLw(ZZI)Z
    .registers 5
    .param p1, "show"    # Z
    .param p2, "hideAnimation"    # Z
    .param p3, "displayId"    # I

    .prologue
    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, setBarShowingLw(ZZIZ)Z

    move-result v0

    return v0
.end method

.method public setBarShowingLw(ZZIZ)Z
    .registers 16
    .param p1, "show"    # Z
    .param p2, "hideAnimation"    # Z
    .param p3, "displayId"    # I
    .param p4, "collapse"    # Z

    .prologue
    .line 325
    iget-object v3, p0, mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 326
    .local v3, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    iget v7, p0, mTransientBarState:I

    .line 330
    .local v7, "mTransientBarState":I
    if-nez v3, :cond_8

    const/4 v0, 0x0

    .line 378
    :goto_7
    return v0

    .line 338
    :cond_8
    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d0

    if-ne v0, v5, :cond_42

    .line 339
    if-nez p1, :cond_42

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_42

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_42

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_42

    .line 342
    if-eqz p4, :cond_3b

    .line 344
    :try_start_32
    invoke-virtual {p0}, getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v10

    .line 345
    .local v10, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v10, :cond_3b

    .line 346
    invoke-interface {v10}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3b} :catch_3d

    .line 352
    .end local v10    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    goto :goto_7

    .line 348
    :catch_3d
    move-exception v6

    .line 349
    .local v6, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    iput-object v0, p0, mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_3b

    .line 358
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_42
    if-eqz p1, :cond_4c

    const/4 v0, 0x3

    if-ne v7, v0, :cond_4c

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, mPendingShow:Z

    .line 368
    const/4 v0, 0x0

    goto :goto_7

    .line 370
    :cond_4c
    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    .line 371
    .local v1, "wasVis":Z
    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    .line 372
    .local v2, "wasAnim":Z
    if-eqz p1, :cond_74

    iget-boolean v0, p0, mNoAnimationOnNextShow:Z

    if-nez v0, :cond_72

    const/4 v0, 0x1

    :goto_5b
    invoke-interface {v3, v0}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v4

    .line 375
    .local v4, "change":Z
    :goto_5f
    const/4 v0, 0x0

    iput-boolean v0, p0, mNoAnimationOnNextShow:Z

    move-object v0, p0

    move v5, p3

    .line 376
    invoke-direct/range {v0 .. v5}, computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;ZI)I

    move-result v8

    .line 377
    .local v8, "state":I
    invoke-direct {p0, v8, p3}, updateStateLw(II)Z

    move-result v9

    .line 378
    .local v9, "stateChanged":Z
    if-nez v4, :cond_70

    if-eqz v9, :cond_79

    :cond_70
    const/4 v0, 0x1

    goto :goto_7

    .line 372
    .end local v4    # "change":Z
    .end local v8    # "state":I
    .end local v9    # "stateChanged":Z
    :cond_72
    const/4 v0, 0x0

    goto :goto_5b

    :cond_74
    invoke-interface {v3, p2}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v4

    goto :goto_5f

    .line 378
    .restart local v4    # "change":Z
    .restart local v8    # "state":I
    .restart local v9    # "stateChanged":Z
    :cond_79
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setShowTransparent(Z)V
    .registers 3
    .param p1, "transparent"    # Z

    .prologue
    .line 115
    iget-boolean v0, p0, mShowTransparent:Z

    if-eq p1, v0, :cond_b

    .line 116
    iput-boolean p1, p0, mShowTransparent:Z

    .line 117
    iput-boolean p1, p0, mSetUnHideFlagWhenNextTransparent:Z

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, mNoAnimationOnNextShow:Z

    .line 120
    :cond_b
    return-void
.end method

.method public setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, setWindow(Landroid/view/WindowManagerPolicy$WindowState;I)V

    .line 101
    return-void
.end method

.method public setWindow(Landroid/view/WindowManagerPolicy$WindowState;I)V
    .registers 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "displayId"    # I

    .prologue
    .line 108
    iput-object p1, p0, mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 112
    return-void
.end method

.method public showTransient()V
    .registers 2

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, showTransient(I)V

    .line 125
    return-void
.end method

.method public showTransient(I)V
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 132
    iget-object v0, p0, mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 136
    .local v0, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    if-eqz v0, :cond_8

    .line 137
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, setTransientBarState(II)V

    .line 139
    :cond_8
    return-void
.end method

.method public updateVisibilityLw(ZII)I
    .registers 5
    .param p1, "transientAllowed"    # Z
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .prologue
    .line 539
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, updateVisibilityLw(ZIII)I

    move-result v0

    return v0
.end method

.method public updateVisibilityLw(ZIII)I
    .registers 11
    .param p1, "transientAllowed"    # Z
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I
    .param p4, "displayId"    # I

    .prologue
    const/4 v4, 0x0

    .line 548
    iget-object v1, p0, mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 549
    .local v1, "mWin":Landroid/view/WindowManagerPolicy$WindowState;
    iget v0, p0, mTransientBarState:I

    .line 553
    .local v0, "mTransientBarState":I
    if-nez v1, :cond_9

    move v2, p3

    .line 593
    .end local p3    # "vis":I
    .local v2, "vis":I
    :goto_8
    return v2

    .line 554
    .end local v2    # "vis":I
    .restart local p3    # "vis":I
    :cond_9
    invoke-virtual {p0, p4}, isTransientShowing(I)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {p0, p4}, isTransientShowRequested(I)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 556
    :cond_15
    if-eqz p1, :cond_56

    .line 557
    iget v3, p0, mTransientFlag:I

    or-int/2addr p3, v3

    .line 558
    iget v3, p0, mTransientFlag:I

    and-int/2addr v3, p2

    if-nez v3, :cond_22

    .line 559
    iget v3, p0, mUnhideFlag:I

    or-int/2addr p3, v3

    .line 561
    :cond_22
    const/4 v3, 0x2

    invoke-direct {p0, v3, p4}, setTransientBarState(II)V

    .line 570
    :cond_26
    :goto_26
    iget-boolean v3, p0, mShowTransparent:Z

    if-eqz v3, :cond_37

    .line 571
    const v3, 0x8000

    or-int/2addr p3, v3

    .line 572
    iget-boolean v3, p0, mSetUnHideFlagWhenNextTransparent:Z

    if-eqz v3, :cond_37

    .line 573
    iget v3, p0, mUnhideFlag:I

    or-int/2addr p3, v3

    .line 574
    iput-boolean v4, p0, mSetUnHideFlagWhenNextTransparent:Z

    .line 577
    :cond_37
    if-eqz v0, :cond_3e

    .line 578
    iget v3, p0, mTransientFlag:I

    or-int/2addr p3, v3

    .line 579
    and-int/lit8 p3, p3, -0x2

    .line 581
    :cond_3e
    iget v3, p0, mTranslucentFlag:I

    and-int/2addr v3, p3

    if-nez v3, :cond_4e

    iget v3, p0, mTranslucentFlag:I

    and-int/2addr v3, p2

    if-nez v3, :cond_4e

    or-int v3, p3, p2

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_54

    .line 588
    :cond_4e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, mLastTranslucent:J

    :cond_54
    move v2, p3

    .line 593
    .end local p3    # "vis":I
    .restart local v2    # "vis":I
    goto :goto_8

    .line 563
    .end local v2    # "vis":I
    .restart local p3    # "vis":I
    :cond_56
    invoke-direct {p0, v4, p4}, setTransientBarState(II)V

    goto :goto_26

    .line 566
    :cond_5a
    if-nez p1, :cond_26

    invoke-virtual {p0, p4}, isTransientHiding(I)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 567
    invoke-direct {p0, v4, p4}, setTransientBarState(II)V

    goto :goto_26
.end method

.method public wasRecentlyTranslucent()Z
    .registers 2

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, wasRecentlyTranslucent(I)Z

    move-result v0

    return v0
.end method

.method public wasRecentlyTranslucent(I)Z
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    .line 231
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, mLastTranslucent:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
