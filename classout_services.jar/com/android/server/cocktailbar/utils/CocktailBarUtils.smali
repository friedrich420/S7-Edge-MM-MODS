.class public Lcom/android/server/cocktailbar/utils/CocktailBarUtils;
.super Ljava/lang/Object;
.source "CocktailBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;,
        Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;
    }
.end annotation


# static fields
.field public static final EDM_FALSE:I = 0x0

.field public static final EDM_NULL:I = -0x1

.field public static final EDM_TRUE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 23
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "edmUri"    # Ljava/lang/String;
    .param p2, "projectionArgs"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 260
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 261
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 262
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_34

    .line 264
    :try_start_12
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 265
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_23} :catch_30
    .catchall {:try_start_12 .. :try_end_23} :catchall_36

    move-result v0

    if-eqz v0, :cond_2b

    .line 266
    const/4 v0, 0x1

    .line 272
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 275
    :goto_2a
    return v0

    .line 268
    :cond_2b
    const/4 v0, 0x0

    .line 272
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2a

    .line 270
    :catch_30
    move-exception v0

    .line 272
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_34
    const/4 v0, -0x1

    goto :goto_2a

    .line 272
    :catchall_36
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isExistKioskContainers(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 33
    invoke-static {p0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 34
    const-string/jumbo v3, "persona"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 35
    .local v1, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v0

    .line 36
    .local v0, "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1d

    .line 40
    .end local v0    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v1    # "pm":Landroid/os/PersonaManager;
    :goto_1c
    return v2

    :cond_1d
    const/4 v2, 0x0

    goto :goto_1c
.end method
