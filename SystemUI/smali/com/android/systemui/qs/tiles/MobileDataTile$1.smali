.class Lcom/android/systemui/qs/tiles/MobileDataTile$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 99
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v7, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_STARTED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 102
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$100(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v7

    if-le v7, v10, :cond_0

    .line 103
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v7, v8}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$200(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const-string v7, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.samsung.net.conn.SwitchDataNetworkDuringVoiceCall"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "com.samsung.net.conn.SwitchDataNetworkDuringMMS"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 108
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$300(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v7

    if-le v7, v10, :cond_0

    .line 109
    const-string v7, "subscription"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 110
    .local v5, "subId":I
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v8

    # setter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneId:I
    invoke-static {v7, v8}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$402(Lcom/android/systemui/qs/tiles/MobileDataTile;I)I

    .line 111
    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPhoneId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mPhoneId:I
    invoke-static {v9}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$400(Lcom/android/systemui/qs/tiles/MobileDataTile;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->updateState()V
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$500(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    goto :goto_0

    .line 116
    .end local v5    # "subId":I
    :cond_3
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 120
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getMobileDataEnabled()Z

    move-result v8

    # setter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mIsDataEnabled:Z
    invoke-static {v7, v8}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$602(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z

    .line 132
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    .line 133
    .local v4, "simState":I
    if-eq v4, v10, :cond_5

    if-eqz v4, :cond_5

    if-eq v4, v11, :cond_5

    if-ne v4, v12, :cond_6

    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v7

    const-string v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_SIM_CHECK"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isNoSimState()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 141
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v7, v8}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$700(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 143
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->updateState()V
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$500(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    goto/16 :goto_0

    .line 146
    .end local v4    # "simState":I
    :cond_9
    const-string v7, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 147
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$800(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$800(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 148
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$800(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->cancel()V

    goto/16 :goto_0

    .line 150
    :cond_a
    const-string v7, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 151
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->unregisterPhoneStateListener()V
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$900(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    .line 152
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->registerPhoneStateListener()V
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1000(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    goto/16 :goto_0

    .line 155
    :cond_b
    const-string v7, "android.net.conn.MOBILE_DATA_ENABLE_POPUP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 157
    const v6, 0x7f0d040f

    .line 158
    .local v6, "title":I
    const v3, 0x7f0d0411

    .line 159
    .local v3, "msg":I
    const v1, 0x7f0d043d

    .line 160
    .local v1, "button1":I
    const/high16 v2, 0x1040000

    .line 161
    .local v2, "button2":I
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$1;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(IIII)V
    invoke-static {v7, v6, v3, v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1100(Lcom/android/systemui/qs/tiles/MobileDataTile;IIII)V

    goto/16 :goto_0
.end method
