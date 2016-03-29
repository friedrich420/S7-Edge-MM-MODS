.class Lcom/android/settings/trafficmanager/SmsReceiverService$StatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/trafficmanager/SmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/trafficmanager/SmsReceiverService;


# direct methods
.method private constructor <init>(Lcom/android/settings/trafficmanager/SmsReceiverService;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/trafficmanager/SmsReceiverService$StatusReceiver;->this$0:Lcom/android/settings/trafficmanager/SmsReceiverService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/trafficmanager/SmsReceiverService;Lcom/android/settings/trafficmanager/SmsReceiverService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/trafficmanager/SmsReceiverService;
    .param p2, "x1"    # Lcom/android/settings/trafficmanager/SmsReceiverService$1;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/settings/trafficmanager/SmsReceiverService$StatusReceiver;-><init>(Lcom/android/settings/trafficmanager/SmsReceiverService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 104
    const-string v1, "TrafficManager/SmsReceiverService"

    const-string v2, "the Broadcast receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v1, "receive_type"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 106
    .local v0, "value":I
    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/android/settings/trafficmanager/SmsReceiverService$StatusReceiver;->this$0:Lcom/android/settings/trafficmanager/SmsReceiverService;

    # getter for: Lcom/android/settings/trafficmanager/SmsReceiverService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/trafficmanager/SmsReceiverService;->access$000(Lcom/android/settings/trafficmanager/SmsReceiverService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/trafficmanager/SmsReceiverService$StatusReceiver;->this$0:Lcom/android/settings/trafficmanager/SmsReceiverService;

    # getter for: Lcom/android/settings/trafficmanager/SmsReceiverService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/trafficmanager/SmsReceiverService;->access$000(Lcom/android/settings/trafficmanager/SmsReceiverService;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e1693

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 108
    const-string v1, "TrafficManager/SmsReceiverService"

    const-string v2, "auto calibration success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/android/settings/trafficmanager/SmsReceiverService$StatusReceiver;->this$0:Lcom/android/settings/trafficmanager/SmsReceiverService;

    # getter for: Lcom/android/settings/trafficmanager/SmsReceiverService;->mTimeOutHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/trafficmanager/SmsReceiverService;->access$200(Lcom/android/settings/trafficmanager/SmsReceiverService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const-string v1, "TrafficManager/SmsReceiverService"

    const-string v2, "remove message for stopSelf"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v1, p0, Lcom/android/settings/trafficmanager/SmsReceiverService$StatusReceiver;->this$0:Lcom/android/settings/trafficmanager/SmsReceiverService;

    # getter for: Lcom/android/settings/trafficmanager/SmsReceiverService;->mTimeOutHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/trafficmanager/SmsReceiverService;->access$200(Lcom/android/settings/trafficmanager/SmsReceiverService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/android/settings/trafficmanager/SmsReceiverService$StatusReceiver;->this$0:Lcom/android/settings/trafficmanager/SmsReceiverService;

    invoke-virtual {v1}, Lcom/android/settings/trafficmanager/SmsReceiverService;->stopSelf()V

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 114
    :cond_2
    const/16 v1, 0x66

    if-ne v0, v1, :cond_1

    .line 115
    const-string v1, "TrafficManager/SmsReceiverService"

    const-string v2, "auto calibration fail"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/android/settings/trafficmanager/SmsReceiverService$StatusReceiver;->this$0:Lcom/android/settings/trafficmanager/SmsReceiverService;

    # getter for: Lcom/android/settings/trafficmanager/SmsReceiverService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/trafficmanager/SmsReceiverService;->access$000(Lcom/android/settings/trafficmanager/SmsReceiverService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/trafficmanager/SmsReceiverService$StatusReceiver;->this$0:Lcom/android/settings/trafficmanager/SmsReceiverService;

    # getter for: Lcom/android/settings/trafficmanager/SmsReceiverService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/trafficmanager/SmsReceiverService;->access$000(Lcom/android/settings/trafficmanager/SmsReceiverService;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e1694

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 117
    iget-object v1, p0, Lcom/android/settings/trafficmanager/SmsReceiverService$StatusReceiver;->this$0:Lcom/android/settings/trafficmanager/SmsReceiverService;

    # getter for: Lcom/android/settings/trafficmanager/SmsReceiverService;->mTimeOutHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/trafficmanager/SmsReceiverService;->access$200(Lcom/android/settings/trafficmanager/SmsReceiverService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 118
    const-string v1, "TrafficManager/SmsReceiverService"

    const-string v2, "remove message for stopSelf"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/android/settings/trafficmanager/SmsReceiverService$StatusReceiver;->this$0:Lcom/android/settings/trafficmanager/SmsReceiverService;

    # getter for: Lcom/android/settings/trafficmanager/SmsReceiverService;->mTimeOutHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/trafficmanager/SmsReceiverService;->access$200(Lcom/android/settings/trafficmanager/SmsReceiverService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    :cond_3
    iget-object v1, p0, Lcom/android/settings/trafficmanager/SmsReceiverService$StatusReceiver;->this$0:Lcom/android/settings/trafficmanager/SmsReceiverService;

    invoke-virtual {v1}, Lcom/android/settings/trafficmanager/SmsReceiverService;->stopSelf()V

    goto :goto_0
.end method
