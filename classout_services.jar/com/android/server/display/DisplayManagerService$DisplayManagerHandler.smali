.class final Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;
.super Landroid/os/Handler;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1744
    iput-object p1, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    .line 1745
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1746
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1750
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_82

    .line 1782
    :goto_5
    return-void

    .line 1752
    :pswitch_6
    iget-object v4, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->registerDefaultDisplayAdapter()V
    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->access$300(Lcom/android/server/display/DisplayManagerService;)V

    goto :goto_5

    .line 1756
    :pswitch_c
    iget-object v4, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->registerAdditionalDisplayAdapters()V
    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->access$400(Lcom/android/server/display/DisplayManagerService;)V

    goto :goto_5

    .line 1760
    :pswitch_12
    iget-object v4, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/display/DisplayManagerService;->deliverDisplayEvent(II)V
    invoke-static {v4, v5, v6}, Lcom/android/server/display/DisplayManagerService;->access$500(Lcom/android/server/display/DisplayManagerService;II)V

    goto :goto_5

    .line 1764
    :pswitch_1c
    iget-object v4, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;
    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->access$600(Lcom/android/server/display/DisplayManagerService;)Landroid/view/WindowManagerInternal;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManagerInternal;->requestTraversalFromDisplayManager()V

    goto :goto_5

    .line 1768
    :pswitch_26
    iget-object v4, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v5

    monitor-enter v5

    .line 1769
    :try_start_2d
    iget-object v4, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDefaultViewports:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->access$800(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1770
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    if-ge v2, v0, :cond_58

    .line 1771
    iget-object v4, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDefaultViewports:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->access$800(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayViewport;

    .line 1772
    .local v1, "defaultViewport":Landroid/hardware/display/DisplayViewport;
    iget-object v4, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempDefaultViewports:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->access$900(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayViewport;

    .line 1773
    .local v3, "tempDefaultViewport":Landroid/hardware/display/DisplayViewport;
    invoke-virtual {v3, v1}, Landroid/hardware/display/DisplayViewport;->copyFrom(Landroid/hardware/display/DisplayViewport;)V

    .line 1770
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 1775
    .end local v1    # "defaultViewport":Landroid/hardware/display/DisplayViewport;
    .end local v3    # "tempDefaultViewport":Landroid/hardware/display/DisplayViewport;
    :cond_58
    iget-object v4, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempExternalTouchViewport:Landroid/hardware/display/DisplayViewport;
    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->access$1100(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    move-result-object v4

    iget-object v6, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mExternalTouchViewport:Landroid/hardware/display/DisplayViewport;
    invoke-static {v6}, Lcom/android/server/display/DisplayManagerService;->access$1000(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/hardware/display/DisplayViewport;->copyFrom(Landroid/hardware/display/DisplayViewport;)V

    .line 1776
    monitor-exit v5
    :try_end_68
    .catchall {:try_start_2d .. :try_end_68} :catchall_7e

    .line 1777
    iget-object v4, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;
    invoke-static {v4}, Lcom/android/server/display/DisplayManagerService;->access$1200(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/input/InputManagerInternal;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempDefaultViewports:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/display/DisplayManagerService;->access$900(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mTempExternalTouchViewport:Landroid/hardware/display/DisplayViewport;
    invoke-static {v6}, Lcom/android/server/display/DisplayManagerService;->access$1100(Lcom/android/server/display/DisplayManagerService;)Landroid/hardware/display/DisplayViewport;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/input/InputManagerInternal;->setDisplayViewports(Ljava/util/ArrayList;Landroid/hardware/display/DisplayViewport;)V

    goto :goto_5

    .line 1776
    .end local v0    # "count":I
    .end local v2    # "i":I
    :catchall_7e
    move-exception v4

    :try_start_7f
    monitor-exit v5
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v4

    .line 1750
    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_1c
        :pswitch_26
    .end packed-switch
.end method
