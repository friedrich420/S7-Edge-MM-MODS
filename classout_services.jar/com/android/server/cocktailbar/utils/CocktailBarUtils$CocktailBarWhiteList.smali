.class public Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;
.super Ljava/lang/Object;
.source "CocktailBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/utils/CocktailBarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailBarWhiteList"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAllowedCocktailCategory(Lcom/samsung/android/cocktailbar/CocktailProviderInfo;I)Z
    .registers 3
    .param p0, "providerInfo"    # Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .param p1, "userId"    # I

    .prologue
    .line 45
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    invoke-static {v0}, isCategoryOfWhiteList(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 46
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, isSystemApplication(Ljava/lang/String;I)Z

    move-result v0

    .line 48
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_12
.end method

.method private static isCategoryOfWhiteList(I)Z
    .registers 2
    .param p0, "category"    # I

    .prologue
    .line 52
    sparse-switch p0, :sswitch_data_8

    .line 57
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 55
    :sswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 52
    nop

    :sswitch_data_8
    .sparse-switch
        0x20 -> :sswitch_5
        0x80 -> :sswitch_5
    .end sparse-switch
.end method

.method public static isSystemApplication(Ljava/lang/String;I)Z
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 61
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 63
    .local v1, "packageManager":Landroid/content/pm/IPackageManager;
    const/16 v4, 0x40

    :try_start_7
    invoke-interface {v1, p0, v4, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 65
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_16

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_17

    and-int/lit16 v4, v4, 0x81

    if-eqz v4, :cond_16

    .line 67
    const/4 v3, 0x1

    .line 73
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_16
    :goto_16
    return v3

    .line 71
    :catch_17
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_16
.end method
