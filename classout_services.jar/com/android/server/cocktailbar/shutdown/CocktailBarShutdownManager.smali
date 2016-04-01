.class public Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;
.super Ljava/lang/Object;
.source "CocktailBarShutdownManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMainHandler:Landroid/os/Handler;

.field private mWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-class v0, Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mWhiteList:Ljava/util/HashSet;

    .line 26
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, mMainHandler:Landroid/os/Handler;

    .line 28
    iget-object v0, p0, mWhiteList:Ljava/util/HashSet;

    const-string v1, "com.samsung.android.app.cocktailbarservice"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;

    .prologue
    .line 16
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isAllowedCallingPackage(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    if-nez p1, :cond_d

    .line 59
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "isAllowedCallingPackage : packageName is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_c
    :goto_c
    return v3

    .line 62
    :cond_d
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 65
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_14
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_17} :catch_2c

    move-result-object v1

    .line 70
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_c

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x81

    if-eqz v5, :cond_c

    .line 72
    iget-object v3, p0, mWhiteList:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    move v3, v4

    .line 73
    goto :goto_c

    .line 66
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_2c
    move-exception v0

    .line 67
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "isAllowedCallingPackage : invalid callingPackage"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_36
    move v3, v4

    .line 75
    goto :goto_c
.end method


# virtual methods
.method public reboot(Ljava/lang/String;)V
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, isAllowedCallingPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 46
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "reboot : invalid callingPackage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_e
    return-void

    .line 49
    :cond_f
    iget-object v0, p0, mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager$2;-><init>(Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e
.end method

.method public shutdown(Ljava/lang/String;)V
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, isAllowedCallingPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 33
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "shutdown : invalid callingPackage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_e
    return-void

    .line 36
    :cond_f
    iget-object v0, p0, mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager$1;-><init>(Lcom/android/server/cocktailbar/shutdown/CocktailBarShutdownManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e
.end method
