.class Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "CheckBluetoothStateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0xa

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "action":Ljava/lang/String;
    const-string v3, "CheckBluetoothStateActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive :: action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x80000000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 83
    .local v2, "state":I
    const-string v3, "CheckBluetoothStateActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive :: ACTION_STATE_CHANGED change to = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", expectingBluetoothOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->expectingBluetoothOn:Z
    invoke-static {}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->access$000()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsDestroyed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z
    invoke-static {}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->access$100()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 88
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/settings/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    .line 89
    iget-object v3, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    # invokes: Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->launchDevicePicker()V
    invoke-static {v3}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->access$200(Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;)V

    .line 95
    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 96
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "ChinaNalSecurityType":Ljava/lang/String;
    const-string v3, "ChinaNalSecurity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    if-ne v2, v6, :cond_1

    .line 99
    iget-object v3, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    .line 107
    .end local v0    # "ChinaNalSecurityType":Ljava/lang/String;
    .end local v2    # "state":I
    :cond_1
    :goto_1
    return-void

    .line 90
    .restart local v2    # "state":I
    :cond_2
    if-ne v2, v6, :cond_0

    # getter for: Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->expectingBluetoothOn:Z
    invoke-static {}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->mIsDestroyed:Z
    invoke-static {}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->access$100()Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    goto :goto_0

    .line 103
    .end local v2    # "state":I
    :cond_3
    const-string v3, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    const-string v3, "CheckBluetoothStateActivity"

    const-string v4, "EASY_MODE_CHANGE"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v3, p0, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity$1;->this$0:Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CheckBluetoothStateActivity;->finish()V

    goto :goto_1
.end method
