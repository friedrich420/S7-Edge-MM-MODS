.class Lcom/android/server/connectivity/EnterpriseVpn$3$2;
.super Ljava/lang/Object;
.source "EnterpriseVpn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/EnterpriseVpn$3;->interfaceRemoved(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/EnterpriseVpn$3;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/EnterpriseVpn$3;)V
    .registers 2

    .prologue
    .line 516
    iput-object p1, p0, this$1:Lcom/android/server/connectivity/EnterpriseVpn$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 519
    :try_start_0
    const-string v1, "EnterpriseVpn"

    const-string/jumbo v2, "disconnect system vpn is getting called from enterprisevpn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/EnterpriseVpn$3;

    iget-object v1, v1, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mConnectivityService:Landroid/net/IConnectivityManager;
    invoke-static {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->access$900(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/IConnectivityManager;

    move-result-object v1

    iget-object v2, p0, this$1:Lcom/android/server/connectivity/EnterpriseVpn$3;

    iget-object v2, v2, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mUserId:I
    invoke-static {v2}, Lcom/android/server/connectivity/EnterpriseVpn;->access$600(Lcom/android/server/connectivity/EnterpriseVpn;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/net/IConnectivityManager;->disconnectSystemVpn(I)V

    .line 521
    iget-object v1, p0, this$1:Lcom/android/server/connectivity/EnterpriseVpn$3;

    iget-object v1, v1, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1100(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, this$1:Lcom/android/server/connectivity/EnterpriseVpn$3;

    iget-object v2, v2, Lcom/android/server/connectivity/EnterpriseVpn$3;->this$0:Lcom/android/server/connectivity/EnterpriseVpn;

    # getter for: Lcom/android/server/connectivity/EnterpriseVpn;->mObserver:Landroid/net/INetworkManagementEventObserver;
    invoke-static {v2}, Lcom/android/server/connectivity/EnterpriseVpn;->access$1000(Lcom/android/server/connectivity/EnterpriseVpn;)Landroid/net/INetworkManagementEventObserver;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 525
    :goto_2e
    return-void

    .line 522
    :catch_2f
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EnterpriseVpn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception at  interfaceRemoved : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method
