.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$KnoxProxyCallbackImpl;
.super Ljava/lang/Object;
.source "KnoxVpnEngineService.java"

# interfaces
.implements Lcom/android/server/enterprise/vpn/knoxvpn/KnoxProxyServerStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KnoxProxyCallbackImpl"
.end annotation


# instance fields
.field profileEntry:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;)V
    .registers 4
    .param p2, "profile"    # Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .prologue
    .line 5563
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5561
    const/4 v0, 0x0

    iput-object v0, p0, profileEntry:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 5564
    iput-object p2, p0, profileEntry:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 5565
    return-void
.end method


# virtual methods
.method public updateStatusForProfile(Ljava/lang/String;ILcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;)V
    .registers 12
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "proxyServerObject"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;

    .prologue
    const/4 v6, 0x1

    .line 5568
    const/4 v1, -0x1

    .line 5570
    .local v1, "newPort":I
    :try_start_2
    iget-object v5, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$3200(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v2

    .line 5571
    .local v2, "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    if-eqz v2, :cond_7a

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPackageCount()I

    move-result v5

    if-lez v5, :cond_7a

    iget-object v5, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getActivate(Ljava/lang/String;)I
    invoke-static {v5, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$3900(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_7a

    .line 5572
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getPacPortLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$4000()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_7e

    .line 5573
    :try_start_21
    invoke-virtual {p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnProxyServer;->restartServer()I

    move-result v1

    .line 5574
    monitor-exit v6
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_7b

    .line 5575
    :try_start_26
    new-instance v3, Landroid/net/ProxyInfo;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPacurl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v5, v1}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;I)V

    .line 5576
    .local v3, "proxyInfo":Landroid/net/ProxyInfo;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/net/ProxyInfo;->setKnoxVpnProfile(I)V

    .line 5577
    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->setProxyInfo(Landroid/net/ProxyInfo;)V

    .line 5578
    iget-object v5, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$3500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getListOfUid(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 5579
    .local v4, "uidList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iget-object v5, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getAMSInstance()Lcom/android/server/am/ActivityManagerService;
    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$3400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v6

    invoke-virtual {v5, v4, v6, v3}, Lcom/android/server/am/ActivityManagerService;->updateProxyPacConfigurationForKnoxVpn(Ljava/util/HashMap;ILandroid/net/ProxyInfo;)V

    .line 5580
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The pac configuration is being added for the profile, send pac broadcast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5581
    iget-object v5, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    invoke-static {v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$3500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getVendorUid()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPacurl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->sendPacConfigBroadcast(Ljava/util/HashMap;ILjava/lang/String;I)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_7a} :catch_7e

    .line 5586
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    .end local v3    # "proxyInfo":Landroid/net/ProxyInfo;
    .end local v4    # "uidList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_7a
    :goto_7a
    return-void

    .line 5574
    .restart local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catchall_7b
    move-exception v5

    :try_start_7c
    monitor-exit v6
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    :try_start_7d
    throw v5
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_7e} :catch_7e

    .line 5583
    .end local v2    # "profileEntry":Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
    :catch_7e
    move-exception v0

    .line 5584
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception occured while trying to update the new proxy port for the profile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a
.end method
