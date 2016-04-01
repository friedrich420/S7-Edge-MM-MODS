.class Lcom/android/server/VRManagerService$DeviceEventHandler;
.super Landroid/os/Handler;
.source "VRManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VRManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VRManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/VRManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 87
    iput-object p1, p0, this$0:Lcom/android/server/VRManagerService;

    .line 88
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    .line 101
    :goto_5
    return-void

    .line 94
    :pswitch_6
    iget-object v0, p0, this$0:Lcom/android/server/VRManagerService;

    # getter for: Lcom/android/server/VRManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/VRManagerService;->access$000(Lcom/android/server/VRManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 95
    :try_start_d
    iget-object v2, p0, this$0:Lcom/android/server/VRManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/VRManagerService;->handleDeviceEventChanged(III)V
    invoke-static {v2, v0, v3, v4}, Lcom/android/server/VRManagerService;->access$200(Lcom/android/server/VRManagerService;III)V

    .line 96
    monitor-exit v1

    goto :goto_5

    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_d .. :try_end_22} :catchall_20

    throw v0

    .line 92
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
