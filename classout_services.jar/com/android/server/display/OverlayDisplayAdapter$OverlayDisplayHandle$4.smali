.class Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle$4;
.super Ljava/lang/Object;
.source "OverlayDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;


# direct methods
.method constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V
    .registers 2

    .prologue
    .line 486
    iput-object p1, p0, this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 491
    iget-object v2, p0, this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v2, v2, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/OverlayDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v3

    monitor-enter v3

    .line 492
    :try_start_9
    iget-object v2, p0, this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;
    invoke-static {v2}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->access$800(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Lcom/android/server/display/OverlayDisplayWindow;

    move-result-object v2

    if-nez v2, :cond_13

    .line 493
    monitor-exit v3

    .line 499
    :goto_12
    return-void

    .line 495
    :cond_13
    iget-object v2, p0, this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mModes:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->access$400(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I
    invoke-static {v4}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->access$300(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    .line 496
    .local v0, "mode":Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    iget-object v2, p0, this$1:Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    # getter for: Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;
    invoke-static {v2}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->access$800(Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)Lcom/android/server/display/OverlayDisplayWindow;

    move-result-object v1

    .line 497
    .local v1, "window":Lcom/android/server/display/OverlayDisplayWindow;
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_36

    .line 498
    iget v2, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mWidth:I

    iget v3, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mHeight:I

    iget v4, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/display/OverlayDisplayWindow;->resize(III)V

    goto :goto_12

    .line 497
    .end local v0    # "mode":Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;
    .end local v1    # "window":Lcom/android/server/display/OverlayDisplayWindow;
    :catchall_36
    move-exception v2

    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v2
.end method
