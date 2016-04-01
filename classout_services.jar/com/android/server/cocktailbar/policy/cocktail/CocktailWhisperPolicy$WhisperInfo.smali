.class Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;
.super Ljava/lang/Object;
.source "CocktailWhisperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WhisperInfo"
.end annotation


# instance fields
.field cocktailId:I

.field packageName:Ljava/lang/String;

.field uid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "whisper"    # Ljava/lang/String;
    .param p3, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-virtual {p3}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v3

    iput v3, p0, cocktailId:I

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 141
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_1e

    if-eqz p2, :cond_1e

    .line 143
    const/4 v3, 0x0

    :try_start_12
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 144
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1e

    .line 145
    iput-object p2, p0, packageName:Ljava/lang/String;

    .line 146
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, uid:I
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_1e} :catch_33

    .line 152
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1e
    :goto_1e
    iget-object v3, p0, packageName:Ljava/lang/String;

    if-nez v3, :cond_32

    .line 153
    invoke-virtual {p3}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, packageName:Ljava/lang/String;

    .line 154
    invoke-virtual {p3}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v3

    iput v3, p0, uid:I

    .line 156
    :cond_32
    return-void

    .line 148
    :catch_33
    move-exception v1

    .line 149
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    # getter for: Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WhisperInfo packageName is wrong"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public constructor <init>(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .registers 3
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    iput v0, p0, cocktailId:I

    .line 134
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, packageName:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v0

    iput v0, p0, uid:I

    .line 136
    return-void
.end method
