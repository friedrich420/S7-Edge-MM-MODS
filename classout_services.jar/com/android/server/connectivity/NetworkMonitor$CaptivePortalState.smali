.class Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptivePortalState"
.end annotation


# static fields
.field private static final ACTION_LAUNCH_CAPTIVE_PORTAL_APP:Ljava/lang/String; = "android.net.netmon.launchCaptivePortalApp"


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .registers 2

    .prologue
    .line 886
    iput-object p1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$1;

    .prologue
    .line 886
    invoke-direct {p0, p1}, <init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 16

    .prologue
    const v14, 0x8200a

    const v10, 0x82002

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 892
    invoke-static {}, Landroid/net/wifi/WifiManager;->suppressBrowserOnCaptivePortal()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 893
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v7, "Suppress Browser When Verizon Setup WiFi running"

    invoke-virtual {v6, v7}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1009
    :cond_15
    :goto_15
    return-void

    .line 897
    :cond_16
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v7, "CaptivePortalState - enter"

    invoke-virtual {v6, v7}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 899
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v6

    if-nez v6, :cond_5f

    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v12, :cond_5f

    .line 902
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$3500(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 903
    .local v5, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->isAuthenticated()Z

    move-result v6

    if-nez v6, :cond_4d

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSkipInternetCheck()Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 904
    :cond_4d
    const-string v6, "NetworkMonitor"

    const-string v7, "Wifi config is changed during state transition. Go to Validated state."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v7, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->access$1900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v7

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v6, v7}, Lcom/android/server/connectivity/NetworkMonitor;->access$5300(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/internal/util/IState;)V

    .line 909
    .end local v5    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_5f
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v8, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v8

    invoke-virtual {v7, v10, v12, v13, v8}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 913
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$2100(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 915
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$5400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    if-nez v6, :cond_1c4

    .line 916
    const-string v6, "NetworkMonitor"

    const-string/jumbo v7, "mTelephonyManager is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_8c
    :goto_8c
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v6

    if-nez v6, :cond_1fc

    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v12, :cond_1fc

    .line 929
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Enter CaptivePortalState. netId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v8, v8, Landroid/net/Network;->netId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mCaptivePortalRegistered="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalRegistered:Z
    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->access$2300(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 930
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v8, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v8, v8, Landroid/net/Network;->netId:I

    iget-object v9, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v9}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v9

    invoke-virtual {v7, v10, v12, v8, v9}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 936
    const-string v6, "NetworkMonitor"

    const-string/jumbo v7, "set WiFi ACTION_LAUNCH_CAPTIVE_PORTAL_APP BroadcastReceiver"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->access$900(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.net.netmon.launchCaptivePortalApp"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 939
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalLoginActivityCreated:Z
    invoke-static {v6, v13}, Lcom/android/server/connectivity/NetworkMonitor;->access$4902(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 941
    :try_start_114
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v7, v7, Lcom/android/server/connectivity/NetworkMonitor;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v6, v7}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_11f
    .catch Landroid/os/RemoteException; {:try_start_114 .. :try_end_11f} :catch_1e7

    .line 947
    :goto_11f
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalRegistered:Z
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$2300(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 948
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.net.netmon.launchCaptivePortalApp"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 949
    .local v4, "pendingIntent":Landroid/content/Intent;
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 952
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v7, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    iget-object v8, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v13, v4, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v14, v12, v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 954
    .local v3, "message":Landroid/os/Message;
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 957
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v6, v6, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-nez v6, :cond_179

    const-string v6, "FINISH"

    const-string/jumbo v7, "persist.sys.setupwizard"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f4

    .line 959
    :cond_179
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v7, "Launch captive portal login activity immediately."

    invoke-virtual {v6, v7}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 961
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 964
    .local v1, "intent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.android.captiveportallogin"

    const-string v8, "com.android.captiveportallogin.CaptivePortalLoginActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 966
    const-string v6, "android.net.extra.NETWORK"

    iget-object v7, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 967
    const-string v6, "android.net.extra.CAPTIVE_PORTAL"

    new-instance v7, Landroid/net/CaptivePortal;

    new-instance v8, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState$1;

    invoke-direct {v8, p0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState$1;-><init>(Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;)V

    invoke-direct {v7, v8}, Landroid/net/CaptivePortal;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 979
    const/high16 v6, 0x10c00000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 982
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 988
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1bd
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalRegistered:Z
    invoke-static {v6, v12}, Lcom/android/server/connectivity/NetworkMonitor;->access$2302(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    goto/16 :goto_15

    .line 918
    .end local v3    # "message":Landroid/os/Message;
    .end local v4    # "pendingIntent":Landroid/content/Intent;
    :cond_1c4
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mPhoneListener:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$5500(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;

    move-result-object v6

    if-nez v6, :cond_8c

    .line 919
    new-instance v2, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;

    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {v2, v6}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    .line 920
    .local v2, "mPhoneListener":Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$5400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v2, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 921
    const-string v6, "NetworkMonitor"

    const-string v7, "Add listener."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8c

    .line 942
    .end local v2    # "mPhoneListener":Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;
    :catch_1e7
    move-exception v0

    .line 943
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "NetworkMonitor"

    const-string v7, "RemoteException - registerProcessObserver"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_11f

    .line 985
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "message":Landroid/os/Message;
    .restart local v4    # "pendingIntent":Landroid/content/Intent;
    :cond_1f4
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v7, "Captive portal is detected but it\'s auto connect."

    invoke-virtual {v6, v7}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    goto :goto_1bd

    .line 994
    .end local v3    # "message":Landroid/os/Message;
    .end local v4    # "pendingIntent":Landroid/content/Intent;
    :cond_1fc
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$1300(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    move-result-object v6

    if-nez v6, :cond_21e

    .line 996
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v7, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    iget-object v8, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v9, "android.net.netmon.launchCaptivePortalApp"

    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    invoke-virtual {v10}, Ljava/util/Random;->nextInt()I

    move-result v10

    const v11, 0x8200b

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;II)V

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    invoke-static {v6, v7}, Lcom/android/server/connectivity/NetworkMonitor;->access$1302(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .line 1001
    :cond_21e
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v7, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    iget-object v8, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->access$1300(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v6, v14, v12, v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1004
    .restart local v3    # "message":Landroid/os/Message;
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1006
    iget-object v6, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v7, 0x8200c

    const-wide/32 v8, 0x927c0

    invoke-virtual {v6, v7, v13, v8, v9}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(IIJ)V

    goto/16 :goto_15
.end method

.method public exit()V
    .registers 4

    .prologue
    .line 1057
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v2, 0x8200c

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$5800(Lcom/android/server/connectivity/NetworkMonitor;I)V

    .line 1058
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v2, 0x82010

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$5900(Lcom/android/server/connectivity/NetworkMonitor;I)V

    .line 1060
    iget-object v1, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_30

    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v1

    if-nez v1, :cond_30

    .line 1064
    :try_start_25
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkMonitor;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_30} :catch_31

    .line 1070
    :cond_30
    :goto_30
    return-void

    .line 1065
    :catch_31
    move-exception v0

    .line 1066
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NetworkMonitor"

    const-string v2, "RemoteException - unregisterProcessObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_30
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v8, 0x82010

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1013
    iget-object v4, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1014
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_ea

    move v2, v3

    .line 1052
    :goto_29
    return v2

    .line 1016
    :pswitch_2a
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v4

    if-nez v4, :cond_e7

    iget-object v4, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_e7

    .line 1019
    iget-object v3, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalLoginActivityCreated:Z
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$4900(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 1020
    iget-object v3, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v4, "Captive portal login activity already created once."

    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    goto :goto_29

    .line 1024
    :cond_4e
    iget-object v3, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mSmartDetectionAvailable:Z
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$4500(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 1025
    iget-object v3, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v4, "Captive portal - Smart detection is not available for now."

    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    goto :goto_29

    .line 1029
    :cond_5e
    iget-object v3, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCurrentUid:I
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$4700(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v3

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    .line 1031
    .local v0, "txBytes":J
    const-string v3, "NetworkMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "txBytes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentTxByteUid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCurrentTxByteUid:J
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$4800(Lcom/android/server/connectivity/NetworkMonitor;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCaptivePortalTxCheckSec:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalTxCheckSec:I
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$5200(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v3, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalTxCheckSec:I
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$5200(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v3

    const/16 v4, 0x258

    if-ge v3, v4, :cond_d9

    .line 1035
    iget-object v3, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # operator++ for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalTxCheckSec:I
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$5208(Lcom/android/server/connectivity/NetworkMonitor;)I

    .line 1036
    iget-object v3, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCurrentTxByteUid:J
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$4800(Lcom/android/server/connectivity/NetworkMonitor;)J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-lez v3, :cond_d0

    .line 1037
    iget-object v3, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v4, "TxBytes increased: start Activity"

    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1038
    iget-object v3, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v4, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->startLoginActivity(Landroid/net/Network;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$5600(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/Network;)V

    goto/16 :goto_29

    .line 1040
    :cond_d0
    iget-object v3, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v8, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(IJ)V

    goto/16 :goto_29

    .line 1043
    :cond_d9
    iget-object v3, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v4, "Stop checking captive portal Tx by Timer"

    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1044
    iget-object v3, p0, this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V
    invoke-static {v3, v8}, Lcom/android/server/connectivity/NetworkMonitor;->access$5700(Lcom/android/server/connectivity/NetworkMonitor;I)V

    goto/16 :goto_29

    .end local v0    # "txBytes":J
    :cond_e7
    move v2, v3

    .line 1052
    goto/16 :goto_29

    .line 1014
    :pswitch_data_ea
    .packed-switch 0x82010
        :pswitch_2a
    .end packed-switch
.end method
