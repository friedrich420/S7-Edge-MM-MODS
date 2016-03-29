.class Lcom/android/settings/trafficmanager/SmsReceiverService$1;
.super Landroid/os/Handler;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/trafficmanager/SmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/trafficmanager/SmsReceiverService;


# direct methods
.method constructor <init>(Lcom/android/settings/trafficmanager/SmsReceiverService;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/settings/trafficmanager/SmsReceiverService$1;->this$0:Lcom/android/settings/trafficmanager/SmsReceiverService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 29
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 40
    :goto_0
    return-void

    .line 31
    :pswitch_0
    const-string v1, "TrafficManager/SmsReceiverService"

    const-string v2, "handle message for stopSelf"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.trafficmanager.status"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "receive_type"

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    const-string v1, "TrafficManager/SmsReceiverService/LPF"

    const-string v2, "send the brod fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v1, p0, Lcom/android/settings/trafficmanager/SmsReceiverService$1;->this$0:Lcom/android/settings/trafficmanager/SmsReceiverService;

    # getter for: Lcom/android/settings/trafficmanager/SmsReceiverService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/trafficmanager/SmsReceiverService;->access$000(Lcom/android/settings/trafficmanager/SmsReceiverService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 36
    const/4 v1, -0x1

    sput v1, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->simCardStatus:I

    .line 37
    iget-object v1, p0, Lcom/android/settings/trafficmanager/SmsReceiverService$1;->this$0:Lcom/android/settings/trafficmanager/SmsReceiverService;

    invoke-virtual {v1}, Lcom/android/settings/trafficmanager/SmsReceiverService;->stopSelf()V

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
