.class Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;
.super Landroid/content/BroadcastReceiver;
.source "WifiHotspotTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiHotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 513
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, "action":Ljava/lang/String;
    const-string v7, "HotspotTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const-string v7, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 516
    const-string v7, "wifi_state"

    const/16 v8, 0xe

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 517
    .local v5, "state":I
    const-string v7, "HotspotTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive :  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    packed-switch v5, :pswitch_data_0

    .line 583
    .end local v5    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 521
    .restart local v5    # "state":I
    :pswitch_0
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    # invokes: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v7, v8}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$1500(Lcom/android/systemui/qs/tiles/WifiHotspotTile;Ljava/lang/Object;)V

    goto :goto_0

    .line 524
    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    # invokes: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v7, v8}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$1600(Lcom/android/systemui/qs/tiles/WifiHotspotTile;Ljava/lang/Object;)V

    goto :goto_0

    .line 528
    :pswitch_2
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # invokes: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState()V
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$1700(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V

    goto :goto_0

    .line 533
    .end local v5    # "state":I
    :cond_1
    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 534
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # invokes: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->isWifiSharingEnabled()Z
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$1800(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 536
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$1900(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 537
    .local v3, "resolver":Landroid/content/ContentResolver;
    const-string v7, "wifi_state"

    const/4 v8, 0x4

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 538
    .restart local v5    # "state":I
    const-string v7, "wifi_ap_saved_state"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v3, v7, v8, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 540
    .local v4, "savedState":I
    const-string v7, "HotspotTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v7, 0x1

    if-eq v5, v7, :cond_2

    const/4 v7, 0x4

    if-ne v5, v7, :cond_0

    :cond_2
    const/4 v7, 0x1

    if-ne v4, v7, :cond_0

    .line 543
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$2000(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 544
    .local v6, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 545
    const-string v7, "wifi_ap_saved_state"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v3, v7, v8, v9}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto/16 :goto_0

    .line 548
    .end local v3    # "resolver":Landroid/content/ContentResolver;
    .end local v4    # "savedState":I
    .end local v5    # "state":I
    .end local v6    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_3
    const-string v7, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 550
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # invokes: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->updateTetherState(Landroid/content/Intent;)V
    invoke-static {v7, p2}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$2100(Lcom/android/systemui/qs/tiles/WifiHotspotTile;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 551
    :cond_4
    const-string v7, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 552
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$2200(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$2200(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 553
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$2200(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->cancel()V

    goto/16 :goto_0

    .line 554
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$1300(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$1300(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 555
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAttentionDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$1300(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->cancel()V

    goto/16 :goto_0

    .line 559
    :cond_6
    const-string v7, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 560
    const-string v7, "info_type"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 561
    .local v1, "extraValue":I
    const-string v7, "HotspotTile"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/4 v7, 0x3

    if-ne v1, v7, :cond_0

    .line 563
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$2300(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v7, v7, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_7

    const/4 v2, 0x1

    .line 564
    .local v2, "isProcessing":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 565
    const-string v7, "HotspotTile"

    const-string v8, "HotSpot is processing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # invokes: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState()V
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$2400(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V

    goto/16 :goto_0

    .line 563
    .end local v2    # "isProcessing":Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 569
    .end local v1    # "extraValue":I
    :cond_8
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 570
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$2200(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$2200(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 571
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$2200(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->cancel()V

    goto/16 :goto_0

    .line 574
    :cond_9
    const-string v7, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 575
    const-string v7, "called_dialog"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 576
    .restart local v1    # "extraValue":I
    const-string v8, "HotspotTile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$2500(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v7, v7, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v7, 0x2

    if-ne v1, v7, :cond_0

    .line 578
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->mState:Lcom/android/systemui/qs/QSTile$State;
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$2600(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v7, v7, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 579
    iget-object v7, p0, Lcom/android/systemui/qs/tiles/WifiHotspotTile$12;->this$0:Lcom/android/systemui/qs/tiles/WifiHotspotTile;

    # invokes: Lcom/android/systemui/qs/tiles/WifiHotspotTile;->refreshState()V
    invoke-static {v7}, Lcom/android/systemui/qs/tiles/WifiHotspotTile;->access$2700(Lcom/android/systemui/qs/tiles/WifiHotspotTile;)V

    goto/16 :goto_0

    .line 518
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
