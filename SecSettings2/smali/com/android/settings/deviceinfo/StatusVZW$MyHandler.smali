.class Lcom/android/settings/deviceinfo/StatusVZW$MyHandler;
.super Landroid/os/Handler;
.source "StatusVZW.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StatusVZW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mStatus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/deviceinfo/StatusVZW;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/StatusVZW;)V
    .locals 1
    .param p1, "activity"    # Lcom/android/settings/deviceinfo/StatusVZW;

    .prologue
    .line 298
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 299
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StatusVZW$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    .line 300
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 304
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StatusVZW$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StatusVZW;

    .line 305
    .local v1, "status":Lcom/android/settings/deviceinfo/StatusVZW;
    if-nez v1, :cond_0

    .line 330
    :goto_0
    return-void

    .line 309
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 312
    :sswitch_0
    const-string v2, "Status"

    const-string v3, "EVENT_SERVICE_STATE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    invoke-static {v1}, Lcom/android/settings/deviceinfo/StatusVZW;->access$000(Lcom/android/settings/deviceinfo/StatusVZW;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 314
    # getter for: Lcom/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    invoke-static {v1}, Lcom/android/settings/deviceinfo/StatusVZW;->access$000(Lcom/android/settings/deviceinfo/StatusVZW;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 315
    .local v0, "mServiceState":Landroid/telephony/ServiceState;
    # invokes: Lcom/android/settings/deviceinfo/StatusVZW;->updateServiceState(Landroid/telephony/ServiceState;)V
    invoke-static {v1, v0}, Lcom/android/settings/deviceinfo/StatusVZW;->access$100(Lcom/android/settings/deviceinfo/StatusVZW;Landroid/telephony/ServiceState;)V

    .line 316
    # invokes: Lcom/android/settings/deviceinfo/StatusVZW;->updateNetworkType()V
    invoke-static {v1}, Lcom/android/settings/deviceinfo/StatusVZW;->access$200(Lcom/android/settings/deviceinfo/StatusVZW;)V

    goto :goto_0

    .line 318
    .end local v0    # "mServiceState":Landroid/telephony/ServiceState;
    :cond_1
    const-string v2, "Status"

    const-string v3, "status.mPhoneStateReceiver is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 322
    :sswitch_1
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StatusVZW;->updateTimes()V

    .line 323
    const/16 v2, 0x1f4

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/settings/deviceinfo/StatusVZW$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 327
    :sswitch_2
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/StatusVZW;->updateConnectivity()V

    goto :goto_0

    .line 309
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x1f4 -> :sswitch_1
        0x258 -> :sswitch_2
    .end sparse-switch
.end method
