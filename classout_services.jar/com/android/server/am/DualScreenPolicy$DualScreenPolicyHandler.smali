.class final Lcom/android/server/am/DualScreenPolicy$DualScreenPolicyHandler;
.super Landroid/os/Handler;
.source "DualScreenPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/DualScreenPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DualScreenPolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/DualScreenPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/am/DualScreenPolicy;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1004
    iput-object p1, p0, this$0:Lcom/android/server/am/DualScreenPolicy;

    .line 1005
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1006
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1010
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    .line 1017
    :goto_5
    return-void

    .line 1012
    :pswitch_6
    iget-object v0, p0, this$0:Lcom/android/server/am/DualScreenPolicy;

    # getter for: Lcom/android/server/am/DualScreenPolicy;->mActivityService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/am/DualScreenPolicy;->access$000(Lcom/android/server/am/DualScreenPolicy;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    monitor-enter v1

    .line 1013
    :try_start_d
    iget-object v0, p0, this$0:Lcom/android/server/am/DualScreenPolicy;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/DualScreenPolicy;->handleMultipleScreenStateChangedLocked(II)V

    .line 1014
    monitor-exit v1

    goto :goto_5

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_18

    throw v0

    .line 1010
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
