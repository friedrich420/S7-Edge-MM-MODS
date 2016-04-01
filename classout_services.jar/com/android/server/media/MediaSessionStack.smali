.class public Lcom/android/server/media/MediaSessionStack;
.super Ljava/lang/Object;
.source "MediaSessionStack.java"


# static fields
.field private static final ALWAYS_PRIORITY_STATES:[I

.field private static final TRANSITION_PRIORITY_STATES:[I

.field private static prev_userId:I


# instance fields
.field private mCachedActiveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

.field private mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

.field private mCachedTransportControlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

.field private mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

.field private mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

.field private final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, -0x1

    sput v0, prev_userId:I

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, ALWAYS_PRIORITY_STATES:[I

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, TRANSITION_PRIORITY_STATES:[I

    return-void

    .line 39
    :array_14
    .array-data 4
        0x4
        0x5
        0x9
        0xa
    .end array-data

    .line 48
    :array_20
    .array-data 4
        0x6
        0x8
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mSessions:Ljava/util/ArrayList;

    return-void
.end method

.method private clearCache()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 372
    iput-object v0, p0, mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

    .line 373
    iput-object v0, p0, mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    .line 374
    iput-object v0, p0, mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    .line 375
    iput-object v0, p0, mCachedActiveList:Ljava/util/ArrayList;

    .line 376
    iput-object v0, p0, mCachedTransportControlList:Ljava/util/ArrayList;

    .line 377
    return-void
.end method

.method private containsState(I[I)Z
    .registers 5
    .param p1, "state"    # I
    .param p2, "states"    # [I

    .prologue
    .line 363
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_d

    .line 364
    aget v1, p2, v0

    if-ne v1, p1, :cond_a

    .line 365
    const/4 v1, 0x1

    .line 368
    :goto_9
    return v1

    .line 363
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 368
    :cond_d
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private getPriorityListLocked(ZII)Ljava/util/ArrayList;
    .registers 16
    .param p1, "activeOnly"    # Z
    .param p2, "withFlags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    const/4 v2, 0x0

    .line 295
    .local v2, "lastLocalIndex":I
    const/4 v1, 0x0

    .line 296
    .local v1, "lastActiveIndex":I
    const/4 v3, 0x0

    .line 298
    .local v3, "lastPublishedIndex":I
    iget-object v7, p0, mSessions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 299
    .local v6, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v6, :cond_64

    .line 300
    iget-object v7, p0, mSessions:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaSessionRecord;

    .line 302
    .local v5, "session":Lcom/android/server/media/MediaSessionRecord;
    const/4 v7, -0x1

    if-eq p3, v7, :cond_25

    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v7

    if-eq p3, v7, :cond_25

    .line 299
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 306
    :cond_25
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->getFlags()J

    move-result-wide v8

    int-to-long v10, p2

    and-long/2addr v8, v10

    int-to-long v10, p2

    cmp-long v7, v8, v10

    if-nez v7, :cond_22

    .line 310
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v7

    if-nez v7, :cond_3c

    .line 311
    if-nez p1, :cond_22

    .line 314
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 319
    :cond_3c
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord;->isSystemPriority()Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 322
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 323
    add-int/lit8 v2, v2, 0x1

    .line 324
    add-int/lit8 v1, v1, 0x1

    .line 325
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 326
    :cond_4d
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    move-result v7

    if-eqz v7, :cond_5e

    .line 330
    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 331
    add-int/lit8 v2, v2, 0x1

    .line 332
    add-int/lit8 v1, v1, 0x1

    .line 333
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 343
    :cond_5e
    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 344
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 348
    .end local v5    # "session":Lcom/android/server/media/MediaSessionRecord;
    :cond_64
    return-object v4
.end method

.method private shouldUpdatePriority(II)Z
    .registers 5
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .prologue
    const/4 v0, 0x1

    .line 352
    sget-object v1, ALWAYS_PRIORITY_STATES:[I

    invoke-direct {p0, p2, v1}, containsState(I[I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 359
    :cond_9
    :goto_9
    return v0

    .line 355
    :cond_a
    sget-object v1, TRANSITION_PRIORITY_STATES:[I

    invoke-direct {p0, p1, v1}, containsState(I[I)Z

    move-result v1

    if-nez v1, :cond_1a

    sget-object v1, TRANSITION_PRIORITY_STATES:[I

    invoke-direct {p0, p2, v1}, containsState(I[I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 359
    :cond_1a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public addSession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 72
    iget-object v0, p0, mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-direct {p0}, clearCache()V

    .line 74
    iput-object p1, p0, mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    .line 75
    return-void
.end method

.method public clearPreviousUserCache()V
    .registers 1

    .prologue
    .line 135
    invoke-direct {p0}, clearCache()V

    .line 136
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 266
    const/4 v5, -0x1

    invoke-direct {p0, v6, v6, v5}, getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v4

    .line 268
    .local v4, "sortedSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 269
    .local v0, "count":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Global priority session is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Sessions Stack - have "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sessions:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "indent":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5a
    if-ge v1, v0, :cond_6b

    .line 273
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    .line 274
    .local v3, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v3, p1, v2}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 272
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 277
    .end local v3    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_6b
    return-void
.end method

.method public getActiveSessions(I)Ljava/util/ArrayList;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, mCachedActiveList:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    sget v0, prev_userId:I

    if-eq v0, p1, :cond_12

    .line 148
    :cond_8
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, mCachedActiveList:Ljava/util/ArrayList;

    .line 149
    sput p1, prev_userId:I

    .line 151
    :cond_12
    iget-object v0, p0, mCachedActiveList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDefaultMediaButtonSession(IZ)Lcom/android/server/media/MediaSessionRecord;
    .registers 8
    .param p1, "userId"    # I
    .param p2, "includeNotPlaying"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 197
    iget-object v2, p0, mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v2, :cond_11

    iget-object v2, p0, mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 198
    iget-object v2, p0, mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 226
    :goto_10
    return-object v2

    .line 200
    :cond_11
    iget-object v2, p0, mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v2, :cond_18

    .line 201
    iget-object v2, p0, mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    goto :goto_10

    .line 203
    :cond_18
    invoke-direct {p0, v4, v4, p1}, getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v1

    .line 205
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3a

    .line 206
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaSessionRecord;

    .line 207
    .local v0, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v0, v3}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 210
    iput-object v0, p0, mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    .line 211
    iput-object v0, p0, mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    .line 220
    :cond_32
    :goto_32
    if-eqz p2, :cond_3a

    iget-object v2, p0, mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    if-nez v2, :cond_3a

    .line 223
    iput-object v0, p0, mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    .line 226
    .end local v0    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_3a
    iget-object v2, p0, mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    goto :goto_10

    .line 212
    .restart local v0    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_3d
    iget-object v2, p0, mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v2, :cond_32

    .line 213
    iget-object v2, p0, mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 214
    iget-object v2, p0, mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    iput-object v2, p0, mCachedButtonReceiver:Lcom/android/server/media/MediaSessionRecord;

    goto :goto_32

    .line 217
    :cond_4e
    const/4 v2, 0x0

    iput-object v2, p0, mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    goto :goto_32
.end method

.method public getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecord;
    .registers 8
    .param p1, "userId"    # I

    .prologue
    .line 249
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, p1}, getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v2

    .line 251
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 252
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, v3, :cond_1e

    .line 253
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    .line 254
    .local v1, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPlaybackType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1b

    .line 258
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :goto_1a
    return-object v1

    .line 252
    .restart local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 258
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_1e
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public getDefaultSession(I)Lcom/android/server/media/MediaSessionRecord;
    .registers 5
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v1, p0, mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v1, :cond_8

    .line 179
    iget-object v1, p0, mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

    .line 185
    :goto_7
    return-object v1

    .line 181
    :cond_8
    const/4 v1, 0x1

    invoke-direct {p0, v1, v2, p1}, getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v0

    .line 182
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1a

    .line 183
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    goto :goto_7

    .line 185
    :cond_1a
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public getDefaultVolumeSession(I)Lcom/android/server/media/MediaSessionRecord;
    .registers 8
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 230
    iget-object v4, p0, mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v4, :cond_10

    iget-object v4, p0, mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 231
    iget-object v1, p0, mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 245
    :goto_f
    return-object v1

    .line 233
    :cond_10
    iget-object v4, p0, mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v4, :cond_17

    .line 234
    iget-object v1, p0, mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    goto :goto_f

    .line 236
    :cond_17
    const/4 v4, 0x1

    invoke-direct {p0, v4, v5, p1}, getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v2

    .line 237
    .local v2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 238
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    if-ge v0, v3, :cond_35

    .line 239
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    .line 240
    .local v1, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v1, v5}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 241
    iput-object v1, p0, mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    goto :goto_f

    .line 238
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 245
    .end local v1    # "record":Lcom/android/server/media/MediaSessionRecord;
    :cond_35
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public getTransportControlSessions(I)Ljava/util/ArrayList;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, mCachedTransportControlList:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 165
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, getPriorityListLocked(ZII)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, mCachedTransportControlList:Ljava/util/ArrayList;

    .line 168
    :cond_c
    iget-object v0, p0, mCachedTransportControlList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isGlobalPriorityActive()Z
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v0

    goto :goto_5
.end method

.method public onPlaystateChange(Lcom/android/server/media/MediaSessionRecord;II)Z
    .registers 6
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p2, p3}, shouldUpdatePriority(II)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 100
    iget-object v1, p0, mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 101
    iget-object v1, p0, mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 102
    invoke-direct {p0}, clearCache()V

    .line 105
    iput-object p1, p0, mLastInterestingRecord:Lcom/android/server/media/MediaSessionRecord;

    .line 106
    const/4 v0, 0x1

    .line 111
    :cond_17
    :goto_17
    return v0

    .line 107
    :cond_18
    invoke-static {p3}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 109
    const/4 v1, 0x0

    iput-object v1, p0, mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    goto :goto_17
.end method

.method public onSessionStateChange(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 6
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getFlags()J

    move-result-wide v0

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 122
    iput-object p1, p0, mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 126
    :cond_10
    invoke-direct {p0}, clearCache()V

    .line 127
    return-void
.end method

.method public removeSession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 83
    iget-object v0, p0, mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    if-ne p1, v0, :cond_c

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, mGlobalPrioritySession:Lcom/android/server/media/MediaSessionRecord;

    .line 87
    :cond_c
    invoke-direct {p0}, clearCache()V

    .line 88
    return-void
.end method
