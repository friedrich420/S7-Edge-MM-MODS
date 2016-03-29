.class public final Lcom/android/settings/search/Ranking;
.super Ljava/lang/Object;
.source "Ranking.java"


# static fields
.field public static SUB_DEPTH:I

.field private static sBaseRankMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sCurrentBaseRank:I

.field private static sRankMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 101
    const/16 v0, 0x800

    sput v0, Lcom/android/settings/search/Ranking;->sCurrentBaseRank:I

    .line 103
    const/16 v0, 0x64

    sput v0, Lcom/android/settings/search/Ranking;->SUB_DEPTH:I

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/search/Ranking;->sRankMap:Ljava/util/HashMap;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/search/Ranking;->sBaseRankMap:Ljava/util/HashMap;

    .line 188
    sget-object v0, Lcom/android/settings/search/Ranking;->sBaseRankMap:Ljava/util/HashMap;

    const-string v1, "com.android.settings"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/android/settings/search/Ranking;->sRankMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 193
    return-void
.end method

.method public static getBaseRankForAuthority(Ljava/lang/String;)I
    .locals 4
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 257
    sget-object v2, Lcom/android/settings/search/Ranking;->sBaseRankMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 258
    :try_start_0
    sget-object v1, Lcom/android/settings/search/Ranking;->sBaseRankMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 259
    .local v0, "base":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2

    .line 264
    :goto_0
    return v1

    .line 262
    :cond_0
    sget v1, Lcom/android/settings/search/Ranking;->sCurrentBaseRank:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/settings/search/Ranking;->sCurrentBaseRank:I

    .line 263
    sget-object v1, Lcom/android/settings/search/Ranking;->sBaseRankMap:Ljava/util/HashMap;

    sget v3, Lcom/android/settings/search/Ranking;->sCurrentBaseRank:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget v1, Lcom/android/settings/search/Ranking;->sCurrentBaseRank:I

    monitor-exit v2

    goto :goto_0

    .line 265
    .end local v0    # "base":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getCategory(Ljava/lang/String;)I
    .locals 4
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "categoryId":Ljava/lang/Integer;
    sget-object v1, Lcom/android/settings/search/Ranking;->sRankMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/search/Ranking;->sRankMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    aget-object v0, v1, v2

    .end local v0    # "categoryId":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 216
    .restart local v0    # "categoryId":Ljava/lang/Integer;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    return v1

    .line 215
    :cond_0
    const-string v1, "Ranking"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no contains in Ranking: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getInfo(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 244
    sget-object v0, Lcom/android/settings/search/Ranking;->sRankMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/search/Ranking;->sRankMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getMenuPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "path":Ljava/lang/String;
    sget-object v1, Lcom/android/settings/search/Ranking;->sRankMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/search/Ranking;->sRankMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x4

    aget-object v0, v1, v2

    .end local v0    # "path":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 230
    .restart local v0    # "path":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 229
    :cond_0
    const-string v1, "Ranking"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no getMenuPath in Ranking: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMenuType(Ljava/lang/String;)I
    .locals 4
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "type":Ljava/lang/Integer;
    sget-object v1, Lcom/android/settings/search/Ranking;->sRankMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/search/Ranking;->sRankMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    aget-object v0, v1, v2

    .end local v0    # "type":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 223
    .restart local v0    # "type":Ljava/lang/Integer;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    return v1

    .line 222
    :cond_0
    const-string v1, "Ranking"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no getMenuType in Ranking: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static getRankForClassName(Ljava/lang/String;)I
    .locals 4
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x400

    .line 196
    sget-object v1, Lcom/android/settings/search/Ranking;->sRankMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/search/Ranking;->sRankMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 198
    :goto_0
    return v1

    .line 197
    :cond_1
    sget-object v1, Lcom/android/settings/search/Ranking;->sRankMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v0, v1, v3

    check-cast v0, Ljava/lang/Integer;

    .line 198
    .local v0, "rank":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static setInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "info"    # [Ljava/lang/Object;

    .prologue
    .line 234
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/settings/search/Ranking;->sRankMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    sget-object v0, Lcom/android/settings/search/Ranking;->sRankMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_0
    return-void
.end method

.method public static setRankByAuthority(Ljava/lang/String;I)V
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "rank"    # I

    .prologue
    .line 202
    sget-object v0, Lcom/android/settings/search/Ranking;->sBaseRankMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    sget-object v0, Lcom/android/settings/search/Ranking;->sBaseRankMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static size()I
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lcom/android/settings/search/Ranking;->sRankMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
