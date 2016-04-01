.class public Landroid/service/notification/NotificationListenerService$RankingMap;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RankingMap"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/NotificationListenerService$RankingMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIntercepted:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

.field private mRanks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityOverrides:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1030
    new-instance v0, Landroid/service/notification/NotificationListenerService$RankingMap$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$RankingMap$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 2
    .param p1, "rankingUpdate"    # Landroid/service/notification/NotificationRankingUpdate;

    .prologue
    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 924
    iput-object p1, p0, mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    .line 925
    return-void
.end method

.method synthetic constructor <init>(Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationListenerService$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/service/notification/NotificationRankingUpdate;
    .param p2, "x1"    # Landroid/service/notification/NotificationListenerService$1;

    .prologue
    .line 917
    invoke-direct {p0, p1}, <init>(Landroid/service/notification/NotificationRankingUpdate;)V

    return-void
.end method

.method private buildInterceptedSetLocked()V
    .registers 4

    .prologue
    .line 1004
    iget-object v1, p0, mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v1}, Landroid/service/notification/NotificationRankingUpdate;->getInterceptedKeys()[Ljava/lang/String;

    move-result-object v0

    .line 1005
    .local v0, "dndInterceptedKeys":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v1, p0, mIntercepted:Landroid/util/ArraySet;

    .line 1006
    iget-object v1, p0, mIntercepted:Landroid/util/ArraySet;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1007
    return-void
.end method

.method private buildRanksLocked()V
    .registers 6

    .prologue
    .line 994
    iget-object v3, p0, mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v3}, Landroid/service/notification/NotificationRankingUpdate;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v2

    .line 995
    .local v2, "orderedKeys":[Ljava/lang/String;
    new-instance v3, Landroid/util/ArrayMap;

    array-length v4, v2

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, mRanks:Landroid/util/ArrayMap;

    .line 996
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v3, v2

    if-ge v0, v3, :cond_20

    .line 997
    aget-object v1, v2, v0

    .line 998
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, mRanks:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 1000
    .end local v1    # "key":Ljava/lang/String;
    :cond_20
    return-void
.end method

.method private buildVisibilityOverridesLocked()V
    .registers 6

    .prologue
    .line 1011
    iget-object v3, p0, mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v3}, Landroid/service/notification/NotificationRankingUpdate;->getVisibilityOverrides()Landroid/os/Bundle;

    move-result-object v2

    .line 1012
    .local v2, "visibilityBundle":Landroid/os/Bundle;
    new-instance v3, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v3, p0, mVisibilityOverrides:Landroid/util/ArrayMap;

    .line 1013
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1014
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, mVisibilityOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 1016
    .end local v1    # "key":Ljava/lang/String;
    :cond_33
    return-void
.end method

.method private getRank(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 952
    monitor-enter p0

    .line 953
    :try_start_1
    iget-object v1, p0, mRanks:Landroid/util/ArrayMap;

    if-nez v1, :cond_8

    .line 954
    invoke-direct {p0}, buildRanksLocked()V

    .line 956
    :cond_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_18

    .line 957
    iget-object v1, p0, mRanks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 958
    .local v0, "rank":Ljava/lang/Integer;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_17
    return v1

    .line 956
    .end local v0    # "rank":Ljava/lang/Integer;
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v1

    .line 958
    .restart local v0    # "rank":Ljava/lang/Integer;
    :cond_1b
    const/4 v1, -0x1

    goto :goto_17
.end method

.method private getVisibilityOverride(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 980
    monitor-enter p0

    .line 981
    :try_start_1
    iget-object v1, p0, mVisibilityOverrides:Landroid/util/ArrayMap;

    if-nez v1, :cond_8

    .line 982
    invoke-direct {p0}, buildVisibilityOverridesLocked()V

    .line 984
    :cond_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_16

    .line 985
    iget-object v1, p0, mVisibilityOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 986
    .local v0, "overide":Ljava/lang/Integer;
    if-nez v0, :cond_19

    .line 987
    const/16 v1, -0x3e8

    .line 989
    :goto_15
    return v1

    .line 984
    .end local v0    # "overide":Ljava/lang/Integer;
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1

    .line 989
    .restart local v0    # "overide":Ljava/lang/Integer;
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_15
.end method

.method private isAmbient(Ljava/lang/String;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 962
    iget-object v3, p0, mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v3}, Landroid/service/notification/NotificationRankingUpdate;->getFirstAmbientIndex()I

    move-result v0

    .line 963
    .local v0, "firstAmbientIndex":I
    if-gez v0, :cond_a

    .line 967
    :cond_9
    :goto_9
    return v2

    .line 966
    :cond_a
    invoke-direct {p0, p1}, getRank(Ljava/lang/String;)I

    move-result v1

    .line 967
    .local v1, "rank":I
    if-ltz v1, :cond_9

    if-lt v1, v0, :cond_9

    const/4 v2, 0x1

    goto :goto_9
.end method

.method private isIntercepted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 971
    monitor-enter p0

    .line 972
    :try_start_1
    iget-object v0, p0, mIntercepted:Landroid/util/ArraySet;

    if-nez v0, :cond_8

    .line 973
    invoke-direct {p0}, buildInterceptedSetLocked()V

    .line 975
    :cond_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    .line 976
    iget-object v0, p0, mIntercepted:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 975
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 1022
    const/4 v0, 0x0

    return v0
.end method

.method public getOrderedKeys()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 934
    iget-object v0, p0, mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {v0}, Landroid/service/notification/NotificationRankingUpdate;->getOrderedKeys()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z
    .registers 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "outRanking"    # Landroid/service/notification/NotificationListenerService$Ranking;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 945
    invoke-direct {p0, p1}, getRank(Ljava/lang/String;)I

    move-result v2

    .line 946
    .local v2, "rank":I
    invoke-direct {p0, p1}, isAmbient(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0, p1}, isIntercepted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    move v4, v6

    :goto_11
    invoke-direct {p0, p1}, getVisibilityOverride(Ljava/lang/String;)I

    move-result v5

    move-object v0, p2

    move-object v1, p1

    # invokes: Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZZI)V
    invoke-static/range {v0 .. v5}, Landroid/service/notification/NotificationListenerService$Ranking;->access$800(Landroid/service/notification/NotificationListenerService$Ranking;Ljava/lang/String;IZZI)V

    .line 948
    if-ltz v2, :cond_1f

    :goto_1c
    return v6

    :cond_1d
    move v4, v7

    .line 946
    goto :goto_11

    :cond_1f
    move v6, v7

    .line 948
    goto :goto_1c
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1027
    iget-object v0, p0, mRankingUpdate:Landroid/service/notification/NotificationRankingUpdate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1028
    return-void
.end method
