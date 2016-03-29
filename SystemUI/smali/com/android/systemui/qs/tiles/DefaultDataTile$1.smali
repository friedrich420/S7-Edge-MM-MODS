.class Lcom/android/systemui/qs/tiles/DefaultDataTile$1;
.super Landroid/content/BroadcastReceiver;
.source "DefaultDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DefaultDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->getDefaultDataPhoneId()I
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v5

    # setter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDataPhoneId:I
    invoke-static {v4, v5}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$102(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)I

    .line 91
    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsDataEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsDataEnabled:Z
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$300(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mDataPhoneId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDataPhoneId:I
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$100(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState()V
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$400(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    const-string v4, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_STARTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 94
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 95
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 96
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    const-string v4, "subscription"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 99
    .local v3, "subId":I
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    # setter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDataPhoneId:I
    invoke-static {v4, v5}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$102(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)I

    .line 100
    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsDataEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsDataEnabled:Z
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$300(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Extra mDataPhoneId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDataPhoneId:I
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$100(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", subId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState()V
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$600(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    .line 103
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 104
    .local v1, "delayReady":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 106
    .end local v1    # "delayReady":Landroid/os/Message;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "subId":I
    :cond_3
    const-string v4, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 107
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 109
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    const-string v4, "subscription"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 112
    .restart local v3    # "subId":I
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    # setter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDataPhoneId:I
    invoke-static {v4, v5}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$102(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)I

    .line 113
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getMobileDataEnabled()Z

    move-result v5

    # setter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsDataEnabled:Z
    invoke-static {v4, v5}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$302(Lcom/android/systemui/qs/tiles/DefaultDataTile;Z)Z

    .line 114
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState()V
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$700(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    .line 115
    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsDataEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsDataEnabled:Z
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$300(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Extra mDataPhoneId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDataPhoneId:I
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$100(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", subId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 116
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "subId":I
    :cond_4
    const-string v4, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "com.samsung.net.conn.SwitchDataNetworkDuringVoiceCall"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "com.samsung.net.conn.SwitchDataNetworkDuringMMS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 119
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 121
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$500(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 123
    const-string v4, "subscription"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 124
    .restart local v3    # "subId":I
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    # setter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDataPhoneId:I
    invoke-static {v4, v5}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$102(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)I

    .line 125
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDataPhoneId:I
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$100(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v5

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->setDataPhoneId(I)V
    invoke-static {v4, v5}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$800(Lcom/android/systemui/qs/tiles/DefaultDataTile;I)V

    .line 126
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->refreshState()V
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$900(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    .line 127
    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsDataEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mIsDataEnabled:Z
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$300(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Extra mDataPhoneId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mDataPhoneId:I
    invoke-static {v6}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$100(Lcom/android/systemui/qs/tiles/DefaultDataTile;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", subId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 128
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "subId":I
    :cond_6
    const-string v4, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 129
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->unregisterPhoneStateListener()V
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$1000(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    .line 130
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DefaultDataTile;->registerPhoneStateListener()V
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$1100(Lcom/android/systemui/qs/tiles/DefaultDataTile;)V

    goto/16 :goto_0

    .line 131
    :cond_7
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$1200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$1200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 133
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/DefaultDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/DefaultDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DefaultDataTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/DefaultDataTile;->access$1200(Lcom/android/systemui/qs/tiles/DefaultDataTile;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->cancel()V

    goto/16 :goto_0
.end method
