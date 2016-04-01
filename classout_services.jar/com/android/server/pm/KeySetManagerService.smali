.class public Lcom/android/server/pm/KeySetManagerService;
.super Ljava/lang/Object;
.source "KeySetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/KeySetManagerService$1;,
        Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    }
.end annotation


# static fields
.field public static final CURRENT_VERSION:I = 0x1

.field public static final FIRST_VERSION:I = 0x1

.field public static final KEYSET_NOT_FOUND:J = -0x1L

.field protected static final PUBLIC_KEY_NOT_FOUND:J = -0x1L

.field static final TAG:Ljava/lang/String; = "KeySetManagerService"


# instance fields
.field private lastIssuedKeyId:J

.field private lastIssuedKeySetId:J

.field protected final mKeySetMapping:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mKeySets:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/server/pm/KeySetHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mPublicKeys:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "packages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    const-wide/16 v0, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-wide v0, p0, lastIssuedKeySetId:J

    .line 66
    iput-wide v0, p0, lastIssuedKeyId:J

    .line 112
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, mKeySets:Landroid/util/LongSparseArray;

    .line 113
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, mPublicKeys:Landroid/util/LongSparseArray;

    .line 114
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, mKeySetMapping:Landroid/util/LongSparseArray;

    .line 115
    iput-object p1, p0, mPackages:Landroid/util/ArrayMap;

    .line 116
    return-void
.end method

.method private addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/security/PublicKey;",
            ">;)",
            "Lcom/android/server/pm/KeySetHandle;"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-nez v8, :cond_10

    .line 397
    :cond_8
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Cannot add an empty set of keys!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 401
    :cond_10
    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v8

    invoke-direct {v0, v8}, Landroid/util/ArraySet;-><init>(I)V

    .line 402
    .local v0, "addedKeyIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 403
    .local v6, "kSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v6, :cond_34

    .line 404
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/PublicKey;

    invoke-direct {p0, v8}, addPublicKeyLPw(Ljava/security/PublicKey;)J

    move-result-wide v4

    .line 405
    .local v4, "id":J
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 409
    .end local v4    # "id":J
    :cond_34
    invoke-direct {p0, v0}, getIdFromKeyIdsLPr(Ljava/util/Set;)J

    move-result-wide v2

    .line 410
    .local v2, "existingKeySetId":J
    const-wide/16 v8, -0x1

    cmp-long v8, v2, v8

    if-eqz v8, :cond_5d

    .line 413
    const/4 v1, 0x0

    :goto_3f
    if-ge v1, v6, :cond_51

    .line 414
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, decrementPublicKeyLPw(J)V

    .line 413
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 416
    :cond_51
    iget-object v8, p0, mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/KeySetHandle;

    .line 417
    .local v7, "ks":Lcom/android/server/pm/KeySetHandle;
    invoke-virtual {v7}, Lcom/android/server/pm/KeySetHandle;->incrRefCountLPw()V

    .line 428
    :goto_5c
    return-object v7

    .line 422
    .end local v7    # "ks":Lcom/android/server/pm/KeySetHandle;
    :cond_5d
    invoke-direct {p0}, getFreeKeySetIDLPw()J

    move-result-wide v4

    .line 425
    .restart local v4    # "id":J
    new-instance v7, Lcom/android/server/pm/KeySetHandle;

    invoke-direct {v7, v4, v5}, Lcom/android/server/pm/KeySetHandle;-><init>(J)V

    .line 426
    .restart local v7    # "ks":Lcom/android/server/pm/KeySetHandle;
    iget-object v8, p0, mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 427
    iget-object v8, p0, mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v4, v5, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_5c
.end method

.method private addPublicKeyLPw(Ljava/security/PublicKey;)J
    .registers 8
    .param p1, "key"    # Ljava/security/PublicKey;

    .prologue
    .line 472
    const-string v4, "Cannot add null public key!"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    invoke-direct {p0, p1}, getIdForPublicKeyLPr(Ljava/security/PublicKey;)J

    move-result-wide v0

    .line 474
    .local v0, "id":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1c

    .line 477
    iget-object v4, p0, mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {v4}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->incrRefCountLPw()V

    move-wide v2, v0

    .line 484
    .end local v0    # "id":J
    .local v2, "id":J
    :goto_1b
    return-wide v2

    .line 482
    .end local v2    # "id":J
    .restart local v0    # "id":J
    :cond_1c
    invoke-direct {p0}, getFreePublicKeyIdLPw()J

    move-result-wide v0

    .line 483
    iget-object v4, p0, mPublicKeys:Landroid/util/LongSparseArray;

    new-instance v5, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-direct {v5, p0, v0, v1, p1}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;-><init>(Lcom/android/server/pm/KeySetManagerService;JLjava/security/PublicKey;)V

    invoke-virtual {v4, v0, v1, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-wide v2, v0

    .line 484
    .end local v0    # "id":J
    .restart local v2    # "id":J
    goto :goto_1b
.end method

.method private addRefCountsFromSavedPackagesLPw(Landroid/util/ArrayMap;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 783
    .local p1, "keySetRefCounts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 784
    .local v5, "numRefCounts":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v5, :cond_33

    .line 785
    iget-object v10, p0, mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/KeySetHandle;

    .line 786
    .local v2, "ks":Lcom/android/server/pm/KeySetHandle;
    if-nez v2, :cond_25

    .line 788
    const-string v9, "KeySetManagerService"

    const-string v10, "Encountered non-existent key-set reference when reading settings"

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 791
    :cond_25
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/android/server/pm/KeySetHandle;->setRefCountLPw(I)V

    goto :goto_22

    .line 800
    .end local v2    # "ks":Lcom/android/server/pm/KeySetHandle;
    :cond_33
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 801
    .local v6, "orphanedKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    iget-object v9, p0, mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v9}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 802
    .local v3, "numKeySets":I
    const/4 v0, 0x0

    :goto_3f
    if-ge v0, v3, :cond_8d

    .line 803
    iget-object v9, p0, mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v9, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/KeySetHandle;

    invoke-virtual {v9}, Lcom/android/server/pm/KeySetHandle;->getRefCountLPr()I

    move-result v9

    if-nez v9, :cond_63

    .line 804
    const-string v9, "KeySetManagerService"

    const-string v10, "Encountered key-set w/out package references when reading settings"

    invoke-static {v9, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v9, p0, mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v9, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 807
    :cond_63
    iget-object v9, p0, mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v9, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArraySet;

    .line 808
    .local v8, "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v7

    .line 809
    .local v7, "pkSize":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_70
    if-ge v1, v7, :cond_8a

    .line 810
    iget-object v10, p0, mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {v9}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->incrRefCountLPw()V

    .line 809
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 802
    :cond_8a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    .line 813
    .end local v1    # "j":I
    .end local v7    # "pkSize":I
    .end local v8    # "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_8d
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v4

    .line 814
    .local v4, "numOrphans":I
    const/4 v0, 0x0

    :goto_92
    if-ge v0, v4, :cond_a4

    .line 815
    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, decrementKeySetLPw(J)V

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_92

    .line 817
    :cond_a4
    return-void
.end method

.method private clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V
    .registers 6
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 557
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    .line 558
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->removeAllDefinedKeySets()V

    .line 559
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->removeAllUpgradeKeySets()V

    .line 560
    return-void
.end method

.method private decrementKeySetLPw(J)V
    .registers 10
    .param p1, "id"    # J

    .prologue
    .line 437
    iget-object v4, p0, mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/KeySetHandle;

    .line 438
    .local v1, "ks":Lcom/android/server/pm/KeySetHandle;
    if-nez v1, :cond_b

    .line 451
    :cond_a
    :goto_a
    return-void

    .line 442
    :cond_b
    invoke-virtual {v1}, Lcom/android/server/pm/KeySetHandle;->decrRefCountLPw()I

    move-result v4

    if-gtz v4, :cond_a

    .line 443
    iget-object v4, p0, mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 444
    .local v3, "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 445
    .local v2, "pkSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    if-ge v0, v2, :cond_30

    .line 446
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, decrementPublicKeyLPw(J)V

    .line 445
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 448
    :cond_30
    iget-object v4, p0, mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 449
    iget-object v4, p0, mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_a
.end method

.method private decrementPublicKeyLPw(J)V
    .registers 10
    .param p1, "id"    # J

    .prologue
    .line 458
    iget-object v1, p0, mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    .line 459
    .local v0, "pk":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    if-nez v0, :cond_b

    .line 466
    :cond_a
    :goto_a
    return-void

    .line 463
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->decrRefCountLPw()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_a

    .line 464
    iget-object v1, p0, mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_a
.end method

.method private getFreeKeySetIDLPw()J
    .registers 5

    .prologue
    .line 521
    iget-wide v0, p0, lastIssuedKeySetId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, lastIssuedKeySetId:J

    .line 522
    iget-wide v0, p0, lastIssuedKeySetId:J

    return-wide v0
.end method

.method private getFreePublicKeyIdLPw()J
    .registers 5

    .prologue
    .line 529
    iget-wide v0, p0, lastIssuedKeyId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, lastIssuedKeyId:J

    .line 530
    iget-wide v0, p0, lastIssuedKeyId:J

    return-wide v0
.end method

.method private getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J
    .registers 6
    .param p1, "ks"    # Lcom/android/server/pm/KeySetHandle;

    .prologue
    .line 267
    const/4 v0, 0x0

    .local v0, "keySetIndex":I
    :goto_1
    iget-object v2, p0, mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 268
    iget-object v2, p0, mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/KeySetHandle;

    .line 269
    .local v1, "value":Lcom/android/server/pm/KeySetHandle;
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 270
    iget-object v2, p0, mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 273
    .end local v1    # "value":Lcom/android/server/pm/KeySetHandle;
    :goto_1d
    return-wide v2

    .line 267
    .restart local v1    # "value":Lcom/android/server/pm/KeySetHandle;
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 273
    .end local v1    # "value":Lcom/android/server/pm/KeySetHandle;
    :cond_21
    const-wide/16 v2, -0x1

    goto :goto_1d
.end method

.method private getIdForPublicKeyLPr(Ljava/security/PublicKey;)J
    .registers 8
    .param p1, "k"    # Ljava/security/PublicKey;

    .prologue
    .line 506
    new-instance v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .line 507
    .local v1, "encodedPublicKey":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "publicKeyIndex":I
    :goto_a
    iget-object v4, p0, mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_37

    .line 508
    iget-object v4, p0, mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {v4}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->getKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 509
    .local v3, "value":Ljava/security/PublicKey;
    new-instance v0, Ljava/lang/String;

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 510
    .local v0, "encodedExistingKey":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 511
    iget-object v4, p0, mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 514
    .end local v0    # "encodedExistingKey":Ljava/lang/String;
    .end local v3    # "value":Ljava/security/PublicKey;
    :goto_33
    return-wide v4

    .line 507
    .restart local v0    # "encodedExistingKey":Ljava/lang/String;
    .restart local v3    # "value":Ljava/security/PublicKey;
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 514
    .end local v0    # "encodedExistingKey":Ljava/lang/String;
    .end local v3    # "value":Ljava/security/PublicKey;
    :cond_37
    const-wide/16 v4, -0x1

    goto :goto_33
.end method

.method private getIdFromKeyIdsLPr(Ljava/util/Set;)J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, "publicKeyIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .local v0, "keyMapIndex":I
    :goto_1
    iget-object v2, p0, mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 494
    iget-object v2, p0, mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 495
    .local v1, "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 496
    iget-object v2, p0, mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 499
    .end local v1    # "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :goto_1d
    return-wide v2

    .line 493
    .restart local v1    # "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 499
    .end local v1    # "value":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_21
    const-wide/16 v2, -0x1

    goto :goto_1d
.end method


# virtual methods
.method addDefinedKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)V
    .registers 13
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/security/PublicKey;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p2, "definedMapping":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v6

    .line 285
    .local v6, "prevDefinedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 286
    .local v4, "newKeySetAliases":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 287
    .local v1, "defMapSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_3a

    .line 288
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 289
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    .line 290
    .local v7, "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-eqz v0, :cond_22

    if-nez v7, :cond_28

    :cond_22
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-lez v8, :cond_37

    .line 291
    :cond_28
    invoke-direct {p0, v7}, addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;

    move-result-object v3

    .line 292
    .local v3, "ks":Lcom/android/server/pm/KeySetHandle;
    invoke-virtual {v3}, Lcom/android/server/pm/KeySetHandle;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v0, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    .end local v3    # "ks":Lcom/android/server/pm/KeySetHandle;
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 297
    .end local v0    # "alias":Ljava/lang/String;
    .end local v7    # "pubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :cond_3a
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 298
    .local v5, "prevDefSize":I
    const/4 v2, 0x0

    :goto_3f
    if-ge v2, v5, :cond_51

    .line 299
    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, decrementKeySetLPw(J)V

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 301
    :cond_51
    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageKeySetData;->removeAllUpgradeKeySets()V

    .line 304
    iget-object v8, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v8, v4}, Lcom/android/server/pm/PackageKeySetData;->setAliases(Landroid/util/ArrayMap;)V

    .line 305
    return-void
.end method

.method public addScannedPackageLPw(Landroid/content/pm/PackageParser$Package;)V
    .registers 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 219
    const-string v1, "Attempted to add null pkg to ksms."

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v2, "Attempted to add null pkg to ksms."

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v1, p0, mPackages:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 222
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "does not have a corresponding entry in mPackages."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    invoke-virtual {p0, v0, v1}, addSigningKeySetToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArraySet;)V

    .line 225
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    if-eqz v1, :cond_4d

    .line 226
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, addDefinedKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArrayMap;)V

    .line 227
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    if-eqz v1, :cond_4d

    .line 228
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    invoke-virtual {p0, v0, v1}, addUpgradeKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArraySet;)V

    .line 231
    :cond_4d
    return-void
.end method

.method addSigningKeySetToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArraySet;)V
    .registers 11
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/security/PublicKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 240
    .local p2, "signingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v4

    .line 242
    .local v4, "signingKeySetId":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1c

    .line 243
    invoke-virtual {p0, v4, v5}, getPublicKeysFromKeySetLPr(J)Landroid/util/ArraySet;

    move-result-object v0

    .line 244
    .local v0, "existingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-eqz v0, :cond_19

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 259
    .end local v0    # "existingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :goto_18
    return-void

    .line 251
    .restart local v0    # "existingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :cond_19
    invoke-direct {p0, v4, v5}, decrementKeySetLPw(J)V

    .line 256
    .end local v0    # "existingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    :cond_1c
    invoke-direct {p0, p2}, addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;

    move-result-object v1

    .line 257
    .local v1, "ks":Lcom/android/server/pm/KeySetHandle;
    invoke-virtual {v1}, Lcom/android/server/pm/KeySetHandle;->getId()J

    move-result-wide v2

    .line 258
    .local v2, "id":J
    iget-object v6, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v6, v2, v3}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    goto :goto_18
.end method

.method addUpgradeKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArraySet;)V
    .registers 7
    .param p1, "pkg"    # Lcom/android/server/pm/PackageSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p2, "upgradeAliases":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 316
    .local v1, "uaSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_15

    .line 317
    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySet(Ljava/lang/String;)V

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 319
    :cond_15
    return-void
.end method

.method public assertScannedPackageValid(Landroid/content/pm/PackageParser$Package;)V
    .registers 10
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x2

    .line 185
    if-eqz p1, :cond_8

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-nez v5, :cond_10

    .line 186
    :cond_8
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    const-string v6, "Passed invalid package to keyset validation."

    invoke-direct {v5, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 189
    :cond_10
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 190
    .local v3, "signingKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    if-eqz v3, :cond_20

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-lez v5, :cond_20

    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 191
    :cond_20
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    const-string v6, "Package has invalid signing-key-set."

    invoke-direct {v5, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 194
    :cond_28
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    .line 195
    .local v1, "definedMapping":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/security/PublicKey;>;>;"
    if-eqz v1, :cond_6a

    .line 196
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 197
    :cond_38
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    const-string v6, "Package has null defined key set."

    invoke-direct {v5, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 200
    :cond_40
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 201
    .local v0, "defMapSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_45
    if-ge v2, v0, :cond_6a

    .line 202
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-lez v5, :cond_5f

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 204
    :cond_5f
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    const-string v6, "Package has null/no public keys for defined key-sets."

    invoke-direct {v5, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 201
    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 209
    .end local v0    # "defMapSize":I
    .end local v2    # "i":I
    :cond_6a
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    .line 210
    .local v4, "upgradeAliases":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v4, :cond_82

    .line 211
    if-eqz v1, :cond_7a

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_82

    .line 212
    :cond_7a
    new-instance v5, Lcom/android/server/pm/PackageManagerException;

    const-string v6, "Package has upgrade-key-sets without corresponding definitions."

    invoke-direct {v5, v7, v6}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 216
    :cond_82
    return-void
.end method

.method public dumpLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$DumpState;)V
    .registers 26
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "dumpState"    # Lcom/android/server/pm/PackageManagerService$DumpState;

    .prologue
    .line 569
    const/4 v15, 0x0

    .line 570
    .local v15, "printedHeader":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mPackages:Landroid/util/ArrayMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_f
    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_195

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 571
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 572
    .local v12, "keySetPackage":Ljava/lang/String;
    if-eqz p2, :cond_2b

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 575
    :cond_2b
    if-nez v15, :cond_40

    .line 576
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/PackageManagerService$DumpState;->onTitlePrinted()Z

    move-result v17

    if-eqz v17, :cond_36

    .line 577
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 578
    :cond_36
    const-string v17, "Key Set Manager:"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    const/4 v15, 0x1

    .line 581
    :cond_40
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .line 582
    .local v14, "pkg":Lcom/android/server/pm/PackageSetting;
    const-string v17, "  ["

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v17, "]"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    .line 584
    const/16 v16, 0x0

    .line 585
    .local v16, "printedLabel":Z
    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_75
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 586
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v16, :cond_ba

    .line 587
    const-string v17, "      KeySets Aliases: "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 588
    const/16 v16, 0x1

    .line 592
    :goto_8e
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 593
    const/16 v17, 0x3d

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 594
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_75

    .line 590
    :cond_ba
    const-string v17, ", "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8e

    .line 596
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_c4
    if-eqz v16, :cond_cf

    .line 597
    const-string v17, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    :cond_cf
    const/16 v16, 0x0

    .line 600
    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageKeySetData;->isUsingDefinedKeySets()Z

    move-result v17

    if-eqz v17, :cond_119

    .line 601
    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v3

    .line 602
    .local v3, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 603
    .local v4, "dksSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_e8
    if-ge v7, v4, :cond_119

    .line 604
    if-nez v16, :cond_10f

    .line 605
    const-string v17, "      Defined KeySets: "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 606
    const/16 v16, 0x1

    .line 610
    :goto_f7
    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 603
    add-int/lit8 v7, v7, 0x1

    goto :goto_e8

    .line 608
    :cond_10f
    const-string v17, ", "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_f7

    .line 613
    .end local v3    # "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v4    # "dksSize":I
    .end local v7    # "i":I
    :cond_119
    if-eqz v16, :cond_124

    .line 614
    const-string v17, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    :cond_124
    const/16 v16, 0x0

    .line 617
    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v18

    .line 618
    .local v18, "signingKeySet":J
    const-string v17, "      Signing KeySets: "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 619
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 620
    const-string v17, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result v17

    if-eqz v17, :cond_188

    .line 622
    iget-object v0, v14, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v2

    .local v2, "arr$":[J
    array-length v13, v2

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_15f
    if-ge v9, v13, :cond_188

    aget-wide v10, v2, v9

    .line 623
    .local v10, "keySetId":J
    if-nez v16, :cond_17e

    .line 624
    const-string v17, "      Upgrade KeySets: "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 625
    const/16 v16, 0x1

    .line 629
    :goto_170
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 622
    add-int/lit8 v9, v9, 0x1

    goto :goto_15f

    .line 627
    :cond_17e
    const-string v17, ", "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_170

    .line 632
    .end local v2    # "arr$":[J
    .end local v9    # "i$":I
    .end local v10    # "keySetId":J
    .end local v13    # "len$":I
    :cond_188
    if-eqz v16, :cond_f

    .line 633
    const-string v17, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 637
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .end local v12    # "keySetPackage":Ljava/lang/String;
    .end local v14    # "pkg":Lcom/android/server/pm/PackageSetting;
    .end local v16    # "printedLabel":Z
    .end local v18    # "signingKeySet":J
    :cond_195
    return-void
.end method

.method public encodePublicKey(Ljava/security/PublicKey;)Ljava/lang/String;
    .registers 5
    .param p1, "k"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getKeySetByAliasAndPackageNameLPr(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 328
    iget-object v2, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 329
    .local v1, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_e

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-nez v2, :cond_10

    .line 330
    :cond_e
    const/4 v2, 0x0

    .line 336
    :goto_f
    return-object v2

    .line 332
    :cond_10
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 333
    .local v0, "keySetId":Ljava/lang/Long;
    if-nez v0, :cond_37

    .line 334
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown KeySet alias: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 336
    :cond_37
    iget-object v2, p0, mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/KeySetHandle;

    goto :goto_f
.end method

.method public getPublicKeysFromKeySetLPr(J)Landroid/util/ArraySet;
    .registers 12
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    iget-object v4, p0, mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 353
    .local v2, "pkIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    if-nez v2, :cond_c

    .line 354
    const/4 v1, 0x0

    .line 361
    :cond_b
    return-object v1

    .line 356
    :cond_c
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 357
    .local v1, "mPubKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 358
    .local v3, "pkSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    if-ge v0, v3, :cond_b

    .line 359
    iget-object v5, p0, mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {v4}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->getKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_16
.end method

.method public getSigningKeySetByPackageNameLPr(Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 372
    iget-object v1, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 373
    .local v0, "p":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_1a

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1c

    .line 377
    :cond_1a
    const/4 v1, 0x0

    .line 379
    :goto_1b
    return-object v1

    :cond_1c
    iget-object v1, p0, mKeySets:Landroid/util/LongSparseArray;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/KeySetHandle;

    goto :goto_1b
.end method

.method public isIdValidKeySetId(J)Z
    .registers 4
    .param p1, "id"    # J

    .prologue
    .line 341
    iget-object v0, p0, mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public packageIsSignedByExactlyLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Lcom/android/server/pm/KeySetHandle;

    .prologue
    const-wide/16 v8, -0x1

    .line 156
    iget-object v5, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 157
    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_14

    .line 158
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "Invalid package name"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 160
    :cond_14
    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-eqz v5, :cond_22

    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-nez v5, :cond_2a

    .line 163
    :cond_22
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "Package has no KeySet data"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 165
    :cond_2a
    invoke-direct {p0, p2}, getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J

    move-result-wide v0

    .line 166
    .local v0, "id":J
    cmp-long v5, v0, v8

    if-nez v5, :cond_34

    .line 167
    const/4 v5, 0x0

    .line 171
    :goto_33
    return v5

    .line 169
    :cond_34
    iget-object v5, p0, mKeySetMapping:Landroid/util/LongSparseArray;

    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 170
    .local v3, "pkgKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    iget-object v5, p0, mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 171
    .local v4, "testKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_33
.end method

.method public packageIsSignedByLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Lcom/android/server/pm/KeySetHandle;

    .prologue
    .line 130
    iget-object v5, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 131
    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_12

    .line 132
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "Invalid package name"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 134
    :cond_12
    iget-object v5, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    if-nez v5, :cond_1e

    .line 135
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "Package has no KeySet data"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 137
    :cond_1e
    invoke-direct {p0, p2}, getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J

    move-result-wide v0

    .line 138
    .local v0, "id":J
    const-wide/16 v6, -0x1

    cmp-long v5, v0, v6

    if-nez v5, :cond_2a

    .line 139
    const/4 v5, 0x0

    .line 143
    :goto_29
    return v5

    .line 141
    :cond_2a
    iget-object v5, p0, mKeySetMapping:Landroid/util/LongSparseArray;

    iget-object v6, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 142
    .local v3, "pkgKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    iget-object v5, p0, mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 143
    .local v4, "testKeys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    goto :goto_29
.end method

.method readKeySetListLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    .line 743
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 745
    .local v3, "outerDepth":I
    const-wide/16 v0, 0x0

    .line 747
    .local v0, "currentKeySetId":J
    :cond_8
    :goto_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_6e

    if-ne v8, v11, :cond_17

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_6e

    .line 748
    :cond_17
    if-eq v8, v11, :cond_8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_8

    .line 751
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 752
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "keyset"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4a

    .line 753
    const-string/jumbo v9, "identifier"

    invoke-interface {p1, v12, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 754
    .local v2, "encodedID":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 755
    const/4 v6, 0x0

    .line 756
    .local v6, "refCount":I
    iget-object v9, p0, mKeySets:Landroid/util/LongSparseArray;

    new-instance v10, Lcom/android/server/pm/KeySetHandle;

    invoke-direct {v10, v0, v1, v6}, Lcom/android/server/pm/KeySetHandle;-><init>(JI)V

    invoke-virtual {v9, v0, v1, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 757
    iget-object v9, p0, mKeySetMapping:Landroid/util/LongSparseArray;

    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v9, v0, v1, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_8

    .line 758
    .end local v2    # "encodedID":Ljava/lang/String;
    .end local v6    # "refCount":I
    :cond_4a
    const-string/jumbo v9, "key-id"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 759
    const-string/jumbo v9, "identifier"

    invoke-interface {p1, v12, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 760
    .restart local v2    # "encodedID":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 761
    .local v4, "id":J
    iget-object v9, p0, mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v9, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 764
    .end local v2    # "encodedID":Ljava/lang/String;
    .end local v4    # "id":J
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_6e
    return-void
.end method

.method readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V
    .registers 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 687
    .local p2, "keySetRefCounts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const-wide/16 v0, 0x0

    .line 688
    .local v0, "currentKeySetId":J
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 689
    .local v3, "outerDepth":I
    const/4 v9, 0x0

    const-string/jumbo v10, "version"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 690
    .local v6, "recordedVersionStr":Ljava/lang/String;
    if-nez v6, :cond_3a

    .line 694
    :cond_10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_20

    const/4 v9, 0x3

    if-ne v8, v9, :cond_10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-gt v9, v3, :cond_10

    .line 699
    :cond_20
    iget-object v9, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 700
    .local v4, "p":Lcom/android/server/pm/PackageSetting;
    invoke-direct {p0, v4}, clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_2a

    .line 704
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Lcom/android/server/pm/PackageSetting;
    .end local v8    # "type":I
    :cond_3a
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 706
    .local v5, "recordedVersion":I
    :cond_3e
    :goto_3e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .restart local v8    # "type":I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_a2

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4e

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_a2

    .line 707
    :cond_4e
    const/4 v9, 0x3

    if-eq v8, v9, :cond_3e

    const/4 v9, 0x4

    if-eq v8, v9, :cond_3e

    .line 710
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 711
    .local v7, "tagName":Ljava/lang/String;
    const-string/jumbo v9, "keys"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_65

    .line 712
    invoke-virtual {p0, p1}, readKeysLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3e

    .line 713
    :cond_65
    const-string/jumbo v9, "keysets"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_72

    .line 714
    invoke-virtual {p0, p1}, readKeySetListLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3e

    .line 715
    :cond_72
    const-string/jumbo v9, "lastIssuedKeyId"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8a

    .line 716
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, lastIssuedKeyId:J

    goto :goto_3e

    .line 717
    :cond_8a
    const-string/jumbo v9, "lastIssuedKeySetId"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 718
    const/4 v9, 0x0

    const-string/jumbo v10, "value"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, lastIssuedKeySetId:J

    goto :goto_3e

    .line 722
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_a2
    invoke-direct {p0, p2}, addRefCountsFromSavedPackagesLPw(Landroid/util/ArrayMap;)V

    .line 723
    .end local v5    # "recordedVersion":I
    :cond_a5
    return-void
.end method

.method readKeysLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 727
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 730
    .local v0, "outerDepth":I
    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_2a

    if-ne v2, v4, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_2a

    .line 731
    :cond_14
    if-eq v2, v4, :cond_5

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    .line 734
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "public-key"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 736
    invoke-virtual {p0, p1}, readPublicKeyLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 739
    .end local v1    # "tagName":Ljava/lang/String;
    :cond_2a
    return-void
.end method

.method readPublicKeyLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 768
    const-string/jumbo v1, "identifier"

    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 769
    .local v7, "encodedID":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 770
    .local v2, "identifier":J
    const/4 v4, 0x0

    .line 771
    .local v4, "refCount":I
    const-string/jumbo v1, "value"

    invoke-interface {p1, v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 772
    .local v8, "encodedPublicKey":Ljava/lang/String;
    invoke-static {v8}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v5

    .line 773
    .local v5, "pub":Ljava/security/PublicKey;
    if-eqz v5, :cond_25

    .line 774
    new-instance v0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;-><init>(Lcom/android/server/pm/KeySetManagerService;JILjava/security/PublicKey;Lcom/android/server/pm/KeySetManagerService$1;)V

    .line 775
    .local v0, "pkh":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    iget-object v1, p0, mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 777
    .end local v0    # "pkh":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    :cond_25
    return-void
.end method

.method public removeAppKeySetDataLPw(Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 541
    iget-object v3, p0, mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 542
    .local v2, "pkg":Lcom/android/server/pm/PackageSetting;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkg name: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "does not have a corresponding entry in mPackages."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v4

    .line 545
    .local v4, "signingKeySetId":J
    invoke-direct {p0, v4, v5}, decrementKeySetLPw(J)V

    .line 546
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v0

    .line 547
    .local v0, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_36
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_4c

    .line 548
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, decrementKeySetLPw(J)V

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 552
    :cond_4c
    invoke-direct {p0, v2}, clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V

    .line 553
    return-void
.end method

.method writeKeySetManagerServiceLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 640
    const-string/jumbo v0, "keyset-settings"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 641
    const-string/jumbo v0, "version"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 642
    invoke-virtual {p0, p1}, writePublicKeysLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 643
    invoke-virtual {p0, p1}, writeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 644
    const-string/jumbo v0, "lastIssuedKeyId"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 645
    const-string/jumbo v0, "value"

    iget-wide v2, p0, lastIssuedKeyId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 646
    const-string/jumbo v0, "lastIssuedKeyId"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 647
    const-string/jumbo v0, "lastIssuedKeySetId"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 648
    const-string/jumbo v0, "value"

    iget-wide v2, p0, lastIssuedKeySetId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 649
    const-string/jumbo v0, "lastIssuedKeySetId"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 650
    const-string/jumbo v0, "keyset-settings"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 651
    return-void
.end method

.method writeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 12
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 668
    const-string/jumbo v7, "keysets"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 669
    const/4 v1, 0x0

    .local v1, "keySetIndex":I
    :goto_8
    iget-object v7, p0, mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    if-ge v1, v7, :cond_62

    .line 670
    iget-object v7, p0, mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 671
    .local v2, "id":J
    iget-object v7, p0, mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 672
    .local v6, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    const-string/jumbo v7, "keyset"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 673
    const-string/jumbo v7, "identifier"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 674
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 675
    .local v4, "keyId":J
    const-string/jumbo v7, "key-id"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 676
    const-string/jumbo v7, "identifier"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v9, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 677
    const-string/jumbo v7, "key-id"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_32

    .line 679
    .end local v4    # "keyId":J
    :cond_59
    const-string/jumbo v7, "keyset"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 669
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 681
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "id":J
    .end local v6    # "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Long;>;"
    :cond_62
    const-string/jumbo v7, "keysets"

    invoke-interface {p1, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 682
    return-void
.end method

.method writePublicKeysLPr(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 10
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 654
    const-string/jumbo v5, "keys"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 655
    const/4 v1, 0x0

    .local v1, "pKeyIndex":I
    :goto_8
    iget-object v5, p0, mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_45

    .line 656
    iget-object v5, p0, mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 657
    .local v2, "id":J
    iget-object v5, p0, mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    .line 658
    .local v4, "pkh":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    invoke-virtual {v4}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->getKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {p0, v5}, encodePublicKey(Ljava/security/PublicKey;)Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, "encodedKey":Ljava/lang/String;
    const-string/jumbo v5, "public-key"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 660
    const-string/jumbo v5, "identifier"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 661
    const-string/jumbo v5, "value"

    invoke-interface {p1, v7, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 662
    const-string/jumbo v5, "public-key"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 655
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 664
    .end local v0    # "encodedKey":Ljava/lang/String;
    .end local v2    # "id":J
    .end local v4    # "pkh":Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    :cond_45
    const-string/jumbo v5, "keys"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 665
    return-void
.end method
