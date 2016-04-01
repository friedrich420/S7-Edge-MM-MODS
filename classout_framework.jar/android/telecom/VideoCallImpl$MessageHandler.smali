.class final Landroid/telecom/VideoCallImpl$MessageHandler;
.super Landroid/os/Handler;
.source "VideoCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MessageHandler"
.end annotation


# static fields
.field private static final MSG_CHANGE_CALL_DATA_USAGE:I = 0x5

.field private static final MSG_CHANGE_CAMERA_CAPABILITIES:I = 0x6

.field private static final MSG_CHANGE_PEER_DIMENSIONS:I = 0x4

.field private static final MSG_CHANGE_VIDEO_QUALITY:I = 0x7

.field private static final MSG_HANDLE_CALL_SESSION_EVENT:I = 0x3

.field private static final MSG_RECEIVE_SESSION_MODIFY_REQUEST:I = 0x1

.field private static final MSG_RECEIVE_SESSION_MODIFY_RESPONSE:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/telecom/VideoCallImpl;


# direct methods
.method public constructor <init>(Landroid/telecom/VideoCallImpl;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 118
    iput-object p1, p0, this$0:Landroid/telecom/VideoCallImpl;

    .line 119
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 120
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 124
    iget-object v6, p0, this$0:Landroid/telecom/VideoCallImpl;

    # getter for: Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v6

    if-nez v6, :cond_9

    .line 173
    :goto_8
    return-void

    .line 129
    :cond_9
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_b2

    goto :goto_8

    .line 131
    :pswitch_f
    iget-object v6, p0, this$0:Landroid/telecom/VideoCallImpl;

    # getter for: Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/telecom/VideoProfile;

    invoke-virtual {v7, v6}, Landroid/telecom/InCallService$VideoCall$Callback;->onSessionModifyRequestReceived(Landroid/telecom/VideoProfile;)V

    goto :goto_8

    .line 134
    :pswitch_1d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 136
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_21
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 137
    .local v4, "status":I
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/telecom/VideoProfile;

    .line 138
    .local v2, "requestProfile":Landroid/telecom/VideoProfile;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/VideoProfile;

    .line 140
    .local v3, "responseProfile":Landroid/telecom/VideoProfile;
    iget-object v6, p0, this$0:Landroid/telecom/VideoCallImpl;

    # getter for: Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v6

    invoke-virtual {v6, v4, v2, v3}, Landroid/telecom/InCallService$VideoCall$Callback;->onSessionModifyResponseReceived(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_3a
    .catchall {:try_start_21 .. :try_end_3a} :catchall_3e

    .line 143
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_8

    .end local v2    # "requestProfile":Landroid/telecom/VideoProfile;
    .end local v3    # "responseProfile":Landroid/telecom/VideoProfile;
    .end local v4    # "status":I
    :catchall_3e
    move-exception v6

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v6

    .line 147
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_43
    iget-object v6, p0, this$0:Landroid/telecom/VideoCallImpl;

    # getter for: Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/telecom/InCallService$VideoCall$Callback;->onCallSessionEvent(I)V

    goto :goto_8

    .line 150
    :pswitch_55
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 152
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :try_start_59
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 153
    .local v5, "width":I
    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 154
    .local v1, "height":I
    iget-object v6, p0, this$0:Landroid/telecom/VideoCallImpl;

    # getter for: Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v6

    invoke-virtual {v6, v5, v1}, Landroid/telecom/InCallService$VideoCall$Callback;->onPeerDimensionsChanged(II)V
    :try_end_72
    .catchall {:try_start_59 .. :try_end_72} :catchall_76

    .line 156
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_8

    .end local v1    # "height":I
    .end local v5    # "width":I
    :catchall_76
    move-exception v6

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v6

    .line 160
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7b
    iget-object v6, p0, this$0:Landroid/telecom/VideoCallImpl;

    # getter for: Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/telecom/InCallService$VideoCall$Callback;->onCallDataUsageChanged(J)V

    goto/16 :goto_8

    .line 163
    :pswitch_8e
    iget-object v6, p0, this$0:Landroid/telecom/VideoCallImpl;

    # getter for: Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v7

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-virtual {v7, v6}, Landroid/telecom/InCallService$VideoCall$Callback;->onCameraCapabilitiesChanged(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    goto/16 :goto_8

    .line 167
    :pswitch_9d
    iget-object v6, p0, this$0:Landroid/telecom/VideoCallImpl;

    iget v7, p1, Landroid/os/Message;->arg1:I

    # setter for: Landroid/telecom/VideoCallImpl;->mVideoQuality:I
    invoke-static {v6, v7}, Landroid/telecom/VideoCallImpl;->access$302(Landroid/telecom/VideoCallImpl;I)I

    .line 168
    iget-object v6, p0, this$0:Landroid/telecom/VideoCallImpl;

    # getter for: Landroid/telecom/VideoCallImpl;->mCallback:Landroid/telecom/InCallService$VideoCall$Callback;
    invoke-static {v6}, Landroid/telecom/VideoCallImpl;->access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Landroid/telecom/InCallService$VideoCall$Callback;->onVideoQualityChanged(I)V

    goto/16 :goto_8

    .line 129
    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_f
        :pswitch_1d
        :pswitch_43
        :pswitch_55
        :pswitch_7b
        :pswitch_8e
        :pswitch_9d
    .end packed-switch
.end method
