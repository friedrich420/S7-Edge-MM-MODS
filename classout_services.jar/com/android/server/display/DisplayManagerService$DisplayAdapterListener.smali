.class final Lcom/android/server/display/DisplayManagerService$DisplayAdapterListener;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/DisplayAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayAdapterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .prologue
    .line 1785
    iput-object p1, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p2, "x1"    # Lcom/android/server/display/DisplayManagerService$1;

    .prologue
    .line 1785
    invoke-direct {p0, p1}, <init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method


# virtual methods
.method public onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V
    .registers 4
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "event"    # I

    .prologue
    .line 1788
    packed-switch p2, :pswitch_data_16

    .line 1801
    :goto_3
    return-void

    .line 1790
    :pswitch_4
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceAdded(Lcom/android/server/display/DisplayDevice;)V
    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$1300(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V

    goto :goto_3

    .line 1794
    :pswitch_a
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceChanged(Lcom/android/server/display/DisplayDevice;)V
    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$1400(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V

    goto :goto_3

    .line 1798
    :pswitch_10
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->handleDisplayDeviceRemoved(Lcom/android/server/display/DisplayDevice;)V
    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$1500(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayDevice;)V

    goto :goto_3

    .line 1788
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_4
        :pswitch_a
        :pswitch_10
    .end packed-switch
.end method

.method public onTraversalRequested()V
    .registers 4

    .prologue
    .line 1805
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1806
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/display/DisplayManagerService;->scheduleTraversalLocked(Z)V
    invoke-static {v0, v2}, Lcom/android/server/display/DisplayManagerService;->access$1600(Lcom/android/server/display/DisplayManagerService;Z)V

    .line 1807
    monitor-exit v1

    .line 1808
    return-void

    .line 1807
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method
