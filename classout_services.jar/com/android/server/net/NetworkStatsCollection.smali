.class public Lcom/android/server/net/NetworkStatsCollection;
.super Ljava/lang/Object;
.source "NetworkStatsCollection.java"

# interfaces
.implements Lcom/android/internal/util/FileRotator$Reader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsCollection$Key;
    }
.end annotation


# static fields
.field private static final FILE_MAGIC:I = 0x414e4554

.field private static final TAG:Ljava/lang/String; = "NetworkStatsCollection"

.field private static final VERSION_NETWORK_INIT:I = 0x1

.field private static final VERSION_UID_INIT:I = 0x1

.field private static final VERSION_UID_WITH_IDENT:I = 0x2

.field private static final VERSION_UID_WITH_SET:I = 0x4

.field private static final VERSION_UID_WITH_TAG:I = 0x3

.field private static final VERSION_UNIFIED_INIT:I = 0x10


# instance fields
.field private final mBucketDuration:J

.field private mDirty:Z

.field private mEndMillis:J

.field private mStartMillis:J

.field private mStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/net/NetworkStatsCollection$Key;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalBytes:J


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "bucketDuration"    # J

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mStats:Landroid/util/ArrayMap;

    .line 97
    iput-wide p1, p0, mBucketDuration:J

    .line 98
    invoke-virtual {p0}, reset()V

    .line 99
    return-void
.end method

.method private dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V
    .registers 20
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "groupTemplate"    # Landroid/net/NetworkTemplate;
    .param p7, "groupPrefix"    # Ljava/lang/String;

    .prologue
    .line 559
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 562
    .local v9, "grouped":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6
    iget-object v4, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v10, v4, :cond_5a

    .line 563
    iget-object v4, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 564
    .local v11, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v4, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    .line 566
    .local v3, "value":Landroid/net/NetworkStatsHistory;
    iget-object v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    iget v5, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    move-object/from16 v0, p6

    invoke-static {v0, v4, v5}, templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;I)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 562
    :cond_2a
    :goto_2a
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 567
    :cond_2d
    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_2a

    .line 569
    new-instance v8, Lcom/android/server/net/NetworkStatsCollection$Key;

    const/4 v4, 0x0

    iget v5, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iget v6, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iget v7, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-direct {v8, v4, v5, v6, v7}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 570
    .local v8, "groupKey":Lcom/android/server/net/NetworkStatsCollection$Key;
    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 571
    .local v2, "groupHistory":Landroid/net/NetworkStatsHistory;
    if-nez v2, :cond_53

    .line 572
    new-instance v2, Landroid/net/NetworkStatsHistory;

    .end local v2    # "groupHistory":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    .line 573
    .restart local v2    # "groupHistory":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v9, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    move-wide v4, p2

    move-wide/from16 v6, p4

    .line 575
    invoke-virtual/range {v2 .. v7}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    goto :goto_2a

    .line 578
    .end local v2    # "groupHistory":Landroid/net/NetworkStatsHistory;
    .end local v3    # "value":Landroid/net/NetworkStatsHistory;
    .end local v8    # "groupKey":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v11    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_5a
    const/4 v10, 0x0

    :goto_5b
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v10, v4, :cond_a9

    .line 579
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 580
    .restart local v11    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    .line 582
    .restart local v3    # "value":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v4

    if-nez v4, :cond_76

    .line 578
    :goto_73
    add-int/lit8 v10, v10, 0x1

    goto :goto_5b

    .line 584
    :cond_76
    const-string v4, "c,"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 585
    move-object/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 586
    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 587
    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v4}, Landroid/net/NetworkStats;->setToCheckinString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 588
    iget v4, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 589
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 591
    invoke-virtual {v3, p1}, Landroid/net/NetworkStatsHistory;->dumpCheckin(Ljava/io/PrintWriter;)V

    goto :goto_73

    .line 593
    .end local v3    # "value":Landroid/net/NetworkStatsHistory;
    .end local v11    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_a9
    return-void
.end method

.method private estimateBuckets()I
    .registers 5

    .prologue
    .line 524
    iget-wide v0, p0, mEndMillis:J

    iget-wide v2, p0, mStartMillis:J

    sub-long/2addr v0, v2

    const-wide v2, 0xb43e9400L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget-wide v2, p0, mBucketDuration:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;
    .registers 13
    .param p1, "ident"    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I

    .prologue
    .line 296
    new-instance v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 297
    .local v1, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v3, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 300
    .local v0, "existing":Landroid/net/NetworkStatsHistory;
    const/4 v2, 0x0

    .line 301
    .local v2, "updated":Landroid/net/NetworkStatsHistory;
    if-nez v0, :cond_21

    .line 302
    new-instance v2, Landroid/net/NetworkStatsHistory;

    .end local v2    # "updated":Landroid/net/NetworkStatsHistory;
    iget-wide v4, p0, mBucketDuration:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStatsHistory;-><init>(JI)V

    .line 307
    .restart local v2    # "updated":Landroid/net/NetworkStatsHistory;
    :cond_19
    :goto_19
    if-eqz v2, :cond_33

    .line 308
    iget-object v3, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .end local v2    # "updated":Landroid/net/NetworkStatsHistory;
    :goto_20
    return-object v2

    .line 303
    .restart local v2    # "updated":Landroid/net/NetworkStatsHistory;
    :cond_21
    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v4

    iget-wide v6, p0, mBucketDuration:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_19

    .line 304
    new-instance v2, Landroid/net/NetworkStatsHistory;

    .end local v2    # "updated":Landroid/net/NetworkStatsHistory;
    iget-wide v4, p0, mBucketDuration:J

    invoke-direct {v2, v0, v4, v5}, Landroid/net/NetworkStatsHistory;-><init>(Landroid/net/NetworkStatsHistory;J)V

    .restart local v2    # "updated":Landroid/net/NetworkStatsHistory;
    goto :goto_19

    :cond_33
    move-object v2, v0

    .line 311
    goto :goto_20
.end method

.method private static isAccessibleToUser(II)Z
    .registers 4
    .param p0, "uid"    # I
    .param p1, "callerUid"    # I

    .prologue
    const/16 v1, 0x3e8

    .line 596
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, v1, :cond_1a

    if-eq p0, v1, :cond_1a

    const/4 v0, -0x4

    if-eq p0, v0, :cond_1a

    const/4 v0, -0x5

    if-eq p0, v0, :cond_1a

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private noteRecordedHistory(JJJ)V
    .registers 10
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "totalBytes"    # J

    .prologue
    .line 517
    iget-wide v0, p0, mStartMillis:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    iput-wide p1, p0, mStartMillis:J

    .line 518
    :cond_8
    iget-wide v0, p0, mEndMillis:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_10

    iput-wide p3, p0, mEndMillis:J

    .line 519
    :cond_10
    iget-wide v0, p0, mTotalBytes:J

    add-long/2addr v0, p5

    iput-wide v0, p0, mTotalBytes:J

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, mDirty:Z

    .line 521
    return-void
.end method

.method private recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    .registers 11
    .param p1, "key"    # Lcom/android/server/net/NetworkStatsCollection$Key;
    .param p2, "history"    # Landroid/net/NetworkStatsHistory;

    .prologue
    .line 271
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 280
    :goto_6
    return-void

    .line 272
    :cond_7
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, noteRecordedHistory(JJJ)V

    .line 274
    iget-object v1, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 275
    .local v0, "target":Landroid/net/NetworkStatsHistory;
    if-nez v0, :cond_2f

    .line 276
    new-instance v0, Landroid/net/NetworkStatsHistory;

    .end local v0    # "target":Landroid/net/NetworkStatsHistory;
    invoke-virtual {p2}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    .line 277
    .restart local v0    # "target":Landroid/net/NetworkStatsHistory;
    iget-object v1, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_2f
    invoke-virtual {v0, p2}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    goto :goto_6
.end method

.method private static templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;I)Z
    .registers 10
    .param p0, "template"    # Landroid/net/NetworkTemplate;
    .param p1, "identSet"    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"    # I

    .prologue
    const/4 v4, 0x1

    .line 606
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 608
    .local v3, "tempSubId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkIdentity;

    .line 609
    .local v2, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v2}, Landroid/net/NetworkIdentity;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "idenSubId":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 624
    .end local v1    # "idenSubId":Ljava/lang/String;
    .end local v2    # "ident":Landroid/net/NetworkIdentity;
    :goto_1f
    return v4

    .line 617
    .restart local v1    # "idenSubId":Ljava/lang/String;
    .restart local v2    # "ident":Landroid/net/NetworkIdentity;
    :cond_20
    invoke-virtual {v2}, Landroid/net/NetworkIdentity;->getType()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_9

    const/16 v5, -0x64

    if-ne p2, v5, :cond_9

    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->countVideoCall()Z

    move-result v5

    if-eqz v5, :cond_9

    if-eqz v3, :cond_9

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_1f

    .line 624
    .end local v1    # "idenSubId":Ljava/lang/String;
    .end local v2    # "ident":Landroid/net/NetworkIdentity;
    :cond_3b
    const/4 v4, 0x0

    goto :goto_1f
.end method


# virtual methods
.method public clearDirty()V
    .registers 2

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, mDirty:Z

    .line 139
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 529
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 530
    .local v3, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    iget-object v4, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 531
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 533
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 534
    .local v2, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    const-string/jumbo v4, "ident="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkIdentitySet;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 535
    const-string v4, " uid="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 536
    const-string v4, " set="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-static {v4}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 537
    const-string v4, " tag="

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v4, v2, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-static {v4}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 539
    iget-object v4, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 540
    .local v0, "history":Landroid/net/NetworkStatsHistory;
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 541
    const/4 v4, 0x1

    invoke-virtual {v0, p1, v4}, Landroid/net/NetworkStatsHistory;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 542
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_14

    .line 544
    .end local v0    # "history":Landroid/net/NetworkStatsHistory;
    .end local v2    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_68
    return-void
.end method

.method public dumpCheckin(Ljava/io/PrintWriter;JJ)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 547
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string v7, "cell"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 548
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string/jumbo v7, "wifi"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 549
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string/jumbo v7, "eth"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 550
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateBluetooth()Landroid/net/NetworkTemplate;

    move-result-object v6

    const-string v7, "bt"

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v7}, dumpCheckin(Ljava/io/PrintWriter;JJLandroid/net/NetworkTemplate;Ljava/lang/String;)V

    .line 551
    return-void
.end method

.method public getEndMillis()J
    .registers 3

    .prologue
    .line 126
    iget-wide v0, p0, mEndMillis:J

    return-wide v0
.end method

.method public getFirstAtomicBucketMillis()J
    .registers 5

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 118
    iget-wide v2, p0, mStartMillis:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_c

    .line 121
    :goto_b
    return-wide v0

    :cond_c
    iget-wide v0, p0, mStartMillis:J

    iget-wide v2, p0, mBucketDuration:J

    add-long/2addr v0, v2

    goto :goto_b
.end method

.method public getHistory(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .registers 16
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I

    .prologue
    .line 168
    const-wide/high16 v6, -0x8000000000000000L

    const-wide v8, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v9}, getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method public getHistory(Landroid/net/NetworkTemplate;IIIIJJ)Landroid/net/NetworkStatsHistory;
    .registers 24
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "fields"    # I
    .param p6, "start"    # J
    .param p8, "end"    # J

    .prologue
    .line 177
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 178
    .local v10, "callerUid":I
    move/from16 v0, p2

    invoke-static {v0, v10}, isAccessibleToUser(II)Z

    move-result v4

    if-nez v4, :cond_31

    .line 179
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network stats history of uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is forbidden for caller "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 183
    :cond_31
    new-instance v2, Landroid/net/NetworkStatsHistory;

    iget-wide v6, p0, mBucketDuration:J

    cmp-long v4, p6, p8

    if-nez v4, :cond_44

    const/4 v4, 0x1

    :goto_3a
    move/from16 v0, p5

    invoke-direct {v2, v6, v7, v4, v0}, Landroid/net/NetworkStatsHistory;-><init>(JII)V

    .line 187
    .local v2, "combined":Landroid/net/NetworkStatsHistory;
    cmp-long v4, p6, p8

    if-nez v4, :cond_49

    .line 210
    :cond_43
    return-object v2

    .line 183
    .end local v2    # "combined":Landroid/net/NetworkStatsHistory;
    :cond_44
    invoke-direct {p0}, estimateBuckets()I

    move-result v4

    goto :goto_3a

    .line 189
    .restart local v2    # "combined":Landroid/net/NetworkStatsHistory;
    :cond_49
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4a
    iget-object v4, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v11, v4, :cond_43

    .line 190
    iget-object v4, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 193
    .local v12, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v4, v12, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    const/16 v5, -0x64

    if-ne v4, v5, :cond_cb

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_cb

    const/4 v8, 0x1

    .line 194
    .local v8, "ConsiderVideoCallUID":Z
    :goto_66
    move/from16 v9, p2

    .line 195
    .local v9, "TargetUid":I
    if-eqz v8, :cond_6c

    .line 196
    const/16 v9, -0x64

    .line 199
    :cond_6c
    const-string v4, "NetworkStatsCollection"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getHistory:mUID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isVideoCallUID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget v4, v12, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    move/from16 v0, p2

    if-eq v4, v0, :cond_97

    if-eqz v8, :cond_c8

    :cond_97
    iget v4, v12, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    move/from16 v0, p3

    invoke-static {v0, v4}, Landroid/net/NetworkStats;->setMatches(II)Z

    move-result v4

    if-eqz v4, :cond_c8

    iget v4, v12, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    move/from16 v0, p4

    if-ne v4, v0, :cond_c8

    iget-object v4, v12, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    move/from16 v0, p2

    invoke-static {p1, v4, v0}, templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;I)Z

    move-result v4

    if-eqz v4, :cond_c8

    .line 205
    const-string v4, "NetworkStatsCollection"

    const-string/jumbo v5, "getHistory:template mached"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v4, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v4, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStatsHistory;

    .local v3, "value":Landroid/net/NetworkStatsHistory;
    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    .line 207
    invoke-virtual/range {v2 .. v7}, Landroid/net/NetworkStatsHistory;->recordHistory(Landroid/net/NetworkStatsHistory;JJ)V

    .line 189
    .end local v3    # "value":Landroid/net/NetworkStatsHistory;
    :cond_c8
    add-int/lit8 v11, v11, 0x1

    goto :goto_4a

    .line 193
    .end local v8    # "ConsiderVideoCallUID":Z
    .end local v9    # "TargetUid":I
    :cond_cb
    const/4 v8, 0x0

    goto :goto_66
.end method

.method public getRelevantUids()[I
    .registers 7

    .prologue
    .line 146
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 147
    .local v0, "callerUid":I
    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    .line 148
    .local v4, "uids":Landroid/util/IntArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget-object v5, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_34

    .line 149
    iget-object v5, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 150
    .local v3, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v5, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {v5, v0}, isAccessibleToUser(II)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 151
    iget v5, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v4, v5}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v2

    .line 153
    .local v2, "j":I
    if-gez v2, :cond_31

    .line 154
    xor-int/lit8 v2, v2, -0x1

    .line 155
    iget v5, v3, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {v4, v2, v5}, Landroid/util/IntArray;->add(II)V

    .line 148
    .end local v2    # "j":I
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 159
    .end local v3    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_34
    invoke-virtual {v4}, Landroid/util/IntArray;->toArray()[I

    move-result-object v5

    return-object v5
.end method

.method public getStartMillis()J
    .registers 3

    .prologue
    .line 110
    iget-wide v0, p0, mStartMillis:J

    return-wide v0
.end method

.method public getSummary(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .registers 20
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .prologue
    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 220
    .local v6, "now":J
    new-instance v12, Landroid/net/NetworkStats;

    sub-long v2, p4, p2

    const/16 v4, 0x18

    invoke-direct {v12, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 222
    .local v12, "stats":Landroid/net/NetworkStats;
    cmp-long v2, p2, p4

    if-nez v2, :cond_12

    .line 254
    :cond_11
    return-object v12

    .line 224
    :cond_12
    new-instance v9, Landroid/net/NetworkStats$Entry;

    invoke-direct {v9}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 225
    .local v9, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v8, 0x0

    .line 227
    .local v8, "historyEntry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 228
    .local v0, "callerUid":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1d
    iget-object v2, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v10, v2, :cond_11

    .line 229
    iget-object v2, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 231
    .local v11, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v2, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    iget v3, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {p1, v2, v3}, templateMatches(Landroid/net/NetworkTemplate;Lcom/android/server/net/NetworkIdentitySet;I)Z

    move-result v2

    if-eqz v2, :cond_82

    iget v2, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {v2, v0}, isAccessibleToUser(II)Z

    move-result v2

    if-eqz v2, :cond_82

    iget v2, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_82

    .line 235
    iget-object v2, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStatsHistory;

    .local v1, "value":Landroid/net/NetworkStatsHistory;
    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    .line 236
    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 238
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v2, v9, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 239
    iget v2, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    iput v2, v9, Landroid/net/NetworkStats$Entry;->uid:I

    .line 240
    iget v2, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    iput v2, v9, Landroid/net/NetworkStats$Entry;->set:I

    .line 241
    iget v2, v11, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    iput v2, v9, Landroid/net/NetworkStats$Entry;->tag:I

    .line 242
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 243
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 244
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 245
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 246
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    iput-wide v2, v9, Landroid/net/NetworkStats$Entry;->operations:J

    .line 248
    invoke-virtual {v9}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_82

    .line 249
    invoke-virtual {v12, v9}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 228
    .end local v1    # "value":Landroid/net/NetworkStatsHistory;
    :cond_82
    add-int/lit8 v10, v10, 0x1

    goto :goto_1d
.end method

.method public getTotalBytes()J
    .registers 3

    .prologue
    .line 130
    iget-wide v0, p0, mTotalBytes:J

    return-wide v0
.end method

.method public isDirty()Z
    .registers 2

    .prologue
    .line 134
    iget-boolean v0, p0, mDirty:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 5

    .prologue
    .line 142
    iget-wide v0, p0, mStartMillis:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    iget-wide v0, p0, mEndMillis:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public read(Ljava/io/DataInputStream;)V
    .registers 18
    .param p1, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 323
    .local v7, "magic":I
    const v13, 0x414e4554

    if-eq v7, v13, :cond_23

    .line 324
    new-instance v13, Ljava/net/ProtocolException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unexpected magic: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 327
    :cond_23
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 328
    .local v12, "version":I
    packed-switch v12, :pswitch_data_7e

    .line 349
    new-instance v13, Ljava/net/ProtocolException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "unexpected version: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 331
    :pswitch_44
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 332
    .local v4, "identSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_49
    if-ge v2, v4, :cond_7c

    .line 333
    new-instance v3, Lcom/android/server/net/NetworkIdentitySet;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 335
    .local v3, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 336
    .local v9, "size":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_57
    if-ge v5, v9, :cond_79

    .line 337
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 338
    .local v11, "uid":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 339
    .local v8, "set":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 341
    .local v10, "tag":I
    new-instance v6, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v6, v3, v11, v8, v10}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 342
    .local v6, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    new-instance v1, Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 343
    .local v1, "history":Landroid/net/NetworkStatsHistory;
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v1}, recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 336
    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    .line 332
    .end local v1    # "history":Landroid/net/NetworkStatsHistory;
    .end local v6    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v8    # "set":I
    .end local v10    # "tag":I
    .end local v11    # "uid":I
    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 352
    .end local v3    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v5    # "j":I
    .end local v9    # "size":I
    :cond_7c
    return-void

    .line 328
    nop

    :pswitch_data_7e
    .packed-switch 0x10
        :pswitch_44
    .end packed-switch
.end method

.method public read(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, read(Ljava/io/DataInputStream;)V

    .line 318
    return-void
.end method

.method public readLegacyNetwork(Ljava/io/File;)V
    .registers 15
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 389
    new-instance v5, Landroid/util/AtomicFile;

    invoke-direct {v5, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 391
    .local v5, "inputFile":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    .line 393
    .local v3, "in":Ljava/io/DataInputStream;
    :try_start_6
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_14} :catch_8a
    .catchall {:try_start_6 .. :try_end_14} :catchall_88

    .line 396
    .end local v3    # "in":Ljava/io/DataInputStream;
    .local v4, "in":Ljava/io/DataInputStream;
    :try_start_14
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 397
    .local v7, "magic":I
    const v10, 0x414e4554

    if-eq v7, v10, :cond_3d

    .line 398
    new-instance v10, Ljava/net/ProtocolException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unexpected magic: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_37
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_37} :catch_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_5e

    .line 419
    .end local v7    # "magic":I
    :catch_37
    move-exception v10

    move-object v3, v4

    .line 422
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :goto_39
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 424
    :goto_3c
    return-void

    .line 401
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "magic":I
    :cond_3d
    :try_start_3d
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 402
    .local v9, "version":I
    packed-switch v9, :pswitch_data_8c

    .line 416
    new-instance v10, Ljava/net/ProtocolException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unexpected version: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_5e} :catch_37
    .catchall {:try_start_3d .. :try_end_5e} :catchall_5e

    .line 422
    .end local v7    # "magic":I
    .end local v9    # "version":I
    :catchall_5e
    move-exception v10

    move-object v3, v4

    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    :goto_60
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v10

    .line 405
    .end local v3    # "in":Ljava/io/DataInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "magic":I
    .restart local v9    # "version":I
    :pswitch_64
    :try_start_64
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 406
    .local v8, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_69
    if-ge v1, v8, :cond_83

    .line 407
    new-instance v2, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v2, v4}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 408
    .local v2, "ident":Lcom/android/server/net/NetworkIdentitySet;
    new-instance v0, Landroid/net/NetworkStatsHistory;

    invoke-direct {v0, v4}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 410
    .local v0, "history":Landroid/net/NetworkStatsHistory;
    new-instance v6, Lcom/android/server/net/NetworkStatsCollection$Key;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-direct {v6, v2, v10, v11, v12}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 411
    .local v6, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    invoke-direct {p0, v6, v0}, recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    :try_end_80
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_80} :catch_37
    .catchall {:try_start_64 .. :try_end_80} :catchall_5e

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 422
    .end local v0    # "history":Landroid/net/NetworkStatsHistory;
    .end local v2    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v6    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_83
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v3, v4

    .line 423
    .end local v4    # "in":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/io/DataInputStream;
    goto :goto_3c

    .line 422
    .end local v1    # "i":I
    .end local v7    # "magic":I
    .end local v8    # "size":I
    .end local v9    # "version":I
    :catchall_88
    move-exception v10

    goto :goto_60

    .line 419
    :catch_8a
    move-exception v10

    goto :goto_39

    .line 402
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_64
    .end packed-switch
.end method

.method public readLegacyUid(Ljava/io/File;Z)V
    .registers 23
    .param p1, "file"    # Ljava/io/File;
    .param p2, "onlyTags"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 428
    new-instance v8, Landroid/util/AtomicFile;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 430
    .local v8, "inputFile":Landroid/util/AtomicFile;
    const/4 v6, 0x0

    .line 432
    .local v6, "in":Ljava/io/DataInputStream;
    :try_start_8
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v17, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_18} :catch_c2
    .catchall {:try_start_8 .. :try_end_18} :catchall_c0

    .line 435
    .end local v6    # "in":Ljava/io/DataInputStream;
    .local v7, "in":Ljava/io/DataInputStream;
    :try_start_18
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    .line 436
    .local v11, "magic":I
    const v17, 0x414e4554

    move/from16 v0, v17

    if-eq v11, v0, :cond_45

    .line 437
    new-instance v17, Ljava/net/ProtocolException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "unexpected magic: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_3f} :catch_3f
    .catchall {:try_start_18 .. :try_end_3f} :catchall_6a

    .line 484
    .end local v11    # "magic":I
    :catch_3f
    move-exception v17

    move-object v6, v7

    .line 487
    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :goto_41
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 489
    :goto_44
    return-void

    .line 440
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "magic":I
    :cond_45
    :try_start_45
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    .line 441
    .local v16, "version":I
    packed-switch v16, :pswitch_data_c6

    .line 481
    new-instance v17, Ljava/net/ProtocolException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "unexpected version: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_6a
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_6a} :catch_3f
    .catchall {:try_start_45 .. :try_end_6a} :catchall_6a

    .line 487
    .end local v11    # "magic":I
    .end local v16    # "version":I
    :catchall_6a
    move-exception v17

    move-object v6, v7

    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :goto_6c
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v17

    .line 459
    .end local v6    # "in":Ljava/io/DataInputStream;
    .restart local v7    # "in":Ljava/io/DataInputStream;
    .restart local v11    # "magic":I
    .restart local v16    # "version":I
    :pswitch_70
    :try_start_70
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 460
    .local v5, "identSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_75
    if-ge v3, v5, :cond_bb

    .line 461
    new-instance v4, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v4, v7}, Lcom/android/server/net/NetworkIdentitySet;-><init>(Ljava/io/DataInputStream;)V

    .line 463
    .local v4, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 464
    .local v13, "size":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_81
    if-ge v9, v13, :cond_b8

    .line 465
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    .line 466
    .local v15, "uid":I
    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_b3

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 468
    .local v12, "set":I
    :goto_93
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    .line 470
    .local v14, "tag":I
    new-instance v10, Lcom/android/server/net/NetworkStatsCollection$Key;

    invoke-direct {v10, v4, v15, v12, v14}, Lcom/android/server/net/NetworkStatsCollection$Key;-><init>(Lcom/android/server/net/NetworkIdentitySet;III)V

    .line 471
    .local v10, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    new-instance v2, Landroid/net/NetworkStatsHistory;

    invoke-direct {v2, v7}, Landroid/net/NetworkStatsHistory;-><init>(Ljava/io/DataInputStream;)V

    .line 473
    .local v2, "history":Landroid/net/NetworkStatsHistory;
    if-nez v14, :cond_b5

    const/16 v17, 0x1

    :goto_a5
    move/from16 v0, v17

    move/from16 v1, p2

    if-eq v0, v1, :cond_b0

    .line 474
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V
    :try_end_b0
    .catch Ljava/io/FileNotFoundException; {:try_start_70 .. :try_end_b0} :catch_3f
    .catchall {:try_start_70 .. :try_end_b0} :catchall_6a

    .line 464
    :cond_b0
    add-int/lit8 v9, v9, 0x1

    goto :goto_81

    .line 466
    .end local v2    # "history":Landroid/net/NetworkStatsHistory;
    .end local v10    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v12    # "set":I
    .end local v14    # "tag":I
    :cond_b3
    const/4 v12, 0x0

    goto :goto_93

    .line 473
    .restart local v2    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v10    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .restart local v12    # "set":I
    .restart local v14    # "tag":I
    :cond_b5
    const/16 v17, 0x0

    goto :goto_a5

    .line 460
    .end local v2    # "history":Landroid/net/NetworkStatsHistory;
    .end local v10    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v12    # "set":I
    .end local v14    # "tag":I
    .end local v15    # "uid":I
    :cond_b8
    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    .line 487
    .end local v3    # "i":I
    .end local v4    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v5    # "identSize":I
    .end local v9    # "j":I
    .end local v13    # "size":I
    :cond_bb
    :pswitch_bb
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v6, v7

    .line 488
    .end local v7    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    goto :goto_44

    .line 487
    .end local v11    # "magic":I
    .end local v16    # "version":I
    :catchall_c0
    move-exception v17

    goto :goto_6c

    .line 484
    :catch_c2
    move-exception v17

    goto/16 :goto_41

    .line 441
    nop

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_bb
        :pswitch_bb
        :pswitch_70
        :pswitch_70
    .end packed-switch
.end method

.method public recordCollection(Lcom/android/server/net/NetworkStatsCollection;)V
    .registers 6
    .param p1, "another"    # Lcom/android/server/net/NetworkStatsCollection;

    .prologue
    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p1, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_1f

    .line 288
    iget-object v3, p1, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 289
    .local v1, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v3, p1, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkStatsHistory;

    .line 290
    .local v2, "value":Landroid/net/NetworkStatsHistory;
    invoke-direct {p0, v1, v2}, recordHistory(Lcom/android/server/net/NetworkStatsCollection$Key;Landroid/net/NetworkStatsHistory;)V

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 292
    .end local v1    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v2    # "value":Landroid/net/NetworkStatsHistory;
    :cond_1f
    return-void
.end method

.method public recordData(Lcom/android/server/net/NetworkIdentitySet;IIIJJLandroid/net/NetworkStats$Entry;)V
    .registers 23
    .param p1, "ident"    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "start"    # J
    .param p7, "end"    # J
    .param p9, "entry"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 262
    invoke-direct/range {p0 .. p4}, findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    .local v3, "history":Landroid/net/NetworkStatsHistory;
    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-object/from16 v8, p9

    .line 263
    invoke-virtual/range {v3 .. v8}, Landroid/net/NetworkStatsHistory;->recordData(JJLandroid/net/NetworkStats$Entry;)V

    .line 264
    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v8

    move-object/from16 v0, p9

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v0, p9

    iget-wide v10, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v4

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, noteRecordedHistory(JJJ)V

    .line 265
    return-void
.end method

.method public removeUids([I)V
    .registers 10
    .param p1, "uids"    # [I

    .prologue
    const/4 v7, 0x0

    .line 497
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 498
    .local v2, "knownKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    iget-object v5, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 501
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 502
    .local v1, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v5, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 504
    iget v5, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    if-nez v5, :cond_3c

    .line 505
    iget-object v5, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkStatsHistory;

    .line 506
    .local v4, "uidHistory":Landroid/net/NetworkStatsHistory;
    iget-object v5, v1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    const/4 v6, -0x4

    invoke-direct {p0, v5, v6, v7, v7}, findOrCreateHistory(Lcom/android/server/net/NetworkIdentitySet;III)Landroid/net/NetworkStatsHistory;

    move-result-object v3

    .line 508
    .local v3, "removedHistory":Landroid/net/NetworkStatsHistory;
    invoke-virtual {v3, v4}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 510
    .end local v3    # "removedHistory":Landroid/net/NetworkStatsHistory;
    .end local v4    # "uidHistory":Landroid/net/NetworkStatsHistory;
    :cond_3c
    iget-object v5, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const/4 v5, 0x1

    iput-boolean v5, p0, mDirty:Z

    goto :goto_12

    .line 514
    .end local v1    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_45
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 103
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, mStartMillis:J

    .line 104
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, mEndMillis:J

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mTotalBytes:J

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, mDirty:Z

    .line 107
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .registers 10
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    .line 357
    .local v6, "keysByIdent":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/net/NetworkIdentitySet;Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;>;"
    iget-object v7, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 358
    .local v4, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v7, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 359
    .local v5, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    if-nez v5, :cond_2d

    .line 360
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 361
    iget-object v7, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    :cond_2d
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 366
    .end local v4    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v5    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    :cond_31
    const v7, 0x414e4554

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 367
    const/16 v7, 0x10

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 369
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 370
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkIdentitySet;

    .line 371
    .local v3, "ident":Lcom/android/server/net/NetworkIdentitySet;
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 372
    .restart local v5    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkIdentitySet;->writeToStream(Ljava/io/DataOutputStream;)V

    .line 374
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 375
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/net/NetworkStatsCollection$Key;

    .line 376
    .restart local v4    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget-object v7, p0, mStats:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkStatsHistory;

    .line 377
    .local v0, "history":Landroid/net/NetworkStatsHistory;
    iget v7, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 378
    iget v7, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 379
    iget v7, v4, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    invoke-virtual {p1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 380
    invoke-virtual {v0, p1}, Landroid/net/NetworkStatsHistory;->writeToStream(Ljava/io/DataOutputStream;)V

    goto :goto_6b

    .line 384
    .end local v0    # "history":Landroid/net/NetworkStatsHistory;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ident":Lcom/android/server/net/NetworkIdentitySet;
    .end local v4    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    .end local v5    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/net/NetworkStatsCollection$Key;>;"
    :cond_92
    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    .line 385
    return-void
.end method
