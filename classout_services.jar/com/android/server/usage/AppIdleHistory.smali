.class public Lcom/android/server/usage/AppIdleHistory;
.super Ljava/lang/Object;
.source "AppIdleHistory.java"


# static fields
.field private static final FLAG_LAST_STATE:I = 0x2

.field private static final FLAG_PARTIAL_ACTIVE:I = 0x1

.field private static final HISTORY_SIZE:I = 0x64

.field private static final ONE_MINUTE:J = 0xea60L

.field private static final PERIOD_DURATION:J = 0x36ee80L


# instance fields
.field private lastPeriod:J

.field private mIdleHistory:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mIdleHistory:Landroid/util/SparseArray;

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, lastPeriod:J

    return-void
.end method

.method private getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;)[B
    .registers 5
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[B>;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 81
    .local v0, "packageHistory":[B
    if-nez v0, :cond_f

    .line 82
    const/16 v1, 0x64

    new-array v0, v1, [B

    .line 83
    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_f
    return-object v0
.end method

.method private getUserHistory(I)Landroid/util/ArrayMap;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v1, p0, mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 72
    .local v0, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    if-nez v0, :cond_14

    .line 73
    new-instance v0, Landroid/util/ArrayMap;

    .end local v0    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 74
    .restart local v0    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    iget-object v1, p0, mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    :cond_14
    return-object v0
.end method


# virtual methods
.method public addEntry(Ljava/lang/String;IZJ)V
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z
    .param p4, "timeNow"    # J

    .prologue
    .line 40
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v11

    .line 41
    .local v11, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v1}, getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;)[B

    move-result-object v7

    .line 43
    .local v7, "packageHistory":[B
    const-wide/32 v12, 0x36ee80

    div-long v8, p4, v12

    .line 45
    .local v8, "thisPeriod":J
    move-object/from16 v0, p0

    iget-wide v12, v0, lastPeriod:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_81

    move-object/from16 v0, p0

    iget-wide v12, v0, lastPeriod:J

    cmp-long v12, v12, v8

    if-gez v12, :cond_81

    move-object/from16 v0, p0

    iget-wide v12, v0, lastPeriod:J

    sub-long v12, v8, v12

    const-wide/16 v14, 0x63

    cmp-long v12, v12, v14

    if-gez v12, :cond_81

    .line 47
    move-object/from16 v0, p0

    iget-wide v12, v0, lastPeriod:J

    sub-long v12, v8, v12

    long-to-int v3, v12

    .line 48
    .local v3, "diff":I
    move-object/from16 v0, p0

    iget-object v12, v0, mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 49
    .local v2, "NUSERS":I
    const/4 v10, 0x0

    .local v10, "u":I
    :goto_43
    if-ge v10, v2, :cond_81

    .line 50
    move-object/from16 v0, p0

    iget-object v12, v0, mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    check-cast v11, Landroid/util/ArrayMap;

    .line 51
    .restart local v11    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_57
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 53
    .local v4, "history":[B
    const/4 v12, 0x0

    rsub-int/lit8 v13, v3, 0x64

    invoke-static {v4, v3, v4, v12, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 55
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6a
    if-ge v5, v3, :cond_57

    .line 56
    rsub-int/lit8 v12, v5, 0x64

    add-int/lit8 v12, v12, -0x1

    rsub-int/lit8 v13, v3, 0x64

    add-int/lit8 v13, v13, -0x1

    aget-byte v13, v4, v13

    and-int/lit8 v13, v13, 0x2

    int-to-byte v13, v13

    aput-byte v13, v4, v12

    .line 55
    add-int/lit8 v5, v5, 0x1

    goto :goto_6a

    .line 49
    .end local v4    # "history":[B
    .end local v5    # "i":I
    :cond_7e
    add-int/lit8 v10, v10, 0x1

    goto :goto_43

    .line 62
    .end local v2    # "NUSERS":I
    .end local v3    # "diff":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v10    # "u":I
    :cond_81
    move-object/from16 v0, p0

    iput-wide v8, v0, lastPeriod:J

    .line 63
    if-nez p3, :cond_8d

    .line 64
    const/16 v12, 0x63

    const/4 v13, 0x3

    aput-byte v13, v7, v12

    .line 68
    :goto_8c
    return-void

    .line 66
    :cond_8d
    const/16 v12, 0x63

    aget-byte v13, v7, v12

    and-int/lit8 v13, v13, -0x3

    int-to-byte v13, v13

    aput-byte v13, v7, v12

    goto :goto_8c
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;I)V
    .registers 11
    .param p1, "idpw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "userId"    # I

    .prologue
    .line 99
    iget-object v6, p0, mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 100
    .local v5, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    if-nez v5, :cond_b

    .line 111
    :cond_a
    return-void

    .line 101
    :cond_b
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 102
    .local v0, "P":I
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_10
    if-ge v3, v0, :cond_a

    .line 103
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 104
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 105
    .local v1, "history":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    const/16 v6, 0x64

    if-ge v2, v6, :cond_32

    .line 106
    aget-byte v6, v1, v2

    if-nez v6, :cond_2f

    const/16 v6, 0x2e

    :goto_29
    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(C)V

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 106
    :cond_2f
    const/16 v6, 0x41

    goto :goto_29

    .line 108
    :cond_32
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_10
.end method

.method public isIdle(ILjava/lang/String;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-direct {p0, p1}, getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 94
    .local v1, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[B>;"
    invoke-direct {p0, v1, p2}, getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;)[B

    move-result-object v0

    .line 95
    .local v0, "packageHistory":[B
    const/16 v2, 0x63

    aget-byte v2, v0, v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_12

    const/4 v2, 0x1

    :goto_11
    return v2

    :cond_12
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public removeUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 89
    iget-object v0, p0, mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 90
    return-void
.end method
