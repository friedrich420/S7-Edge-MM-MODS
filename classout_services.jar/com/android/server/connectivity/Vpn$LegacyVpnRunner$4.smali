.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$4;
.super Ljava/lang/Object;
.source "Vpn.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->monitorDaemons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V
    .registers 2

    .prologue
    .line 2058
    iput-object p1, p0, this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2061
    const-string v2, "LegacyVpnRunner"

    const-string/jumbo v3, "stopDeamon Thread started "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    # getter for: Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->access$3400(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_4b

    .line 2063
    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    # getter for: Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->access$3400(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v1

    .line 2064
    .local v0, "daemon":Ljava/lang/String;
    const-string v2, "charon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    # getter for: Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->access$3500(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)[Landroid/net/LocalSocket;

    move-result-object v2

    aget-object v2, v2, v1

    if-eqz v2, :cond_45

    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    # getter for: Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->access$3500(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)[Landroid/net/LocalSocket;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 2067
    iget-object v2, p0, this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    # getter for: Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;
    invoke-static {v2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->access$3500(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)[Landroid/net/LocalSocket;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2069
    :cond_45
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 2062
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2071
    .end local v0    # "daemon":Ljava/lang/String;
    :cond_4b
    return-void
.end method
