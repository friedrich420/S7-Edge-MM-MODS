.class public Lcom/android/server/pm/PackageKeySetData;
.super Ljava/lang/Object;
.source "PackageKeySetData.java"


# static fields
.field static final KEYSET_UNASSIGNED:J = -0x1L


# instance fields
.field private final mKeySetAliases:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mProperSigningKeySet:J

.field private mUpgradeKeySets:[J


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mKeySetAliases:Landroid/util/ArrayMap;

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, mProperSigningKeySet:J

    .line 36
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageKeySetData;)V
    .registers 4
    .param p1, "original"    # Lcom/android/server/pm/PackageKeySetData;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mKeySetAliases:Landroid/util/ArrayMap;

    .line 39
    iget-wide v0, p1, mProperSigningKeySet:J

    iput-wide v0, p0, mProperSigningKeySet:J

    .line 40
    iget-object v0, p1, mUpgradeKeySets:[J

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([J)[J

    move-result-object v0

    iput-object v0, p0, mUpgradeKeySets:[J

    .line 41
    iget-object v0, p0, mKeySetAliases:Landroid/util/ArrayMap;

    iget-object v1, p1, mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected addDefinedKeySet(JLjava/lang/String;)V
    .registers 7
    .param p1, "ks"    # J
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, mKeySetAliases:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method protected addUpgradeKeySet(Ljava/lang/String;)V
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 54
    if-nez p1, :cond_3

    .line 66
    :goto_2
    return-void

    .line 59
    :cond_3
    iget-object v1, p0, mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 60
    .local v0, "ks":Ljava/lang/Long;
    if-eqz v0, :cond_1a

    .line 61
    iget-object v1, p0, mUpgradeKeySets:[J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object v1

    iput-object v1, p0, mUpgradeKeySets:[J

    goto :goto_2

    .line 63
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrade keyset alias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "does not refer to a defined keyset alias!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected addUpgradeKeySetById(J)V
    .registers 4
    .param p1, "ks"    # J

    .prologue
    .line 74
    iget-object v0, p0, mUpgradeKeySets:[J

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object v0

    iput-object v0, p0, mUpgradeKeySets:[J

    .line 75
    return-void
.end method

.method protected getAliases()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, mKeySetAliases:Landroid/util/ArrayMap;

    return-object v0
.end method

.method protected getProperSigningKeySet()J
    .registers 3

    .prologue
    .line 50
    iget-wide v0, p0, mProperSigningKeySet:J

    return-wide v0
.end method

.method protected getUpgradeKeySets()[J
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, mUpgradeKeySets:[J

    return-object v0
.end method

.method protected isUsingDefinedKeySets()Z
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isUsingUpgradeKeySets()Z
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, mUpgradeKeySets:[J

    if-eqz v0, :cond_b

    iget-object v0, p0, mUpgradeKeySets:[J

    array-length v0, v0

    if-lez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected removeAllDefinedKeySets()V
    .registers 4

    .prologue
    .line 110
    iget-object v2, p0, mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 111
    .local v0, "aliasSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_11

    .line 112
    iget-object v2, p0, mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 114
    :cond_11
    return-void
.end method

.method protected removeAllUpgradeKeySets()V
    .registers 2

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, mUpgradeKeySets:[J

    .line 79
    return-void
.end method

.method protected setAliases(Landroid/util/ArrayMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "newAliases":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p0}, removeAllDefinedKeySets()V

    .line 99
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 100
    .local v1, "newAliasSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v1, :cond_1a

    .line 101
    iget-object v2, p0, mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 103
    :cond_1a
    return-void
.end method

.method protected setProperSigningKeySet(J)V
    .registers 4
    .param p1, "ks"    # J

    .prologue
    .line 45
    iput-wide p1, p0, mProperSigningKeySet:J

    .line 46
    return-void
.end method
