.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$6;
.super Ljava/lang/Object;
.source "KnoxVpnEngineService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->updateProxyRules(ILjava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

.field final synthetic val$action:I

.field final synthetic val$pacUrl:Ljava/lang/String;

.field final synthetic val$profileName:Ljava/lang/String;

.field final synthetic val$profileProxyInfo:Landroid/net/ProxyInfo;

.field final synthetic val$uidList:Ljava/util/HashMap;

.field final synthetic val$vendorUid:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;Ljava/util/HashMap;ILandroid/net/ProxyInfo;Ljava/lang/String;I)V
    .registers 8

    .prologue
    .line 5031
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    iput-object p2, p0, val$profileName:Ljava/lang/String;

    iput-object p3, p0, val$uidList:Ljava/util/HashMap;

    iput p4, p0, val$vendorUid:I

    iput-object p5, p0, val$profileProxyInfo:Landroid/net/ProxyInfo;

    iput-object p6, p0, val$pacUrl:Ljava/lang/String;

    iput p7, p0, val$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 5034
    const-string v0, "KnoxVpnEngineService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The pac configuration is being added for the application added to vpn, update AMS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, val$profileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5035
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getAMSInstance()Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$3400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v1, p0, val$uidList:Ljava/util/HashMap;

    iget v2, p0, val$vendorUid:I

    iget-object v3, p0, val$profileProxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateProxyPacConfigurationForKnoxVpn(Ljava/util/HashMap;ILandroid/net/ProxyInfo;)V

    .line 5037
    const-string v0, "KnoxVpnEngineService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The pac configuration is being added for the application added to vpn, send pac broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, val$profileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5038
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$3500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iget-object v1, p0, val$uidList:Ljava/util/HashMap;

    iget v2, p0, val$vendorUid:I

    iget-object v3, p0, val$pacUrl:Ljava/lang/String;

    iget-object v4, p0, val$profileProxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->sendPacConfigBroadcast(Ljava/util/HashMap;ILjava/lang/String;I)V

    .line 5041
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    iget v1, p0, val$action:I

    iget-object v2, p0, val$uidList:Ljava/util/HashMap;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->checkExistsEmailPackageInProfiles(ILjava/util/HashMap;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$3600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILjava/util/HashMap;)V

    .line 5043
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    iget-object v1, p0, val$profileName:Ljava/lang/String;

    iget-object v2, p0, val$uidList:Ljava/util/HashMap;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->killRunningProcessToApplyProxy(Ljava/lang/String;Ljava/util/HashMap;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$3700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 5045
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    iget-object v1, p0, val$profileName:Ljava/lang/String;

    iget-object v2, p0, val$uidList:Ljava/util/HashMap;

    iget-object v3, p0, val$profileProxyInfo:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->addRulesToAllowAppsToDownload(Ljava/lang/String;Ljava/util/HashMap;I)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$3800(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 5046
    return-void
.end method
