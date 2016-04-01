.class Landroid/telephony/PhoneStateListener$1;
.super Landroid/os/Handler;
.source "PhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/PhoneStateListener;-><init>(ILandroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/PhoneStateListener;


# direct methods
.method constructor <init>(Landroid/telephony/PhoneStateListener;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 300
    iput-object p1, p0, this$0:Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 306
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_e8

    .line 381
    :goto_7
    return-void

    .line 308
    :sswitch_8
    iget-object v1, p0, this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ServiceState;

    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_7

    .line 311
    :sswitch_12
    iget-object v0, p0, this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthChanged(I)V

    goto :goto_7

    .line 314
    :sswitch_1a
    iget-object v2, p0, this$0:Landroid/telephony/PhoneStateListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_24

    :goto_20
    invoke-virtual {v2, v0}, Landroid/telephony/PhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V

    goto :goto_7

    :cond_24
    move v0, v1

    goto :goto_20

    .line 317
    :sswitch_26
    iget-object v2, p0, this$0:Landroid/telephony/PhoneStateListener;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_30

    :goto_2c
    invoke-virtual {v2, v0}, Landroid/telephony/PhoneStateListener;->onCallForwardingIndicatorChanged(Z)V

    goto :goto_7

    :cond_30
    move v0, v1

    goto :goto_2c

    .line 320
    :sswitch_32
    iget-object v1, p0, this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/CellLocation;

    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onCellLocationChanged(Landroid/telephony/CellLocation;)V

    goto :goto_7

    .line 323
    :sswitch_3c
    iget-object v1, p0, this$0:Landroid/telephony/PhoneStateListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    goto :goto_7

    .line 326
    :sswitch_48
    iget-object v0, p0, this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(II)V

    .line 327
    iget-object v0, p0, this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onDataConnectionStateChanged(I)V

    goto :goto_7

    .line 330
    :sswitch_59
    iget-object v0, p0, this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onDataActivity(I)V

    goto :goto_7

    .line 333
    :sswitch_61
    iget-object v1, p0, this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    goto :goto_7

    .line 336
    :sswitch_6b
    iget-object v0, p0, this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onOtaspChanged(I)V

    goto :goto_7

    .line 339
    :sswitch_73
    iget-object v1, p0, this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V

    goto :goto_7

    .line 342
    :sswitch_7d
    iget-object v1, p0, this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/PreciseCallState;

    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V

    goto :goto_7

    .line 345
    :sswitch_87
    iget-object v1, p0, this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/PreciseDataConnectionState;

    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    goto/16 :goto_7

    .line 349
    :sswitch_92
    iget-object v1, p0, this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/DataConnectionRealTimeInfo;

    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V

    goto/16 :goto_7

    .line 353
    :sswitch_9d
    iget-object v1, p0, this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/VoLteServiceState;

    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V

    goto/16 :goto_7

    .line 356
    :sswitch_a8
    iget-object v1, p0, this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onOemHookRawEvent([B)V

    goto/16 :goto_7

    .line 359
    :sswitch_b5
    iget-object v1, p0, this$0:Landroid/telephony/PhoneStateListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/telephony/PhoneStateListener;->onCarrierNetworkChange(Z)V

    goto/16 :goto_7

    .line 363
    :sswitch_c4
    iget-object v0, p0, this$0:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0}, Landroid/telephony/PhoneStateListener;->onFdnUpdated()V

    goto/16 :goto_7

    .line 368
    :sswitch_cb
    iget-object v0, p0, this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/PhoneStateListener;->onDunDataConnectionStateChanged(II)V

    goto/16 :goto_7

    .line 371
    :sswitch_d6
    iget-object v0, p0, this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onDunDataActivity(I)V

    goto/16 :goto_7

    .line 377
    :sswitch_df
    iget-object v0, p0, this$0:Landroid/telephony/PhoneStateListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/telephony/PhoneStateListener;->onVoiceRadioBearerHoStateChanged(I)V

    goto/16 :goto_7

    .line 306
    :sswitch_data_e8
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_12
        0x4 -> :sswitch_1a
        0x8 -> :sswitch_26
        0x10 -> :sswitch_32
        0x20 -> :sswitch_3c
        0x40 -> :sswitch_48
        0x80 -> :sswitch_59
        0x100 -> :sswitch_61
        0x200 -> :sswitch_6b
        0x400 -> :sswitch_73
        0x800 -> :sswitch_7d
        0x1000 -> :sswitch_87
        0x2000 -> :sswitch_92
        0x4000 -> :sswitch_9d
        0x8000 -> :sswitch_a8
        0x10000 -> :sswitch_b5
        0x20000 -> :sswitch_c4
        0x40000 -> :sswitch_d6
        0x80000 -> :sswitch_cb
        0x100000 -> :sswitch_df
    .end sparse-switch
.end method
