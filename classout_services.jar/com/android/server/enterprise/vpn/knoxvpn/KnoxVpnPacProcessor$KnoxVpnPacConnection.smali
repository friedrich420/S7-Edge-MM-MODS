.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;
.super Ljava/lang/Object;
.source "KnoxVpnPacProcessor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KnoxVpnPacConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 115
    const-string v2, "KnoxVpnPacProcessor"

    const-string/jumbo v3, "onServiceConnected is reached"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {p2}, Lcom/android/net/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;

    move-result-object v2

    # setter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyService:Lcom/android/net/IProxyService;
    invoke-static {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->access$002(Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;

    .line 117
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mBindAction:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->access$100()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 118
    .local v1, "profile":Ljava/lang/String;
    const-string v2, "KnoxVpnPacProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The pac support is going to be re-started for the profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "after successfully binded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :try_start_41
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyService:Lcom/android/net/IProxyService;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->access$000()Lcom/android/net/IProxyService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/net/IProxyService;->startPacSystemForKnoxProfile(Ljava/lang/String;)Z
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_48} :catch_49

    goto :goto_17

    .line 121
    :catch_49
    move-exception v2

    goto :goto_17

    .line 123
    .end local v1    # "profile":Ljava/lang/String;
    :cond_4b
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mBindAction:Ljava/util/List;
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->access$100()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 124
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 109
    const-string v0, "KnoxVpnPacProcessor"

    const-string/jumbo v1, "onServiceDisconnected is reached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v0, 0x0

    # setter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->mProxyService:Lcom/android/net/IProxyService;
    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->access$002(Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;

    .line 111
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindPacService()V

    .line 112
    return-void
.end method
