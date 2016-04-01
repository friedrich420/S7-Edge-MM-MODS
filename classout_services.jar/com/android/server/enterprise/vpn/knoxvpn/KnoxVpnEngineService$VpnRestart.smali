.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$VpnRestart;
.super Ljava/lang/Object;
.source "KnoxVpnEngineService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VpnRestart"
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mProfileName:Ljava/lang/String;

.field private retryIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 4324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4319
    iput-object v0, p0, mProfileName:Ljava/lang/String;

    .line 4320
    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 4321
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, retryIntent:Landroid/content/Intent;

    .line 4322
    const-string v0, "KnoxVpnEngineService"

    iput-object v0, p0, TAG:Ljava/lang/String;

    .line 4325
    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "VpnRestart init "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4326
    iput-object p2, p0, mProfileName:Ljava/lang/String;

    .line 4327
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 4328
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 4331
    iget-object v0, p0, TAG:Ljava/lang/String;

    const-string v1, "VpnRestart running "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4332
    iget-object v0, p0, retryIntent:Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.mdm.services.vpn.RETRY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4333
    iget-object v0, p0, retryIntent:Landroid/content/Intent;

    const-string/jumbo v1, "extra_profile_name"

    iget-object v2, p0, mProfileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4334
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, retryIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.sec.enterprise.knox.KNOX_GENERIC_VPN"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 4335
    return-void
.end method
