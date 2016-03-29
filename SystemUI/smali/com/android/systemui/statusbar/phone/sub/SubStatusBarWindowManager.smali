.class public Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;
.super Ljava/lang/Object;
.source "SubStatusBarWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$1;,
        Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;
    }
.end annotation


# instance fields
.field private mBarHeight:I

.field private final mContext:Landroid/content/Context;

.field private final mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

.field private final mKeyguardScreenRotation:Z

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mSubStatusBarWindowView:Landroid/view/View;

.field private mWindowManagerImpl:Landroid/view/WindowManagerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;-><init>(Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mCurrentState:Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager$State;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->shouldEnableKeyguardScreenRotation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mKeyguardScreenRotation:Z

    .line 63
    return-void
.end method

.method private shouldEnableKeyguardScreenRotation()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    .local v0, "res":Landroid/content/res/Resources;
    const-string v2, "lockscreen.rot_override"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const v2, 0x7f0b0002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public add(Landroid/view/View;I)V
    .locals 7
    .param p1, "statusBarView"    # Landroid/view/View;
    .param p2, "barHeight"    # I

    .prologue
    .line 82
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, -0x7f7bffb8

    const/4 v5, -0x3

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "SubStatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 98
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    .line 99
    iput p2, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mBarHeight:I

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerImpl;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    .line 104
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v6

    .line 105
    .local v6, "display":Landroid/view/Display;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0, v6}, Landroid/view/WindowManagerImpl;->createPresentationWindowManager(Landroid/view/Display;)Landroid/view/WindowManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mWindowManagerImpl:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mSubStatusBarWindowView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/sub/SubStatusBarWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    return-void
.end method
