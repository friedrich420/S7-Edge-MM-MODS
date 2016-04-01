.class Lcom/android/server/net/NetPluginDelegate;
.super Ljava/lang/Object;
.source "NetPluginDelegate.java"


# static fields
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "ConnectivityExtension"

.field private static tetherExtensionClass:Ljava/lang/Class;

.field private static tetherExtensionObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-object v0, tetherExtensionClass:Ljava/lang/Class;

    .line 46
    sput-object v0, tetherExtensionObj:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getTetherStats(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .registers 9
    .param p0, "uidStats"    # Landroid/net/NetworkStats;
    .param p1, "devStats"    # Landroid/net/NetworkStats;
    .param p2, "xtStats"    # Landroid/net/NetworkStats;

    .prologue
    .line 50
    invoke-static {}, loadTetherExtJar()V

    .line 52
    :try_start_3
    sget-object v1, tetherExtensionClass:Ljava/lang/Class;

    const-string/jumbo v2, "getTetherStats"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/net/NetworkStats;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/net/NetworkStats;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/net/NetworkStats;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, tetherExtensionObj:Ljava/lang/Object;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2f} :catch_30

    .line 59
    :goto_2f
    return-void

    .line 55
    :catch_30
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 57
    const-string v1, "ConnectivityExtension"

    const-string/jumbo v2, "error in invoke method"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method private static loadTetherExtJar()V
    .registers 6

    .prologue
    .line 74
    const-string v2, "com.qualcomm.qti.tetherstatsextension.TetherStatsReporting"

    .line 75
    .local v2, "realProvider":Ljava/lang/String;
    const-string v3, "/system/framework/ConnectivityExt.jar"

    .line 76
    .local v3, "realProviderPath":Ljava/lang/String;
    sget-object v4, tetherExtensionClass:Ljava/lang/Class;

    if-nez v4, :cond_27

    sget-object v4, tetherExtensionObj:Ljava/lang/Object;

    if-nez v4, :cond_27

    .line 80
    :try_start_c
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v4, "/system/framework/ConnectivityExt.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 83
    .local v0, "classLoader":Ldalvik/system/PathClassLoader;
    const-string v4, "com.qualcomm.qti.tetherstatsextension.TetherStatsReporting"

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, tetherExtensionClass:Ljava/lang/Class;

    .line 84
    sget-object v4, tetherExtensionClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    sput-object v4, tetherExtensionObj:Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_27} :catch_28

    .line 92
    .end local v0    # "classLoader":Ldalvik/system/PathClassLoader;
    :cond_27
    :goto_27
    return-void

    .line 87
    :catch_28
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    const-string v4, "ConnectivityExtension"

    const-string/jumbo v5, "unable to ConnectivityExt jar"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method static setQuota(Ljava/lang/String;J)V
    .registers 10
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "quota"    # J

    .prologue
    .line 62
    invoke-static {}, loadTetherExtJar()V

    .line 64
    :try_start_3
    sget-object v1, tetherExtensionClass:Ljava/lang/Class;

    const-string/jumbo v2, "setQuota"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v2, tetherExtensionObj:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2b} :catch_2c

    .line 69
    :goto_2b
    return-void

    .line 66
    :catch_2c
    move-exception v0

    .line 67
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "ConnectivityExtension"

    const-string v2, "Error calling setQuota Method on extension jar"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method
