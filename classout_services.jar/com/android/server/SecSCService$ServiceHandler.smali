.class final Lcom/android/server/SecSCService$ServiceHandler;
.super Landroid/os/Handler;
.source "SecSCService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecSCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecSCService;


# direct methods
.method public constructor <init>(Lcom/android/server/SecSCService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 72
    iput-object p1, p0, this$0:Lcom/android/server/SecSCService;

    .line 73
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 81
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_8c

    .line 119
    const-string v2, "SecSCService"

    const-string v3, "In default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_c
    return-void

    .line 84
    :pswitch_d
    # invokes: Lcom/android/server/SecSCService;->SecSC_bootComplete()V
    invoke-static {}, Lcom/android/server/SecSCService;->access$000()V

    .line 86
    iget-object v2, p0, this$0:Lcom/android/server/SecSCService;

    invoke-virtual {v2}, Lcom/android/server/SecSCService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 87
    .local v0, "autoTimeUpdate":I
    const-string v2, "SecSCService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autoTimeUpdate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 90
    .local v1, "telephonymanager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_56

    if-eqz v0, :cond_56

    .line 93
    const-string v2, "SecSCService"

    const-string/jumbo v3, "createTempFile start"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    # invokes: Lcom/android/server/SecSCService;->SecSC_createTempFile()V
    invoke-static {}, Lcom/android/server/SecSCService;->access$100()V

    .line 95
    const-string v2, "SecSCService"

    const-string/jumbo v3, "createTempFile end"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 99
    :cond_56
    const-string v2, "SecSCService"

    const-string/jumbo v3, "sim state not ready or auto update is off"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 105
    .end local v0    # "autoTimeUpdate":I
    .end local v1    # "telephonymanager":Landroid/telephony/TelephonyManager;
    :pswitch_5f
    const-string v2, "SecSCService"

    const-string/jumbo v3, "handle connectivity time updation start"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v2, p0, this$0:Lcom/android/server/SecSCService;

    # invokes: Lcom/android/server/SecSCService;->SecSC_handleConnectivityStateChanged()V
    invoke-static {v2}, Lcom/android/server/SecSCService;->access$200(Lcom/android/server/SecSCService;)V

    .line 107
    const-string v2, "SecSCService"

    const-string/jumbo v3, "handle connectivity time updation end"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 112
    :pswitch_75
    const-string v2, "SecSCService"

    const-string/jumbo v3, "handle nitz time updation start"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, this$0:Lcom/android/server/SecSCService;

    invoke-virtual {v2}, Lcom/android/server/SecSCService;->SecSC_handleNitzTimeUpdation()V

    .line 114
    const-string v2, "SecSCService"

    const-string/jumbo v3, "handle nitz time updation end"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 81
    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_d
        :pswitch_5f
        :pswitch_75
    .end packed-switch
.end method
