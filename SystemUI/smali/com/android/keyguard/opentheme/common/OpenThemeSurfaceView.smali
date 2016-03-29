.class public abstract Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;
.super Landroid/view/SurfaceView;
.source "OpenThemeSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/keyguard/opentheme/common/LockscreenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDrawThread:Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

.field protected mHolder:Landroid/view/SurfaceHolder;

.field private mIsCreated:Z

.field private mIsScreenOn:Z

.field private mMinInterval:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mMinInterval:I

    .line 16
    const-string v0, "OpenThemeSurfaceView"

    iput-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    .line 20
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    .line 21
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private startDraw()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    if-nez v0, :cond_3

    .line 76
    new-instance v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    iget-object v1, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;-><init>(Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    .line 77
    iget-boolean v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mIsScreenOn:Z

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    .line 79
    :cond_0
    iget v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mMinInterval:I

    if-lez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    iget v1, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mMinInterval:I

    iput v1, v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->start()V

    .line 82
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string v1, "startThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_2
    :goto_0
    return-void

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->resumeThread()V

    .line 85
    iget-boolean v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mIsScreenOn:Z

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->suspendThread()V

    goto :goto_0
.end method

.method private stopDraw()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->isRunning:Z

    .line 93
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->interrupt()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string v1, "stopThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract drawFrame(Landroid/graphics/Canvas;)V
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 48
    invoke-direct {p0}, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->stopDraw()V

    .line 49
    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mIsScreenOn:Z

    .line 34
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string v1, "suspendThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->suspendThread()V

    .line 38
    :cond_0
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mIsScreenOn:Z

    .line 26
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mIsCreated:Z

    if-ne v0, v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string v1, "resumeThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->resumeThread()V

    .line 30
    :cond_0
    return-void
.end method

.method public setMinInterval(I)V
    .locals 0
    .param p1, "interval"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mMinInterval:I

    .line 42
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 55
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mIsCreated:Z

    .line 61
    invoke-direct {p0}, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->startDraw()V

    .line 62
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mIsCreated:Z

    .line 68
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string v1, "suspendThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->suspendThread()V

    .line 72
    :cond_0
    return-void
.end method
