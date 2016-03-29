.class Lcom/android/settings/ResetNetworkConfirm$4;
.super Ljava/lang/Object;
.source "ResetNetworkConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ResetNetworkConfirm;->resetNetwork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetworkConfirm;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 272
    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-virtual {v7}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 273
    .local v2, "context":Landroid/content/Context;
    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/settings/ResetNetworkConfirm;->access$1000(Lcom/android/settings/ResetNetworkConfirm;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 275
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->factoryReset()V

    .line 279
    :cond_0
    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/settings/ResetNetworkConfirm;->access$1000(Lcom/android/settings/ResetNetworkConfirm;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 281
    .local v6, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->isATTReset:Z
    invoke-static {v7}, Lcom/android/settings/ResetNetworkConfirm;->access$600(Lcom/android/settings/ResetNetworkConfirm;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 282
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->factoryReset()V

    .line 285
    :cond_1
    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/settings/ResetNetworkConfirm;->access$1000(Lcom/android/settings/ResetNetworkConfirm;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 287
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v5, :cond_2

    .line 288
    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->mSubId:I
    invoke-static {v7}, Lcom/android/settings/ResetNetworkConfirm;->access$1100(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/telephony/TelephonyManager;->factoryReset(I)V

    .line 291
    :cond_2
    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/settings/ResetNetworkConfirm;->access$1000(Lcom/android/settings/ResetNetworkConfirm;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "netpolicy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicyManager;

    .line 293
    .local v3, "policyManager":Landroid/net/NetworkPolicyManager;
    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    .line 294
    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->mSubId:I
    invoke-static {v7}, Lcom/android/settings/ResetNetworkConfirm;->access$1100(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    .line 295
    .local v4, "subscriberId":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/net/NetworkPolicyManager;->factoryReset(Ljava/lang/String;)V

    .line 298
    .end local v4    # "subscriberId":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/settings/ResetNetworkConfirm;->access$1000(Lcom/android/settings/ResetNetworkConfirm;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "bluetooth"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 300
    .local v0, "btManager":Landroid/bluetooth/BluetoothManager;
    if-eqz v0, :cond_4

    .line 301
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    .line 304
    :cond_4
    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->isATTReset:Z
    invoke-static {v7}, Lcom/android/settings/ResetNetworkConfirm;->access$600(Lcom/android/settings/ResetNetworkConfirm;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 305
    iget-object v7, p0, Lcom/android/settings/ResetNetworkConfirm$4;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    # getter for: Lcom/android/settings/ResetNetworkConfirm;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/settings/ResetNetworkConfirm;->access$1000(Lcom/android/settings/ResetNetworkConfirm;)Landroid/content/Context;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    new-instance v8, Lcom/android/settings/ResetNetworkConfirm$4$1;

    invoke-direct {v8, p0}, Lcom/android/settings/ResetNetworkConfirm$4$1;-><init>(Lcom/android/settings/ResetNetworkConfirm$4;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 313
    :cond_5
    return-void
.end method
