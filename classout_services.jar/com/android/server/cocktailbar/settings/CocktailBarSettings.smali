.class public Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
.super Ljava/lang/Object;
.source "CocktailBarSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    }
.end annotation


# static fields
.field private static final COCKTAIL_BAR_SEPARATER:C = ';'

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCocktailMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mEnabledCocktailListCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private mEnabledCocktailsStrCache:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "cocktailArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mCocktailMap:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 56
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, mResolver:Landroid/content/ContentResolver;

    .line 58
    iput p3, p0, mCurrentUserId:I

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 60
    invoke-direct {p0, p2}, initCocktailMap(Landroid/util/SparseArray;)V

    .line 61
    invoke-direct {p0}, updateEnabledCocktailList()V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    .prologue
    .line 22
    iget-object v0, p0, mCocktailMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    .prologue
    .line 22
    invoke-direct {p0}, updateEnabledCocktailListLocked()Z

    move-result v0

    return v0
.end method

.method private initCocktailMap(Landroid/util/SparseArray;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "cocktailArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    iget-object v5, p0, mCocktailMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 66
    :try_start_3
    iget-object v4, p0, mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 67
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 68
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_36

    .line 69
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 70
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    new-instance v3, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;-><init>(ILjava/lang/String;)V

    .line 71
    .local v3, "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    iget-object v4, p0, mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 73
    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v3    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    :cond_36
    monitor-exit v5

    .line 74
    return-void

    .line 73
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_38
    move-exception v4

    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v4
.end method

.method private static isLocalBinder()Z
    .registers 2

    .prologue
    .line 222
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private putEnabledCocktailsStr(Ljava/lang/String;)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, mResolver:Landroid/content/ContentResolver;

    const-string v1, "cocktail_bar_enabled_cocktails"

    iget v2, p0, mCurrentUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 99
    iput-object p1, p0, mEnabledCocktailsStrCache:Ljava/lang/String;

    .line 100
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putEnabledCocktailsStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method private updateEnabledCocktailList()V
    .registers 3

    .prologue
    .line 121
    invoke-static {}, isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 122
    iget-object v1, p0, mCocktailMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 123
    :try_start_9
    invoke-direct {p0}, updateEnabledCocktailListLocked()Z

    .line 124
    monitor-exit v1

    .line 136
    :goto_d
    return-void

    .line 124
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_e

    throw v0

    .line 126
    :cond_11
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;

    invoke-direct {v1, p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;-><init>(Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_d
.end method

.method private updateEnabledCocktailListLocked()Z
    .registers 6

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "changed":Z
    invoke-virtual {p0}, getEnabledCocktailsStr()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "enabledCocktailsStr":Ljava/lang/String;
    iget-object v4, p0, mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 150
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 151
    const/4 v4, 0x0

    .line 166
    :goto_11
    return v4

    .line 153
    :cond_12
    iget-object v4, p0, mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 154
    :goto_17
    iget-object v4, p0, mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 155
    iget-object v4, p0, mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "cocktailName":Ljava/lang/String;
    iget-object v4, p0, mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    .line 157
    .local v3, "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    if-eqz v3, :cond_35

    .line 158
    iget-object v4, p0, mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 160
    :cond_35
    const/4 v0, 0x1

    goto :goto_17

    .line 163
    .end local v1    # "cocktailName":Ljava/lang/String;
    .end local v3    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    :cond_37
    if-eqz v0, :cond_3e

    .line 164
    iget-object v4, p0, mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, setEnabledCocktailsLocked(Ljava/util/ArrayList;)V

    .line 166
    :cond_3e
    const/4 v4, 0x1

    goto :goto_11
.end method


# virtual methods
.method public getChangedCocktailIdsListLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "addedCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "removedCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 196
    .local v0, "backupEnabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 197
    invoke-virtual {p0}, getEnabledCocktailsStr()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, mEnabledCocktailsStrCache:Ljava/lang/String;

    .line 198
    iget-object v5, p0, mEnabledCocktailsStrCache:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4b

    .line 199
    iget-object v5, p0, mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    iget-object v6, p0, mEnabledCocktailsStrCache:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 200
    :cond_1e
    :goto_1e
    iget-object v5, p0, mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 201
    iget-object v5, p0, mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "cocktailName":Ljava/lang/String;
    iget-object v5, p0, mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    .line 203
    .local v3, "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    if-eqz v3, :cond_1e

    .line 204
    iget-object v5, p0, mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 206
    iget v5, v3, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;->cocktailId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 211
    .end local v1    # "cocktailName":Ljava/lang/String;
    .end local v3    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    :cond_4b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4f
    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 212
    .local v4, "oldCocktailName":Ljava/lang/String;
    iget-object v5, p0, mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    .line 213
    .restart local v3    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    if-eqz v3, :cond_4f

    .line 214
    iget-object v5, p0, mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 215
    iget v5, v3, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;->cocktailId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 219
    .end local v3    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    .end local v4    # "oldCocktailName":Ljava/lang/String;
    :cond_77
    return-void
.end method

.method public getEnableCocktailIds()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 112
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    .line 113
    .local v2, "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    if-eqz v2, :cond_b

    .line 114
    iget v4, v2, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;->cocktailId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 117
    .end local v2    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    .end local v3    # "name":Ljava/lang/String;
    :cond_2b
    return-object v0
.end method

.method public getEnabledCocktailsStr()Ljava/lang/String;
    .registers 4

    .prologue
    .line 104
    iget-object v0, p0, mResolver:Landroid/content/ContentResolver;

    const-string v1, "cocktail_bar_enabled_cocktails"

    iget v2, p0, mCurrentUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mEnabledCocktailsStrCache:Ljava/lang/String;

    .line 105
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getEnabledCocktailsStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mEnabledCocktailsStrCache:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, mEnabledCocktailsStrCache:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabledCocktail(I)Z
    .registers 7
    .param p1, "cocktailId"    # I

    .prologue
    .line 170
    iget-object v4, p0, mCocktailMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 171
    :try_start_3
    iget-object v3, p0, mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 172
    .local v2, "str":Ljava/lang/String;
    iget-object v3, p0, mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    .line 173
    .local v1, "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    iget v3, v1, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;->cocktailId:I

    if-ne v3, p1, :cond_9

    .line 174
    const/4 v3, 0x1

    monitor-exit v4

    .line 177
    .end local v1    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    .end local v2    # "str":Ljava/lang/String;
    :goto_23
    return v3

    :cond_24
    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_23

    .line 178
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_27
    move-exception v3

    monitor-exit v4
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v3
.end method

.method public isEnabledCocktail(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v4, p0, mCocktailMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 183
    :try_start_3
    iget-object v3, p0, mEnabledCocktailListCache:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 184
    .local v2, "str":Ljava/lang/String;
    iget-object v3, p0, mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    .line 185
    .local v1, "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    iget-object v3, v1, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 186
    const/4 v3, 0x1

    monitor-exit v4

    .line 189
    .end local v1    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    .end local v2    # "str":Ljava/lang/String;
    :goto_27
    return v3

    :cond_28
    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_27

    .line 190
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_2b
    move-exception v3

    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v3
.end method

.method public setCurrentUserId(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 82
    iput p1, p0, mCurrentUserId:I

    .line 83
    return-void
.end method

.method public setEnabledCocktailsLocked(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "cocktails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 87
    .local v0, "N":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_1f

    .line 89
    if-lez v2, :cond_13

    .line 90
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    :cond_13
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 94
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, putEnabledCocktailsStr(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public updateInstalledCocktails(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "cocktailArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    invoke-direct {p0, p1}, initCocktailMap(Landroid/util/SparseArray;)V

    .line 78
    invoke-direct {p0}, updateEnabledCocktailList()V

    .line 79
    return-void
.end method
