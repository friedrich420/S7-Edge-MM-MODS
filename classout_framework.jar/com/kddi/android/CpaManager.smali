.class public final Lcom/kddi/android/CpaManager;
.super Ljava/lang/Object;
.source "CpaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kddi/android/CpaManager$Settings;,
        Lcom/kddi/android/CpaManager$ConnInfo;
    }
.end annotation


# static fields
.field private static final APN_INDEX:I = 0x2

.field public static AUTHENTICATION_ERROR:I = 0x0

.field private static final CARRIER_ENABLED_INDEX:I = 0x4

.field private static final CHANGE_MODE_REQUEST_ACTION:Ljava/lang/String; = "com.kddi.android.cpa.CHANGE_MODE_REQUEST_ACTION"

.field public static final CONNECTED:I = 0x2

.field public static final CONNECTING:I = 0x1

.field public static final DISCONNECTED:I = 0x4

.field public static final DISCONNECTING:I = 0x3

.field private static final ID_INDEX:I = 0x0

.field private static MODE_CPA:Ljava/lang/String; = null

.field private static MODE_DEFAULT:Ljava/lang/String; = null

.field private static MODE_NAVI:Ljava/lang/String; = null

.field private static final NAME_INDEX:I = 0x1

.field public static PARAMETER_ERROR:I = 0x0

.field public static RADIO_NOT_AVAILABLE:I = 0x0

.field public static SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CpaManager"

.field private static final TYPES_INDEX:I = 0x3

.field public static UNKNOWN_ERROR:I


# instance fields
.field private DBG:Z

.field mContext:Landroid/content/Context;

.field private mSelectedKey:Ljava/lang/String;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string v0, "NAVI"

    sput-object v0, MODE_NAVI:Ljava/lang/String;

    .line 28
    const-string v0, "DEFAULT"

    sput-object v0, MODE_DEFAULT:Ljava/lang/String;

    .line 29
    const-string v0, "DEFAULT_ON_CPA"

    sput-object v0, MODE_CPA:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput v0, SUCCESS:I

    .line 39
    const/4 v0, -0x1

    sput v0, PARAMETER_ERROR:I

    .line 40
    const/4 v0, -0x2

    sput v0, RADIO_NOT_AVAILABLE:I

    .line 41
    const/4 v0, -0x3

    sput v0, AUTHENTICATION_ERROR:I

    .line 42
    const/4 v0, -0x4

    sput v0, UNKNOWN_ERROR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string/jumbo v0, "ro.product_ship"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4a

    move v0, v1

    :goto_e
    iput-boolean v0, p0, DBG:Z

    .line 54
    iput v1, p0, mState:I

    .line 104
    iget-boolean v0, p0, DBG:Z

    if-eqz v0, :cond_1d

    const-string v0, "CpaManager"

    const-string v1, "#########################"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_1d
    const-string v0, "CpaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CpaManager constructor! context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-boolean v0, p0, DBG:Z

    if-eqz v0, :cond_40

    const-string v0, "CpaManager"

    const-string v1, "#########################"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_40
    if-nez p1, :cond_4c

    .line 108
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "context is null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_4a
    const/4 v0, 0x0

    goto :goto_e

    .line 110
    :cond_4c
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 113
    invoke-direct {p0}, checkPermission()Z

    move-result v0

    if-nez v0, :cond_63

    .line 114
    const-string v0, "CpaManager"

    const-string v1, "CpaManager permission err!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "checkPermission() return false"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_63
    return-void
.end method

.method private checkPermission()Z
    .registers 5

    .prologue
    .line 216
    iget-object v1, p0, mContext:Landroid/content/Context;

    if-eqz v1, :cond_2a

    .line 217
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "com.kddi.android.permission.MANAGE_CPA"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 218
    .local v0, "permissionGrantStatus":I
    if-nez v0, :cond_10

    .line 219
    const/4 v1, 0x1

    .line 226
    .end local v0    # "permissionGrantStatus":I
    :goto_f
    return v1

    .line 221
    .restart local v0    # "permissionGrantStatus":I
    :cond_10
    const-string v1, "CpaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPermission() err!! permissionGrantStatus ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v0    # "permissionGrantStatus":I
    :goto_28
    const/4 v1, 0x0

    goto :goto_f

    .line 224
    :cond_2a
    const-string v1, "CpaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPermission() err!! mContext ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 237
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 238
    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_4
    if-eqz v0, :cond_62

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_62

    .line 239
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 240
    .local v3, "interf":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "pdp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "lo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 242
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v4

    .line 243
    .local v4, "ips":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2f
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 244
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 245
    .local v2, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_2f

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_2f

    .line 246
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_4e
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_4e} :catch_50

    move-result-object v5

    .line 255
    .end local v2    # "inetAddress":Ljava/net/InetAddress;
    .end local v3    # "interf":Ljava/net/NetworkInterface;
    .end local v4    # "ips":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_4f
    return-object v5

    .line 250
    :catch_50
    move-exception v1

    .line 251
    .local v1, "ex":Ljava/net/SocketException;
    const-string v5, "CpaManager"

    invoke-virtual {v1}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v5, Landroid/os/RemoteException;

    const-string v6, "error!! get local address"

    invoke-direct {v5, v6}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 254
    .end local v1    # "ex":Ljava/net/SocketException;
    :cond_62
    const-string v5, "CpaManager"

    const-string v6, "getLocalIpAddress() == null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v5, 0x0

    goto :goto_4f
.end method

.method private getState()I
    .registers 4

    .prologue
    .line 231
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "kddi_cpa_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public changeMode(Ljava/lang/String;Lcom/kddi/android/CpaManager$Settings;)I
    .registers 8
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "settings"    # Lcom/kddi/android/CpaManager$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 130
    const-string v2, "CpaManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeMode() mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " settings="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-nez p1, :cond_2d

    .line 134
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "mode is null!! "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_2d
    sget-object v2, MODE_NAVI:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 137
    if-eqz p2, :cond_3b

    iget-object v2, p2, Lcom/kddi/android/CpaManager$Settings;->apn:Ljava/lang/String;

    if-nez v2, :cond_44

    .line 138
    :cond_3b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "mode is navi but settings is null!! "

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_44
    :try_start_44
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 145
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.kddi.android.cpa.CHANGE_MODE_REQUEST_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string/jumbo v2, "mode"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    if-eqz p2, :cond_96

    .line 148
    const-string/jumbo v2, "settings.apn"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->apn:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string/jumbo v2, "settings.userId"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string/jumbo v2, "settings.password"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->password:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string/jumbo v2, "settings.authType"

    iget v3, p2, Lcom/kddi/android/CpaManager$Settings;->authType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    const-string/jumbo v2, "settings.proxyHost"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->proxyHost:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string/jumbo v2, "settings.proxyPort"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->proxyPort:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string/jumbo v2, "settings.dns1"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->dns1:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string/jumbo v2, "settings.dns2"

    iget-object v3, p2, Lcom/kddi/android/CpaManager$Settings;->dns2:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    :cond_96
    iget-boolean v2, p0, DBG:Z

    if-eqz v2, :cond_b2

    const-string v2, "CpaManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display for Broadcating Intent ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_b2
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_b7} :catch_ba

    .line 164
    sget v2, SUCCESS:I

    return v2

    .line 160
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_ba
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "error!! send intent for chang mode"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public declared-synchronized getConnInfo()Lcom/kddi/android/CpaManager$ConnInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 182
    monitor-enter p0

    :try_start_2
    iget-boolean v4, p0, DBG:Z

    if-eqz v4, :cond_d

    const-string v4, "CpaManager"

    const-string v5, "getConnInfo() start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_d
    new-instance v0, Lcom/kddi/android/CpaManager$ConnInfo;

    invoke-direct {v0}, Lcom/kddi/android/CpaManager$ConnInfo;-><init>()V

    .line 184
    .local v0, "connInfo":Lcom/kddi/android/CpaManager$ConnInfo;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/net/InetAddress;

    iput-object v4, v0, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_ed

    .line 188
    :try_start_17
    invoke-direct {p0}, getState()I

    move-result v4

    if-ne v4, v6, :cond_f0

    .line 190
    invoke-static {}, getLocalIpAddress()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "localIP":Ljava/lang/String;
    invoke-virtual {p0}, getCurrentDns()[Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "dns":[Ljava/lang/String;
    iget-boolean v4, p0, DBG:Z

    if-eqz v4, :cond_41

    const-string v4, "CpaManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getLocalIpAddress() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_41
    iget-boolean v4, p0, DBG:Z

    if-eqz v4, :cond_6d

    const-string v4, "CpaManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getCurrentDns() dns1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dns[1] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_6d} :catch_e4
    .catchall {:try_start_17 .. :try_end_6d} :catchall_ed

    .line 195
    :cond_6d
    :try_start_6d
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    iput-object v4, v0, Lcom/kddi/android/CpaManager$ConnInfo;->localAddress:Ljava/net/InetAddress;

    .line 196
    iget-object v4, v0, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    aput-object v6, v4, v5

    .line 197
    iget-object v4, v0, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    aput-object v6, v4, v5

    .line 198
    iget-boolean v4, p0, DBG:Z

    if-eqz v4, :cond_a9

    const-string v4, "CpaManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getConnInfo() localAddress  = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/kddi/android/CpaManager$ConnInfo;->localAddress:Ljava/net/InetAddress;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_a9
    iget-boolean v4, p0, DBG:Z

    if-eqz v4, :cond_d9

    const-string v4, "CpaManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getConnInfo() dns1 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  dns2 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/kddi/android/CpaManager$ConnInfo;->dnsAddress:[Ljava/net/InetAddress;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6d .. :try_end_d9} :catch_db
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_d9} :catch_e4
    .catchall {:try_start_6d .. :try_end_d9} :catchall_ed

    .line 210
    .end local v0    # "connInfo":Lcom/kddi/android/CpaManager$ConnInfo;
    .end local v1    # "dns":[Ljava/lang/String;
    .end local v3    # "localIP":Ljava/lang/String;
    :cond_d9
    :goto_d9
    monitor-exit p0

    return-object v0

    .line 200
    .restart local v0    # "connInfo":Lcom/kddi/android/CpaManager$ConnInfo;
    .restart local v1    # "dns":[Ljava/lang/String;
    .restart local v3    # "localIP":Ljava/lang/String;
    :catch_db
    move-exception v2

    .line 201
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_dc
    new-instance v4, Landroid/os/RemoteException;

    const-string v5, "error!! get localip dns address for navi cpa"

    invoke-direct {v4, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_e4} :catch_e4
    .catchall {:try_start_dc .. :try_end_e4} :catchall_ed

    .line 207
    .end local v1    # "dns":[Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    .end local v3    # "localIP":Ljava/lang/String;
    :catch_e4
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/Exception;
    :try_start_e5
    new-instance v4, Landroid/os/RemoteException;

    const-string v5, "error!! getConnInfo()"

    invoke-direct {v4, v5}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_ed
    .catchall {:try_start_e5 .. :try_end_ed} :catchall_ed

    .line 182
    .end local v0    # "connInfo":Lcom/kddi/android/CpaManager$ConnInfo;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_ed
    move-exception v4

    monitor-exit p0

    throw v4

    .line 204
    .restart local v0    # "connInfo":Lcom/kddi/android/CpaManager$ConnInfo;
    :cond_f0
    const/4 v0, 0x0

    goto :goto_d9
.end method

.method public declared-synchronized getConnStatus()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 170
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, getState()I

    move-result v0

    .line 171
    .local v0, "state":I
    const-string v1, "CpaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnStatus() state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v1, 0x1

    if-eq v0, v1, :cond_34

    const/4 v1, 0x2

    if-eq v0, v1, :cond_34

    const/4 v1, 0x3

    if-eq v0, v1, :cond_34

    const/4 v1, 0x4

    if-eq v0, v1, :cond_34

    .line 173
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "error!! get state for navi cpa"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_31

    .line 170
    .end local v0    # "state":I
    :catchall_31
    move-exception v1

    monitor-exit p0

    throw v1

    .line 176
    .restart local v0    # "state":I
    :cond_34
    :try_start_34
    invoke-direct {p0}, getState()I
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_31

    move-result v1

    monitor-exit p0

    return v1
.end method

.method public declared-synchronized getCurrentDns()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 260
    monitor-enter p0

    const/4 v1, 0x2

    :try_start_2
    new-array v0, v1, [Ljava/lang/String;

    .line 261
    .local v0, "dns":[Ljava/lang/String;
    const-string/jumbo v1, "sys.cpa_kdd_hipri"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 262
    const/4 v1, 0x0

    const-string/jumbo v2, "net.rmnet0.dns1"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 263
    const/4 v1, 0x1

    const-string/jumbo v2, "net.rmnet0.dns2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 265
    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-eqz v1, :cond_42

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_42

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "undefined"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 266
    :cond_42
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 268
    :cond_46
    const/4 v1, 0x1

    aget-object v1, v0, v1

    if-eqz v1, :cond_60

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_60

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string/jumbo v2, "undefined"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 269
    :cond_60
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_64
    .catchall {:try_start_2 .. :try_end_64} :catchall_b7

    .line 282
    :cond_64
    :goto_64
    monitor-exit p0

    return-object v0

    .line 272
    :cond_66
    const/4 v1, 0x0

    :try_start_67
    const-string/jumbo v2, "net.dns1"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 273
    const/4 v1, 0x1

    const-string/jumbo v2, "net.dns2"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 275
    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-eqz v1, :cond_94

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_94

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "undefined"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 276
    :cond_94
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 278
    :cond_98
    const/4 v1, 0x1

    aget-object v1, v0, v1

    if-eqz v1, :cond_b2

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b2

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string/jumbo v2, "undefined"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 279
    :cond_b2
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1
    :try_end_b6
    .catchall {:try_start_67 .. :try_end_b6} :catchall_b7

    goto :goto_64

    .line 260
    .end local v0    # "dns":[Ljava/lang/String;
    :catchall_b7
    move-exception v1

    monitor-exit p0

    throw v1
.end method
