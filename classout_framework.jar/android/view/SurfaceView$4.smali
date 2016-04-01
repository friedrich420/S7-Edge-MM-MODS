.class Landroid/view/SurfaceView$4;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SurfaceHolder"


# instance fields
.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/view/SurfaceView;)V
    .registers 2

    .prologue
    .line 849
    iput-object p1, p0, this$0:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 12
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 965
    iget-object v6, p0, this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 970
    const/4 v0, 0x0

    .line 971
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v6, p0, this$0:Landroid/view/SurfaceView;

    iget-boolean v6, v6, Landroid/view/SurfaceView;->mDrawingStopped:Z

    if-nez v6, :cond_1c

    iget-object v6, p0, this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v6, :cond_1c

    .line 973
    :try_start_14
    iget-object v6, p0, this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6, p1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1b} :catch_27

    move-result-object v0

    .line 980
    :cond_1c
    :goto_1c
    if-eqz v0, :cond_30

    .line 981
    iget-object v6, p0, this$0:Landroid/view/SurfaceView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v6, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 1000
    .end local v0    # "c":Landroid/graphics/Canvas;
    :goto_26
    return-object v0

    .line 974
    .restart local v0    # "c":Landroid/graphics/Canvas;
    :catch_27
    move-exception v1

    .line 975
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "SurfaceHolder"

    const-string v7, "Exception locking surface"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    .line 988
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 989
    .local v4, "now":J
    iget-object v6, p0, this$0:Landroid/view/SurfaceView;

    iget-wide v6, v6, Landroid/view/SurfaceView;->mLastLockTime:J

    const-wide/16 v8, 0x64

    add-long v2, v6, v8

    .line 990
    .local v2, "nextTime":J
    cmp-long v6, v2, v4

    if-lez v6, :cond_49

    .line 992
    sub-long v6, v2, v4

    :try_start_42
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_45} :catch_56

    .line 995
    :goto_45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 997
    :cond_49
    iget-object v6, p0, this$0:Landroid/view/SurfaceView;

    iput-wide v4, v6, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 998
    iget-object v6, p0, this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1000
    const/4 v0, 0x0

    goto :goto_26

    .line 993
    :catch_56
    move-exception v6

    goto :goto_45
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback;

    .prologue
    .line 860
    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    iget-object v1, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 863
    :try_start_5
    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 864
    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    :cond_16
    monitor-exit v1

    .line 867
    return-void

    .line 866
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    .prologue
    .line 1017
    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 1022
    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isCreating()Z
    .registers 2

    .prologue
    .line 855
    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .registers 2

    .prologue
    .line 941
    const/4 v0, 0x0

    invoke-direct {p0, v0}, internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 3
    .param p1, "inOutDirty"    # Landroid/graphics/Rect;

    .prologue
    .line 961
    invoke-direct {p0, p1}, internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback;

    .prologue
    .line 871
    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    iget-object v1, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 872
    :try_start_5
    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 873
    monitor-exit v1

    .line 874
    return-void

    .line 873
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public setFixedSize(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 878
    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, p1, :cond_c

    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, p2, :cond_19

    .line 879
    :cond_c
    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 880
    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    iput p2, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 881
    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 883
    :cond_19
    return-void
.end method

.method public setFormat(I)V
    .registers 6
    .param p1, "format"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 898
    if-ne p1, v2, :cond_5

    .line 899
    const/4 p1, 0x4

    .line 901
    :cond_5
    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 905
    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    # getter for: Landroid/view/SurfaceView;->mIsDcsEnabledApp:Z
    invoke-static {v0}, Landroid/view/SurfaceView;->access$000(Landroid/view/SurfaceView;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mFormat:I

    if-eq v0, v2, :cond_20

    .line 906
    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    iget-object v1, p0, this$0:Landroid/view/SurfaceView;

    iget v1, v1, Landroid/view/SurfaceView;->mFormat:I

    iput v1, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 911
    :cond_20
    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v0, :cond_2b

    .line 912
    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3, v3}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 914
    :cond_2b
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .registers 5
    .param p1, "screenOn"    # Z

    .prologue
    const/4 v1, 0x1

    .line 925
    iget-object v2, p0, this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 926
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_15

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 927
    iget-object v1, p0, this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 928
    return-void

    .line 926
    :cond_15
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public setSizeFromLayout()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 887
    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, v2, :cond_d

    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v2, :cond_1a

    .line 888
    :cond_d
    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    iget-object v1, p0, this$0:Landroid/view/SurfaceView;

    iput v2, v1, Landroid/view/SurfaceView;->mRequestedHeight:I

    iput v2, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 889
    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 891
    :cond_1a
    return-void
.end method

.method public setType(I)V
    .registers 2
    .param p1, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 921
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1011
    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1012
    iget-object v0, p0, this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1013
    return-void
.end method
