.class Lcom/ipsec/client/IPsecServiceInterface;
.super Ljava/lang/Object;
.source "IPsecServiceInterface.java"


# static fields
.field private static final COMPONENT:Ljava/lang/String; = "IPsecServiceInterface"

.field private static final REMOTE_SERVICE_CLS_NAME:Ljava/lang/String; = "com.ipsec.service.IPsecService"

.field private static final REMOTE_SERVICE_PKG_NAME:Ljava/lang/String; = "com.ipsec.service"

.field private static final TAG:Ljava/lang/String; = "IPSC"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static connectService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connection"    # Landroid/content/ServiceConnection;

    .prologue
    .line 54
    invoke-static {}, newServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "IPSC"

    const-string v2, "IPsecServiceInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startService(): serviceIntent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/ipsec/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 61
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method static getInterface(Landroid/os/IBinder;)Lcom/ipsec/client/IIPsecService;
    .registers 2
    .param p0, "service"    # Landroid/os/IBinder;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/ipsec/client/IIPsecService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ipsec/client/IIPsecService;

    move-result-object v0

    return-object v0
.end method

.method static getServiceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-static {}, newServiceIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static newServiceIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 36
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.ipsec.service"

    const-string v2, "com.ipsec.service.IPsecService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    return-object v0
.end method
