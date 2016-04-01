.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$4;
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

.field final synthetic val$profileName:Ljava/lang/String;

.field final synthetic val$uidList:Ljava/util/HashMap;

.field final synthetic val$vendorUid:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;Ljava/util/HashMap;II)V
    .registers 6

    .prologue
    .line 4972
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    iput-object p2, p0, val$profileName:Ljava/lang/String;

    iput-object p3, p0, val$uidList:Ljava/util/HashMap;

    iput p4, p0, val$vendorUid:I

    iput p5, p0, val$action:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 4975
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "KnoxVpnEngineService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app removed: default Proxy settings is going to be applied for the running apps under the profile "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, val$profileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4976
    :cond_21
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getAMSInstance()Lcom/android/server/am/ActivityManagerService;
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$3400(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v1, p0, val$uidList:Ljava/util/HashMap;

    iget v6, p0, val$vendorUid:I

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->updateProxyConfigurationForKnoxVpn(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4978
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_51

    const-string v0, "KnoxVpnEngineService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app removed: default proxy settings is going to be send to apps under the profile "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, val$profileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4979
    :cond_51
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getKnoxVpnHelperInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$3500(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iget-object v1, p0, val$uidList:Ljava/util/HashMap;

    const/4 v3, -0x1

    iget v4, p0, val$vendorUid:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->sendknoxVpnProxyBroadcast(Ljava/util/HashMap;Ljava/lang/String;II)V

    .line 4981
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    iget v1, p0, val$action:I

    iget-object v2, p0, val$uidList:Ljava/util/HashMap;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->checkExistsEmailPackageInProfiles(ILjava/util/HashMap;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$3600(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;ILjava/util/HashMap;)V

    .line 4983
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    iget-object v1, p0, val$profileName:Ljava/lang/String;

    iget-object v2, p0, val$uidList:Ljava/util/HashMap;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->killRunningProcessToApplyProxy(Ljava/lang/String;Ljava/util/HashMap;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$3700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 4984
    return-void
.end method
