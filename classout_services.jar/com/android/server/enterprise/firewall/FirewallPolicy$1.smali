.class Lcom/android/server/enterprise/firewall/FirewallPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "FirewallPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/FirewallPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V
    .registers 2

    .prologue
    .line 231
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 235
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 236
    iget-object v1, p0, this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarketOnBoot()V
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$000(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    .line 237
    # getter for: Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsHostnameHashMapCreated:Z
    invoke-static {}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$100()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 238
    iget-object v1, p0, this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    const/4 v2, -0x1

    const/4 v3, 0x1

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->loadHostnameMapFromDb(IZ)V
    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$200(Lcom/android/server/enterprise/firewall/FirewallPolicy;IZ)V

    .line 242
    :cond_1e
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 244
    :cond_36
    const-string v1, "FirewallPolicy"

    const-string v2, "Received intent: android.intent.action.BOOT_COMPLETED or android.intent.action.USER_ADDED"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :try_start_3d
    iget-object v1, p0, this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkManagementService()Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$300(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Landroid/os/INetworkManagementService;

    .line 247
    iget-object v1, p0, this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->getConnectivityManagerService()Landroid/net/IConnectivityManager;
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$400(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Landroid/net/IConnectivityManager;

    .line 248
    iget-object v1, p0, this$0:Lcom/android/server/enterprise/firewall/FirewallPolicy;

    # invokes: Lcom/android/server/enterprise/firewall/FirewallPolicy;->refreshProxyRules()Z
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->access$500(Lcom/android/server/enterprise/firewall/FirewallPolicy;)Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_4c} :catch_4d

    .line 253
    :cond_4c
    :goto_4c
    return-void

    .line 249
    :catch_4d
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "FirewallPolicy"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4c
.end method
