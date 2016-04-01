.class public Lcom/android/server/policy/DisplayWindowPolicy;
.super Ljava/lang/Object;
.source "DisplayWindowPolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DualScreenWindowPolicy"


# instance fields
.field final mClearHideNavigationFlag:Ljava/lang/Runnable;

.field final mDisplayId:I

.field mForceClearedSystemUiFlags:I

.field mForceStatusBar:Z

.field mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

.field mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

.field mKeyguardHidden:Z

.field volatile mKeyguardOccluded:Z

.field mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

.field mLandscapeRotation:I

.field mLastFocusNeedsMenu:Z

.field mLastSystemUiFlags:I

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mPortraitRotation:I

.field mResettingSystemUiFlags:I

.field mSeascapeRotation:I

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mUpsideDownRotation:I

.field mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

.field final mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(ILandroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 45
    iput-object v0, p0, mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 47
    iput-object v0, p0, mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    .line 53
    iput v1, p0, mResettingSystemUiFlags:I

    .line 55
    iput v1, p0, mForceClearedSystemUiFlags:I

    .line 58
    iput-boolean v1, p0, mLastFocusNeedsMenu:Z

    .line 74
    iput-object v0, p0, mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    .line 76
    new-instance v0, Lcom/android/server/policy/DisplayWindowPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DisplayWindowPolicy$1;-><init>(Lcom/android/server/policy/DisplayWindowPolicy;)V

    iput-object v0, p0, mClearHideNavigationFlag:Ljava/lang/Runnable;

    .line 88
    iput v1, p0, mLandscapeRotation:I

    .line 89
    iput v1, p0, mSeascapeRotation:I

    .line 90
    iput v1, p0, mPortraitRotation:I

    .line 91
    iput v1, p0, mUpsideDownRotation:I

    .line 39
    iput p1, p0, mDisplayId:I

    .line 40
    iput-object p2, p0, mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 41
    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 94
    iget-object v0, p0, mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_12

    .line 95
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 98
    :cond_12
    iget-object v0, p0, mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_24

    .line 99
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 102
    :cond_24
    iget-object v0, p0, mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_36

    .line 103
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mKeyguardScrim="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 106
    :cond_36
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastSystemUiFlags="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    iget v0, p0, mLastSystemUiFlags:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 108
    iget-object v0, p0, mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_56

    .line 109
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 112
    :cond_56
    iget-object v0, p0, mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_68

    .line 113
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopFullscreenOpaqueOrDimmingWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 116
    :cond_68
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 117
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 118
    iget-object v0, p0, mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_96

    .line 119
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWinShowWhenLocked="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 122
    :cond_96
    return-void
.end method
