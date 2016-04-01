.class public Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;
.super Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;
.source "CocktailWhisperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentWhisperInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mWhisperInfoList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    .prologue
    .line 27
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/policy/cocktail/AbsCocktailPolicy;-><init>(Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;)V

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mWhisperInfoList:Landroid/util/SparseArray;

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mCurrentWhisperInfo:Landroid/util/SparseArray;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 28
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 18
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public changeResumePackage(Ljava/lang/String;)V
    .registers 10
    .param p1, "resumePackageName"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v7, p0, mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 106
    :try_start_3
    iget-object v2, p0, mCurrentWhisperInfo:Landroid/util/SparseArray;

    .line 107
    .local v2, "backup":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;>;"
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, p0, mCurrentWhisperInfo:Landroid/util/SparseArray;

    .line 108
    iget-object v6, p0, mWhisperInfoList:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 109
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v0, :cond_3a

    .line 110
    iget-object v6, p0, mWhisperInfoList:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;

    .line 111
    .local v5, "wi":Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;
    if-eqz v5, :cond_37

    iget-object v6, v5, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 112
    iget-object v6, p0, mWhisperInfoList:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 113
    .local v4, "id":I
    iget-object v6, p0, mCurrentWhisperInfo:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    iget-object v6, p0, mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    invoke-interface {v6, v4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;->onUpdateCocktail(I)V

    .line 109
    .end local v4    # "id":I
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 117
    .end local v5    # "wi":Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;
    :cond_3a
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 118
    .local v1, "S":I
    const/4 v3, 0x0

    :goto_3f
    if-ge v3, v1, :cond_55

    .line 119
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 120
    .restart local v4    # "id":I
    iget-object v6, p0, mCurrentWhisperInfo:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_52

    .line 121
    iget-object v6, p0, mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    invoke-interface {v6, v4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;->onRemoveUpdatableCocktail(I)V

    .line 118
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 124
    .end local v4    # "id":I
    :cond_55
    monitor-exit v7

    .line 125
    return-void

    .line 124
    .end local v0    # "N":I
    .end local v1    # "S":I
    .end local v2    # "backup":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;>;"
    .end local v3    # "i":I
    :catchall_57
    move-exception v6

    monitor-exit v7
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw v6
.end method

.method public establishPolicy(Lcom/samsung/android/cocktailbar/Cocktail;I)V
    .registers 9
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "state"    # I

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    const/16 v1, 0x200

    if-ne v0, v1, :cond_11

    .line 83
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    packed-switch p2, :pswitch_data_4e

    .line 99
    :goto_10
    :try_start_10
    monitor-exit v1

    .line 101
    :cond_11
    return-void

    .line 87
    :pswitch_12
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->whisper:Ljava/lang/String;

    if-eqz v0, :cond_34

    .line 88
    iget-object v0, p0, mWhisperInfoList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    new-instance v3, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->whisper:Ljava/lang/String;

    invoke-direct {v3, v4, v5, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/cocktailbar/Cocktail;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_10

    .line 99
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_31

    throw v0

    .line 90
    :cond_34
    :try_start_34
    iget-object v0, p0, mWhisperInfoList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    new-instance v3, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;

    invoke-direct {v3, p1}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;-><init>(Lcom/samsung/android/cocktailbar/Cocktail;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_10

    .line 94
    :pswitch_43
    iget-object v0, p0, mWhisperInfoList:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_4c
    .catchall {:try_start_34 .. :try_end_4c} :catchall_31

    goto :goto_10

    .line 84
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
        :pswitch_43
    .end packed-switch
.end method

.method public getCocktailType()I
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x6

    return v0
.end method

.method public isAcceptCloseCocktail(Lcom/samsung/android/cocktailbar/Cocktail;IZ)Z
    .registers 6
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "userId"    # I
    .param p3, "isUpdated"    # Z

    .prologue
    .line 58
    if-eqz p3, :cond_b

    .line 59
    iget-object v0, p0, mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;->onDisableUpdatableCocktail(II)V

    .line 61
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public isAcceptShowCocktail(Lcom/samsung/android/cocktailbar/Cocktail;IZ)Z
    .registers 5
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "userId"    # I
    .param p3, "isUpdated"    # Z

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public isAcceptUpdateCocktail(Lcom/samsung/android/cocktailbar/Cocktail;Lcom/android/server/cocktailbar/settings/CocktailBarSettings;Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;IZ)Z
    .registers 11
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;
    .param p2, "settings"    # Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
    .param p3, "modeManager"    # Lcom/android/server/cocktailbar/mode/CocktailBarModeManager;
    .param p4, "userId"    # I
    .param p5, "isUpdated"    # Z

    .prologue
    .line 39
    iget-object v3, p0, mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 40
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 41
    .local v0, "callingUid":I
    iget-object v2, p0, mCurrentWhisperInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;

    .line 42
    .local v1, "wi":Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;
    if-eqz v1, :cond_2b

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getUid()I

    move-result v2

    if-eq v0, v2, :cond_1f

    iget v2, v1, Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;->uid:I

    if-ne v0, v2, :cond_2b

    .line 43
    :cond_1f
    iget-object v2, p0, mListener:Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v4

    invoke-interface {v2, v4, p4}, Lcom/android/server/cocktailbar/policy/cocktail/CocktailPolicy$OnCocktailPolicyListener;->onEanbleUpdatableCocktail(II)V

    .line 44
    const/4 v2, 0x1

    monitor-exit v3

    .line 46
    :goto_2a
    return v2

    :cond_2b
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_2a

    .line 48
    .end local v0    # "callingUid":I
    .end local v1    # "wi":Lcom/android/server/cocktailbar/policy/cocktail/CocktailWhisperPolicy$WhisperInfo;
    :catchall_2e
    move-exception v2

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v2
.end method

.method public isMatchedPolicy(Lcom/samsung/android/cocktailbar/Cocktail;)Z
    .registers 6
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    const/4 v1, 0x0

    .line 66
    if-nez p1, :cond_c

    .line 67
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "isMatchedPolicy: cocktail is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_b
    :goto_b
    return v1

    .line 70
    :cond_c
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProviderInfo()Lcom/samsung/android/cocktailbar/CocktailProviderInfo;

    move-result-object v0

    .line 71
    .local v0, "pInfo":Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    if-eqz v0, :cond_b

    .line 72
    iget v2, v0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    packed-switch v2, :pswitch_data_1a

    goto :goto_b

    .line 74
    :pswitch_18
    const/4 v1, 0x1

    goto :goto_b

    .line 72
    :pswitch_data_1a
    .packed-switch 0x200
        :pswitch_18
    .end packed-switch
.end method
