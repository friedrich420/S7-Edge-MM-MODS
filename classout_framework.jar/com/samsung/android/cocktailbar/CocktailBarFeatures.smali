.class public Lcom/samsung/android/cocktailbar/CocktailBarFeatures;
.super Ljava/lang/Object;
.source "CocktailBarFeatures.java"


# static fields
.field public static final CATEGORY_NORMAL:Ljava/lang/String; = "normal"

.field public static final COCKTAIL_ENABLED:Z = true

.field private static final FEATURE_COCKTAIL_BAR:I = 0x1

.field private static final FEATURE_COCKTAIL_PANEL:I = 0x2

.field private static final FEATURE_NONE:I

.field private static mCategoryFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCocktailFeature:I

.field private static sQueriedTypeCocktail:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 44
    sput-boolean v0, sQueriedTypeCocktail:Z

    .line 46
    sput v0, sCocktailFeature:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureCocktailFeature(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 54
    sget-boolean v1, sQueriedTypeCocktail:Z

    if-nez v1, :cond_24

    .line 55
    sput-boolean v2, sQueriedTypeCocktail:Z

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_e

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 61
    :cond_e
    const/4 v1, 0x1

    :try_start_f
    const-string v2, "com.sec.feature.cocktailbar"

    invoke-static {v0, v1, v2}, verifyCocktailFeature(Landroid/content/pm/PackageManager;ILjava/lang/String;)I

    move-result v1

    sput v1, sCocktailFeature:I

    .line 63
    sget v1, sCocktailFeature:I

    if-nez v1, :cond_24

    .line 64
    const/4 v1, 0x2

    const-string v2, "com.sec.feature.cocktailpanel"

    invoke-static {v0, v1, v2}, verifyCocktailFeature(Landroid/content/pm/PackageManager;ILjava/lang/String;)I

    move-result v1

    sput v1, sCocktailFeature:I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_24} :catch_25

    .line 70
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_24
    :goto_24
    return-void

    .line 67
    .restart local v0    # "pm":Landroid/content/pm/PackageManager;
    :catch_25
    move-exception v1

    goto :goto_24
.end method

.method public static declared-synchronized getCategroyFilters(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    const-class v6, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;

    monitor-enter v6

    :try_start_3
    sget-object v5, mCategoryFilter:Ljava/util/ArrayList;

    if-nez v5, :cond_2a

    .line 139
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, mCategoryFilter:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1070093

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "strings":[Ljava/lang/String;
    if-eqz v4, :cond_2a

    .line 143
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1e
    if-ge v1, v2, :cond_2a

    aget-object v3, v0, v1

    .line 144
    .local v3, "string":Ljava/lang/String;
    sget-object v5, mCategoryFilter:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 149
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "string":Ljava/lang/String;
    .end local v4    # "strings":[Ljava/lang/String;
    :cond_2a
    sget-object v5, mCategoryFilter:Ljava/util/ArrayList;
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2e

    monitor-exit v6

    return-object v5

    .line 138
    :catchall_2e
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static isSupportCategory(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 125
    sget-object v0, mCategoryFilter:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 126
    invoke-static {p0}, getCategroyFilters(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 129
    :cond_7
    sget-object v0, mCategoryFilter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    sget-object v0, mCategoryFilter:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 130
    :cond_17
    const/4 v0, 0x1

    .line 133
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static isSupportCocktailBar(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 93
    invoke-static {p0}, ensureCocktailFeature(Landroid/content/Context;)V

    .line 95
    sget v1, sCocktailFeature:I

    if-ne v1, v0, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isSupportCocktailPanel(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 106
    invoke-static {p0}, ensureCocktailFeature(Landroid/content/Context;)V

    .line 108
    sget v1, sCocktailFeature:I

    if-eq v1, v0, :cond_d

    sget v1, sCocktailFeature:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isSystemBarType(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 120
    invoke-static {p0}, isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static verifyCocktailFeature(Landroid/content/pm/PackageManager;ILjava/lang/String;)I
    .registers 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "feature"    # I
    .param p2, "systemFeature"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, "result":I
    if-eqz p0, :cond_e

    .line 76
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v1, p1

    .line 82
    :goto_b
    return v1

    :cond_c
    move v1, v2

    .line 76
    goto :goto_b

    .line 79
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "system/etc/permissions/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_35

    move v1, p1

    :goto_34
    goto :goto_b

    :cond_35
    move v1, v2

    goto :goto_34
.end method
