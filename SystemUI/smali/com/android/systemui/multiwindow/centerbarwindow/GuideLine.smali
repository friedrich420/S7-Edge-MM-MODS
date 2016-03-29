.class public Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;
.super Ljava/lang/Object;
.source "GuideLine.java"


# instance fields
.field private final DOCKING_AREA_INVERSE_RATIO:F

.field private final MSG_HIDE:I

.field floatingHeight:I

.field floatingWidth:I

.field headerHeight:I

.field headerWidth:I

.field inDockingArea:Z

.field lpBody:Landroid/widget/FrameLayout$LayoutParams;

.field lpHeader:Landroid/widget/FrameLayout$LayoutParams;

.field private mContext:Landroid/content/Context;

.field mController:Lcom/android/systemui/multiwindow/centerbarwindow/Controller;

.field mDisplayHeight:I

.field mDisplayOrientation:I

.field mDisplayWidth:I

.field mDockingHightlightColor:I

.field mFeatureMultiwindowRecentUI:Z

.field mFloatingMinimumSizeRatio:F

.field mFrontActivityMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field mFullGuideRect:Z

.field mGuideLineDragListener:Landroid/view/View$OnDragListener;

.field mGuideView:Landroid/view/View;

.field mHandler:Landroid/os/Handler;

.field mIPm:Landroid/content/pm/IPackageManager;

.field private mInitCenterBarPoint:Z

.field mIntent:Landroid/content/Intent;

.field mIsFullScreenOnly:Z

.field mIsPenWindowOnly:Z

.field mIsRunningTask:Z

.field mIsTopRunning:Z

.field private mMinimumSizeRatioForSelectiveOrientation:F

.field mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowStyleFromRecentTask:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mOptionFixedSize:Z

.field mRecentPenWindowBody:Landroid/widget/ImageView;

.field mRecentPenWindowHeader:Landroid/widget/ImageView;

.field mRequestScreenOrientation:I

.field mStatusBarHeight:I

.field mTaskId:I

.field mVibrator:Landroid/os/SystemVibrator;

.field mWindowGuideLine:Landroid/view/Window;

.field mWindowManager:Landroid/view/WindowManager;

.field rawX:I

.field rawY:I

.field rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const v0, 0x3d8f5c29    # 0.07f

    iput v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->DOCKING_AREA_INVERSE_RATIO:F

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->MSG_HIDE:I

    .line 59
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mContext:Landroid/content/Context;

    .line 60
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFeatureMultiwindowRecentUI:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFullGuideRect:Z

    .line 66
    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mStatusBarHeight:I

    .line 67
    iput v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mTaskId:I

    .line 68
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mWindowGuideLine:Landroid/view/Window;

    .line 69
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mGuideView:Landroid/view/View;

    .line 70
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowHeader:Landroid/widget/ImageView;

    .line 71
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    .line 72
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mController:Lcom/android/systemui/multiwindow/centerbarwindow/Controller;

    .line 73
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mWindowManager:Landroid/view/WindowManager;

    .line 77
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIntent:Landroid/content/Intent;

    .line 79
    iput v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDockingHightlightColor:I

    .line 84
    iput v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRequestScreenOrientation:I

    .line 85
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mMultiWindowStyleFromRecentTask:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 183
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mOptionFixedSize:Z

    .line 184
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIsFullScreenOnly:Z

    .line 185
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIsPenWindowOnly:Z

    .line 186
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->inDockingArea:Z

    .line 187
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->rect:Landroid/graphics/Rect;

    .line 188
    iput v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingWidth:I

    iput v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingHeight:I

    .line 192
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIsRunningTask:Z

    .line 193
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIsTopRunning:Z

    .line 194
    iput-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFrontActivityMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 195
    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mInitCenterBarPoint:Z

    .line 197
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mGuideLineDragListener:Landroid/view/View$OnDragListener;

    .line 559
    new-instance v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$2;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mHandler:Landroid/os/Handler;

    .line 89
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mContext:Landroid/content/Context;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mInitCenterBarPoint:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mInitCenterBarPoint:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mMultiWindowStyleFromRecentTask:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mMinimumSizeRatioForSelectiveOrientation:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;
    .param p1, "x1"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->isFullScreenOnly(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->isDocking(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->isAvailableSplitFrontActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mOptionFixedSize:Z

    return v0
.end method

.method private isAvailableSplitFrontActivity()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 531
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    invoke-virtual {v2, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 532
    .local v0, "frontActivityMultiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFrontActivityMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 533
    if-eqz v0, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x200000

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x1000

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 537
    const-string v2, "GuideLine"

    const-string v3, "isAvailableSplitFrontActivity - true"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :goto_0
    return v1

    .line 540
    :cond_0
    const-string v1, "GuideLine"

    const-string v2, "isAvailableSplitFrontActivity - false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDocking(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, 0x1

    const v4, 0x3f6e147b    # 0.93f

    const v3, 0x3d8f5c29    # 0.07f

    .line 553
    iget-boolean v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIsTopRunning:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mOptionFixedSize:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayOrientation:I

    if-ne v1, v0, :cond_0

    int-to-float v1, p2

    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    int-to-float v1, p2

    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    int-to-float v1, p1

    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    int-to-float v1, p1

    iget v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFullScreenOnly(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    .locals 1
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 546
    if-eqz p1, :cond_0

    const/high16 v0, 0x1000000

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x800

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 166
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mWindowGuideLine:Landroid/view/Window;

    if-nez v1, :cond_0

    .line 181
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string v1, "GuideLine"

    const-string v2, "hide"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mWindowGuideLine:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 172
    .local v0, "l":Landroid/view/WindowManager$LayoutParams;
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 173
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 174
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 175
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 176
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mWindowGuideLine:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 177
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mWindowGuideLine:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mWindowGuideLine:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mWindowGuideLine:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setWindow(Landroid/view/Window;Lcom/android/systemui/multiwindow/centerbarwindow/Controller;)V
    .locals 3
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "controller"    # Lcom/android/systemui/multiwindow/centerbarwindow/Controller;

    .prologue
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 93
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mWindowGuideLine:Landroid/view/Window;

    .line 94
    iput-object p2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mController:Lcom/android/systemui/multiwindow/centerbarwindow/Controller;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mWindowManager:Landroid/view/WindowManager;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mContext:Landroid/content/Context;

    const-string v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mVibrator:Landroid/os/SystemVibrator;

    .line 98
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mStatusBarHeight:I

    .line 99
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFloatingMinimumSizeRatio:F

    .line 100
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mMinimumSizeRatioForSelectiveOrientation:F

    .line 101
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.multiwindow.recentui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFeatureMultiwindowRecentUI:Z

    .line 103
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mWindowGuideLine:Landroid/view/Window;

    const v1, 0x7f0e01d0

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mGuideView:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mGuideView:Landroid/view/View;

    const v1, 0x7f0e01d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowHeader:Landroid/widget/ImageView;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowHeader:Landroid/widget/ImageView;

    const v1, 0x1080593

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mGuideView:Landroid/view/View;

    const v1, 0x7f0e01d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    const v1, 0x10805d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mGuideView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mGuideLineDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mWindowGuideLine:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106019c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDockingHightlightColor:I

    .line 113
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIPm:Landroid/content/pm/IPackageManager;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportOpenTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDockingHightlightColor:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, -0x67000000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDockingHightlightColor:I

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mWindowGuideLine:Landroid/view/Window;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 122
    return-void
.end method

.method public show(Landroid/content/Intent;IILcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "taskId"    # I
    .param p3, "screenOrientation"    # I
    .param p4, "mwStyle"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 125
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mWindowGuideLine:Landroid/view/Window;

    if-nez v7, :cond_0

    .line 163
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string v7, "GuideLine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "show() / mDisplayOrientation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIntent:Landroid/content/Intent;

    .line 131
    iput p2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mTaskId:I

    .line 132
    iput p3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRequestScreenOrientation:I

    .line 133
    iput-object p4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mMultiWindowStyleFromRecentTask:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 134
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mMultiWindowStyleFromRecentTask:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v7, :cond_3

    .line 135
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mMultiWindowStyleFromRecentTask:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v8, 0x10000

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mOptionFixedSize:Z

    .line 139
    :goto_1
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 140
    .local v2, "displayMetrix":Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 141
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 142
    iget v7, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayWidth:I

    .line 143
    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayHeight:I

    .line 144
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    iput v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayOrientation:I

    .line 145
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mWindowGuideLine:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 146
    .local v3, "l":Landroid/view/WindowManager$LayoutParams;
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 147
    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 148
    iget v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayWidth:I

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 149
    iget v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayHeight:I

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 150
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mWindowGuideLine:Landroid/view/Window;

    invoke-virtual {v7, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 151
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mWindowManager:Landroid/view/WindowManager;

    iget-object v8, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mWindowGuideLine:Landroid/view/Window;

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-interface {v7, v8, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mWindowGuideLine:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v7, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 156
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    const/16 v9, 0x80

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-interface {v7, v8, v9, v10}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 157
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v4

    .line 158
    .local v4, "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    invoke-virtual {v4, v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isPenWindowOnly(Landroid/content/pm/ActivityInfo;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v4, v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    move v5, v6

    :cond_2
    iput-boolean v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIsPenWindowOnly:Z

    .line 159
    const-string v5, "GuideLine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PenWindowOnly : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIsPenWindowOnly:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 160
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "multiWindowAppInfo":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 137
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "displayMetrix":Landroid/util/DisplayMetrics;
    .end local v3    # "l":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    iput-boolean v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mOptionFixedSize:Z

    goto/16 :goto_1
.end method
