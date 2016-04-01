.class public Lcom/android/server/notification/RankingHelper;
.super Ljava/lang/Object;
.source "RankingHelper.java"

# interfaces
.implements Lcom/android/server/notification/RankingConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/RankingHelper$1;,
        Lcom/android/server/notification/RankingHelper$Record;
    }
.end annotation


# static fields
.field private static final ATT_NAME:Ljava/lang/String; = "name"

.field private static final ATT_PEEKABLE:Ljava/lang/String; = "peekable"

.field private static final ATT_PRIORITY:Ljava/lang/String; = "priority"

.field private static final ATT_UID:Ljava/lang/String; = "uid"

.field private static final ATT_VERSION:Ljava/lang/String; = "version"

.field private static final ATT_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final DEFAULT_PEEKABLE:Z = true

.field private static final DEFAULT_PRIORITY:I = 0x0

.field private static final DEFAULT_VISIBILITY:I = -0x3e8

.field private static final TAG:Ljava/lang/String; = "RankingHelper"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_RANKING:Ljava/lang/String; = "ranking"

.field private static final XML_VERSION:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

.field private final mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

.field private final mProxyByGroupTmp:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRankingHandler:Landroid/os/Handler;

.field private final mRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoredWithoutUids:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rankingHandler"    # Landroid/os/Handler;
    .param p3, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;
    .param p4, "extractorNames"    # [Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v5, Lcom/android/server/notification/NotificationComparator;

    invoke-direct {v5}, Lcom/android/server/notification/NotificationComparator;-><init>()V

    iput-object v5, p0, mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    .line 62
    new-instance v5, Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-direct {v5}, Lcom/android/server/notification/GlobalSortKeyComparator;-><init>()V

    iput-object v5, p0, mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    .line 64
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, mRecords:Landroid/util/ArrayMap;

    .line 65
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, mProxyByGroupTmp:Landroid/util/ArrayMap;

    .line 66
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, mRestoredWithoutUids:Landroid/util/ArrayMap;

    .line 73
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, mRankingHandler:Landroid/os/Handler;

    .line 76
    array-length v0, p4

    .line 77
    .local v0, "N":I
    new-array v5, v0, [Lcom/android/server/notification/NotificationSignalExtractor;

    iput-object v5, p0, mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    .line 78
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_30
    if-ge v4, v0, :cond_b9

    .line 80
    :try_start_32
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    aget-object v6, p4, v4

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 81
    .local v3, "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationSignalExtractor;

    .line 83
    .local v2, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-interface {v2, v5, p3}, Lcom/android/server/notification/NotificationSignalExtractor;->initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V

    .line 84
    invoke-interface {v2, p0}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    .line 85
    iget-object v5, p0, mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aput-object v2, v5, v4
    :try_end_50
    .catch Ljava/lang/ClassNotFoundException; {:try_start_32 .. :try_end_50} :catch_53
    .catch Ljava/lang/InstantiationException; {:try_start_32 .. :try_end_50} :catch_75
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_50} :catch_97

    .line 78
    .end local v2    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    .end local v3    # "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 86
    :catch_53
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "RankingHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find extractor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p4, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    .line 88
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_75
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/InstantiationException;
    const-string v5, "RankingHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t instantiate extractor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p4, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    .line 90
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_97
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "RankingHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem accessing extractor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p4, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    .line 94
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_b9
    return-void
.end method

.method private static dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .registers 9
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 419
    .local p3, "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/RankingHelper$Record;>;"
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 420
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_7b

    .line 421
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    .line 422
    .local v2, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz p2, :cond_17

    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 423
    :cond_17
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
    const-string v3, "  "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 425
    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 426
    const-string v3, " ("

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 427
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    sget v4, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    if-ne v3, v4, :cond_74

    const-string v3, "UNKNOWN_UID"

    :goto_31
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 428
    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 429
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v3, :cond_4b

    .line 430
    const-string v3, " priority="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 431
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-static {v3}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 433
    :cond_4b
    iget-boolean v3, v2, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5a

    .line 434
    const-string v3, " peekable="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    iget-boolean v3, v2, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 437
    :cond_5a
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    const/16 v4, -0x3e8

    if-eq v3, v4, :cond_6e

    .line 438
    const-string v3, " visibility="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 439
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-static {v3}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 441
    :cond_6e
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 420
    :cond_71
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 427
    :cond_74
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_31

    .line 444
    .end local v2    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_7b
    return-void
.end method

.method private getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 198
    invoke-static {p1, p2}, recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, mRecords:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 200
    :try_start_7
    iget-object v2, p0, mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/RankingHelper$Record;

    .line 201
    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v1, :cond_20

    .line 202
    new-instance v1, Lcom/android/server/notification/RankingHelper$Record;

    .end local v1    # "r":Lcom/android/server/notification/RankingHelper$Record;
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/notification/RankingHelper$Record;-><init>(Lcom/android/server/notification/RankingHelper$1;)V

    .line 203
    .restart local v1    # "r":Lcom/android/server/notification/RankingHelper$Record;
    iput-object p1, v1, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    .line 204
    iput p2, v1, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    .line 205
    iget-object v2, p0, mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_20
    monitor-exit v3

    return-object v1

    .line 208
    .end local v1    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :catchall_22
    move-exception v2

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw v2
.end method

.method private static recordKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeDefaultRecords()V
    .registers 7

    .prologue
    .line 212
    iget-object v4, p0, mRecords:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 213
    :try_start_3
    iget-object v3, p0, mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 214
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_30

    .line 215
    iget-object v3, p0, mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    .line 216
    .local v2, "r":Lcom/android/server/notification/RankingHelper$Record;
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-nez v3, :cond_2d

    iget-boolean v3, v2, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2d

    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    const/16 v5, -0x3e8

    if-ne v3, v5, :cond_2d

    .line 218
    iget-object v3, p0, mRecords:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 221
    .end local v2    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_30
    monitor-exit v4

    .line 222
    return-void

    .line 221
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_32
    move-exception v3

    monitor-exit v4
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v3
.end method

.method private static safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 340
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2}, tryParseBool(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 326
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2}, tryParseInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static tryParseBool(Ljava/lang/String;Z)Z
    .registers 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # Z

    .prologue
    .line 345
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 346
    .end local p1    # "defValue":Z
    :goto_6
    return p1

    .restart local p1    # "defValue":Z
    :cond_7
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_6
.end method

.method private static tryParseInt(Ljava/lang/String;I)I
    .registers 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    .line 331
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 335
    .end local p1    # "defValue":I
    :goto_6
    return p1

    .line 333
    .restart local p1    # "defValue":I
    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_e} :catch_10

    move-result p1

    goto :goto_6

    .line 334
    :catch_10
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_6
.end method

.method private updateConfig()V
    .registers 5

    .prologue
    .line 256
    iget-object v2, p0, mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v2

    .line 257
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v0, :cond_10

    .line 258
    iget-object v2, p0, mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    invoke-interface {v2, p0}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 260
    :cond_10
    iget-object v2, p0, mRankingHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 261
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 398
    if-nez p3, :cond_26

    .line 399
    iget-object v2, p0, mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v2

    .line 400
    .local v0, "N":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 401
    const-string/jumbo v2, "mSignalExtractors.length = "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 403
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_26

    .line 404
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 405
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    iget-object v2, p0, mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 409
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_26
    if-nez p3, :cond_31

    .line 410
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    const-string/jumbo v2, "per-package config:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    :cond_31
    iget-object v2, p0, mRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v2}, dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 414
    iget-object v2, p0, mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v2}, dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 415
    return-void
.end method

.method public extractSignals(Lcom/android/server/notification/NotificationRecord;)V
    .registers 12
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 109
    iget-object v8, p0, mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v8

    .line 110
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v0, :cond_2e

    .line 111
    iget-object v8, p0, mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v1, v8, v4

    .line 113
    .local v1, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :try_start_a
    invoke-interface {v1, p1}, Lcom/android/server/notification/NotificationSignalExtractor;->process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    move-result-object v6

    .line 114
    .local v6, "recon":Lcom/android/server/notification/RankingReconsideration;
    if-eqz v6, :cond_22

    .line 115
    iget-object v8, p0, mRankingHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    invoke-static {v8, v9, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 117
    .local v5, "m":Landroid/os/Message;
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8}, Lcom/android/server/notification/RankingReconsideration;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 118
    .local v2, "delay":J
    iget-object v8, p0, mRankingHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_22} :catch_25

    .line 110
    .end local v2    # "delay":J
    .end local v5    # "m":Landroid/os/Message;
    .end local v6    # "recon":Lcom/android/server/notification/RankingReconsideration;
    :cond_22
    :goto_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 120
    :catch_25
    move-exception v7

    .line 121
    .local v7, "t":Ljava/lang/Throwable;
    const-string v8, "RankingHelper"

    const-string v9, "NotificationSignalExtractor failed."

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 124
    .end local v1    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_2e
    return-void
.end method

.method public findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/notification/NotificationSignalExtractor;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v3, p0, mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v3

    .line 99
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_18

    .line 100
    iget-object v3, p0, mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v1, v3, v2

    .line 101
    .local v1, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 105
    .end local v1    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :goto_14
    return-object v1

    .line 99
    .restart local v1    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 105
    .end local v1    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :cond_18
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getPackagePeekable(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 367
    iget-object v1, p0, mRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/RankingHelper$Record;

    .line 368
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v0, :cond_11

    iget-boolean v1, v0, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x1

    goto :goto_10
.end method

.method public getPackagePriority(Ljava/lang/String;I)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 351
    iget-object v1, p0, mRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/RankingHelper$Record;

    .line 352
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v0, :cond_11

    iget v1, v0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getPackageVisibilityOverride(Ljava/lang/String;I)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 383
    iget-object v1, p0, mRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/RankingHelper$Record;

    .line 384
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v0, :cond_11

    iget v1, v0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    :goto_10
    return v1

    :cond_11
    const/16 v1, -0x3e8

    goto :goto_10
.end method

.method public indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I
    .registers 4
    .param p2, "target"    # Lcom/android/server/notification/NotificationRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/NotificationRecord;",
            ")I"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v0, p0, mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {p1, p2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public onPackagesChanged(Z[Ljava/lang/String;)V
    .registers 14
    .param p1, "queryReplace"    # Z
    .param p2, "pkgList"    # [Ljava/lang/String;

    .prologue
    .line 447
    if-nez p1, :cond_f

    if-eqz p2, :cond_f

    array-length v7, p2

    if-eqz v7, :cond_f

    iget-object v7, p0, mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 471
    :cond_f
    :goto_f
    return-void

    .line 451
    :cond_10
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 452
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 453
    .local v6, "updated":Z
    iget-object v8, p0, mRecords:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 454
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    :try_start_1b
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1d
    if-ge v1, v2, :cond_4a

    aget-object v3, v0, v1

    .line 455
    .local v3, "pkg":Ljava/lang/String;
    iget-object v7, p0, mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/RankingHelper$Record;
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_51

    .line 456
    .local v5, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v5, :cond_47

    .line 458
    :try_start_2b
    iget-object v7, v5, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v7

    iput v7, v5, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    .line 459
    iget-object v7, p0, mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v7, p0, mRecords:Landroid/util/ArrayMap;

    iget-object v9, v5, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    iget v10, v5, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v9, v10}, recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_46} :catch_54
    .catchall {:try_start_2b .. :try_end_46} :catchall_51

    .line 461
    const/4 v6, 0x1

    .line 454
    :cond_47
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 467
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v5    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_4a
    :try_start_4a
    monitor-exit v8
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_51

    .line 468
    if-eqz v6, :cond_f

    .line 469
    invoke-direct {p0}, updateConfig()V

    goto :goto_f

    .line 467
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    :catchall_51
    move-exception v7

    :try_start_52
    monitor-exit v8
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v7

    .line 462
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v5    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :catch_54
    move-exception v7

    goto :goto_47
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .registers 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "forRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 129
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 130
    .local v6, "type":I
    const/4 v9, 0x2

    if-eq v6, v9, :cond_e

    .line 140
    :cond_d
    return-void

    .line 131
    :cond_e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "tag":Ljava/lang/String;
    const-string/jumbo v9, "ranking"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 133
    iget-object v10, p0, mRecords:Landroid/util/ArrayMap;

    monitor-enter v10

    .line 134
    :try_start_1e
    iget-object v9, p0, mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->clear()V

    .line 135
    monitor-exit v10
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_dd

    .line 136
    iget-object v9, p0, mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->clear()V

    .line 137
    :cond_29
    :goto_29
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    const/4 v9, 0x1

    if-eq v6, v9, :cond_e5

    .line 138
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 139
    const/4 v9, 0x3

    if-ne v6, v9, :cond_40

    const-string/jumbo v9, "ranking"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 142
    :cond_40
    const/4 v9, 0x2

    if-ne v6, v9, :cond_29

    .line 143
    const-string/jumbo v9, "package"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 144
    const-string/jumbo v9, "uid"

    sget v10, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    invoke-static {p1, v9, v10}, safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 145
    .local v7, "uid":I
    const-string/jumbo v9, "priority"

    const/4 v10, 0x0

    invoke-static {p1, v9, v10}, safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 146
    .local v3, "priority":I
    const-string/jumbo v9, "peekable"

    const/4 v10, 0x1

    invoke-static {p1, v9, v10}, safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 147
    .local v1, "peekable":Z
    const-string/jumbo v9, "visibility"

    const/16 v10, -0x3e8

    invoke-static {p1, v9, v10}, safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 148
    .local v8, "vis":I
    const/4 v9, 0x0

    const-string/jumbo v10, "name"

    invoke-interface {p1, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_29

    .line 151
    if-eqz p2, :cond_83

    .line 153
    const/4 v9, 0x0

    :try_start_7f
    invoke-virtual {v2, v0, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_82
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7f .. :try_end_82} :catch_ed

    move-result v7

    .line 158
    :cond_83
    :goto_83
    const/4 v4, 0x0

    .line 159
    .local v4, "r":Lcom/android/server/notification/RankingHelper$Record;
    sget v9, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    if-ne v7, v9, :cond_e0

    .line 160
    iget-object v9, p0, mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "r":Lcom/android/server/notification/RankingHelper$Record;
    check-cast v4, Lcom/android/server/notification/RankingHelper$Record;

    .line 161
    .restart local v4    # "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v4, :cond_9d

    .line 162
    new-instance v4, Lcom/android/server/notification/RankingHelper$Record;

    .end local v4    # "r":Lcom/android/server/notification/RankingHelper$Record;
    const/4 v9, 0x0

    invoke-direct {v4, v9}, Lcom/android/server/notification/RankingHelper$Record;-><init>(Lcom/android/server/notification/RankingHelper$1;)V

    .line 163
    .restart local v4    # "r":Lcom/android/server/notification/RankingHelper$Record;
    iget-object v9, p0, mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v9, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_9d
    :goto_9d
    if-eqz v3, :cond_a1

    .line 169
    iput v3, v4, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    .line 171
    :cond_a1
    const/4 v9, 0x1

    if-eq v1, v9, :cond_a6

    .line 172
    iput-boolean v1, v4, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    .line 174
    :cond_a6
    const/16 v9, -0x3e8

    if-eq v8, v9, :cond_29

    .line 176
    and-int/lit8 v9, v8, 0x10

    if-nez v9, :cond_d9

    .line 177
    and-int/lit8 v9, v8, 0x8

    if-eqz v9, :cond_d7

    .line 178
    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    .line 179
    const-string v9, "RankingHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "For OS upgrade, set peekable to false for uid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", vis : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_d7
    or-int/lit8 v8, v8, 0x18

    .line 184
    :cond_d9
    iput v8, v4, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    goto/16 :goto_29

    .line 135
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "peekable":Z
    .end local v3    # "priority":I
    .end local v4    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .end local v7    # "uid":I
    .end local v8    # "vis":I
    :catchall_dd
    move-exception v9

    :try_start_de
    monitor-exit v10
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_dd

    throw v9

    .line 166
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "peekable":Z
    .restart local v3    # "priority":I
    .restart local v4    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .restart local v7    # "uid":I
    .restart local v8    # "vis":I
    :cond_e0
    invoke-direct {p0, v0, v7}, getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v4

    goto :goto_9d

    .line 190
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "peekable":Z
    .end local v3    # "priority":I
    .end local v4    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .end local v7    # "uid":I
    .end local v8    # "vis":I
    :cond_e5
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Failed to reach END_DOCUMENT"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 154
    .restart local v0    # "name":Ljava/lang/String;
    .restart local v1    # "peekable":Z
    .restart local v3    # "priority":I
    .restart local v7    # "uid":I
    .restart local v8    # "vis":I
    :catch_ed
    move-exception v9

    goto :goto_83
.end method

.method public setPackagePeekable(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "peekable"    # Z

    .prologue
    .line 373
    invoke-virtual {p0, p1, p2}, getPackagePeekable(Ljava/lang/String;I)Z

    move-result v0

    if-ne p3, v0, :cond_7

    .line 379
    :goto_6
    return-void

    .line 376
    :cond_7
    invoke-direct {p0, p1, p2}, getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iput-boolean p3, v0, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    .line 377
    invoke-direct {p0}, removeDefaultRecords()V

    .line 378
    invoke-direct {p0}, updateConfig()V

    goto :goto_6
.end method

.method public setPackagePriority(Ljava/lang/String;II)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "priority"    # I

    .prologue
    .line 357
    invoke-virtual {p0, p1, p2}, getPackagePriority(Ljava/lang/String;I)I

    move-result v0

    if-ne p3, v0, :cond_7

    .line 363
    :goto_6
    return-void

    .line 360
    :cond_7
    invoke-direct {p0, p1, p2}, getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iput p3, v0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    .line 361
    invoke-direct {p0}, removeDefaultRecords()V

    .line 362
    invoke-direct {p0}, updateConfig()V

    goto :goto_6
.end method

.method public setPackageVisibilityOverride(Ljava/lang/String;II)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "visibility"    # I

    .prologue
    .line 389
    invoke-virtual {p0, p1, p2}, getPackageVisibilityOverride(Ljava/lang/String;I)I

    move-result v0

    if-ne p3, v0, :cond_7

    .line 395
    :goto_6
    return-void

    .line 392
    :cond_7
    invoke-direct {p0, p1, p2}, getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iput p3, v0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    .line 393
    invoke-direct {p0}, removeDefaultRecords()V

    .line 394
    invoke-direct {p0}, updateConfig()V

    goto :goto_6
.end method

.method public sort(Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 266
    .local v0, "N":I
    add-int/lit8 v5, v0, -0x1

    .local v5, "i":I
    :goto_6
    if-ltz v5, :cond_15

    .line 267
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    .line 266
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 271
    :cond_15
    iget-object v8, p0, mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    invoke-static {p1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 273
    iget-object v9, p0, mProxyByGroupTmp:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 275
    add-int/lit8 v5, v0, -0x1

    :goto_1f
    if-ltz v5, :cond_48

    .line 276
    :try_start_21
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 277
    .local v7, "record":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v7, v5}, Lcom/android/server/notification/NotificationRecord;->setAuthoritativeRank(I)V

    .line 278
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "groupKey":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v6

    .line 280
    .local v6, "isGroupSummary":Z
    if-nez v6, :cond_40

    iget-object v8, p0, mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_45

    .line 281
    :cond_40
    iget-object v8, p0, mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_45
    add-int/lit8 v5, v5, -0x1

    goto :goto_1f

    .line 286
    .end local v1    # "groupKey":Ljava/lang/String;
    .end local v6    # "isGroupSummary":Z
    .end local v7    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_48
    const/4 v5, 0x0

    :goto_49
    if-ge v5, v0, :cond_dc

    .line 287
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 288
    .restart local v7    # "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v8, p0, mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 289
    .local v2, "groupProxy":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "groupSortKey":Ljava/lang/String;
    if-nez v3, :cond_b5

    .line 298
    const-string/jumbo v4, "nsk"

    .line 305
    .local v4, "groupSortKeyPortion":Ljava/lang/String;
    :goto_6a
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v6

    .line 306
    .restart local v6    # "isGroupSummary":Z
    const-string/jumbo v10, "intrsv=%c:grnk=0x%04x:gsmry=%c:%s:rnk=0x%04x"

    const/4 v8, 0x5

    new-array v11, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->isRecentlyIntrusive()Z

    move-result v8

    if-eqz v8, :cond_d6

    const/16 v8, 0x30

    :goto_81
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v11, v12

    const/4 v8, 0x1

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    const/4 v12, 0x2

    if-eqz v6, :cond_d9

    const/16 v8, 0x30

    :goto_97
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v11, v12

    const/4 v8, 0x3

    aput-object v4, v11, v8

    const/4 v8, 0x4

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    .line 286
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 299
    .end local v4    # "groupSortKeyPortion":Ljava/lang/String;
    .end local v6    # "isGroupSummary":Z
    :cond_b5
    const-string v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c1

    .line 300
    const-string/jumbo v4, "esk"

    .restart local v4    # "groupSortKeyPortion":Ljava/lang/String;
    goto :goto_6a

    .line 302
    .end local v4    # "groupSortKeyPortion":Ljava/lang/String;
    :cond_c1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "gsk="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "groupSortKeyPortion":Ljava/lang/String;
    goto :goto_6a

    .line 306
    .restart local v6    # "isGroupSummary":Z
    :cond_d6
    const/16 v8, 0x31

    goto :goto_81

    :cond_d9
    const/16 v8, 0x31

    goto :goto_97

    .line 314
    .end local v2    # "groupProxy":Lcom/android/server/notification/NotificationRecord;
    .end local v3    # "groupSortKey":Ljava/lang/String;
    .end local v4    # "groupSortKeyPortion":Ljava/lang/String;
    .end local v6    # "isGroupSummary":Z
    .end local v7    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_dc
    iget-object v8, p0, mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V

    .line 315
    monitor-exit v9
    :try_end_e2
    .catchall {:try_start_21 .. :try_end_e2} :catchall_e8

    .line 318
    iget-object v8, p0, mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {p1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 319
    return-void

    .line 315
    :catchall_e8
    move-exception v8

    :try_start_e9
    monitor-exit v9
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    throw v8
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 11
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 225
    const-string/jumbo v3, "ranking"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    const-string/jumbo v3, "version"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    iget-object v4, p0, mRecords:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 229
    :try_start_15
    iget-object v3, p0, mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 230
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    if-ge v1, v0, :cond_92

    .line 231
    iget-object v3, p0, mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    .line 232
    .local v2, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz p2, :cond_33

    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eqz v3, :cond_33

    .line 230
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 235
    :cond_33
    const/4 v3, 0x0

    const-string/jumbo v5, "package"

    invoke-interface {p1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 236
    const/4 v3, 0x0

    const-string/jumbo v5, "name"

    iget-object v6, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-interface {p1, v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v3, :cond_54

    .line 238
    const/4 v3, 0x0

    const-string/jumbo v5, "priority"

    iget v6, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 240
    :cond_54
    iget-boolean v3, v2, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    if-eq v3, v7, :cond_65

    .line 241
    const/4 v3, 0x0

    const-string/jumbo v5, "peekable"

    iget-boolean v6, v2, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    :cond_65
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    const/16 v5, -0x3e8

    if-eq v3, v5, :cond_78

    .line 244
    const/4 v3, 0x0

    const-string/jumbo v5, "visibility"

    iget v6, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 246
    :cond_78
    if-nez p2, :cond_87

    .line 247
    const/4 v3, 0x0

    const-string/jumbo v5, "uid"

    iget v6, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 249
    :cond_87
    const/4 v3, 0x0

    const-string/jumbo v5, "package"

    invoke-interface {p1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_30

    .line 252
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :catchall_8f
    move-exception v3

    monitor-exit v4
    :try_end_91
    .catchall {:try_start_15 .. :try_end_91} :catchall_8f

    throw v3

    .line 251
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_92
    const/4 v3, 0x0

    :try_start_93
    const-string/jumbo v5, "ranking"

    invoke-interface {p1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 252
    monitor-exit v4
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_8f

    .line 253
    return-void
.end method
