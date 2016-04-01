.class public Lcom/android/internal/util/CallbackRegistry;
.super Ljava/lang/Object;
.source "CallbackRegistry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/CallbackRegistry$NotifierCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallbackRegistry"


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TC;>;"
        }
    .end annotation
.end field

.field private mFirst64Removed:J

.field private mNotificationLevel:I

.field private final mNotifier:Lcom/android/internal/util/CallbackRegistry$NotifierCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/CallbackRegistry$NotifierCallback",
            "<TC;TT;TA;>;"
        }
    .end annotation
.end field

.field private mRemainderRemoved:[J


# direct methods
.method public constructor <init>(Lcom/android/internal/util/CallbackRegistry$NotifierCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/CallbackRegistry$NotifierCallback",
            "<TC;TT;TA;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "notifier":Lcom/android/internal/util/CallbackRegistry$NotifierCallback;, "Lcom/android/internal/util/CallbackRegistry$NotifierCallback<TC;TT;TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mCallbacks:Ljava/util/List;

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mFirst64Removed:J

    .line 78
    iput-object p1, p0, mNotifier:Lcom/android/internal/util/CallbackRegistry$NotifierCallback;

    .line 79
    return-void
.end method

.method private isRemovedLocked(I)Z
    .registers 14
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 229
    const/16 v7, 0x40

    if-ge p1, v7, :cond_16

    .line 231
    shl-long v0, v8, p1

    .line 232
    .local v0, "bitMask":J
    iget-wide v8, p0, mFirst64Removed:J

    and-long/2addr v8, v0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_14

    .line 245
    .end local v0    # "bitMask":J
    :cond_13
    :goto_13
    return v5

    .restart local v0    # "bitMask":J
    :cond_14
    move v5, v6

    .line 232
    goto :goto_13

    .line 233
    .end local v0    # "bitMask":J
    :cond_16
    iget-object v7, p0, mRemainderRemoved:[J

    if-nez v7, :cond_1c

    move v5, v6

    .line 235
    goto :goto_13

    .line 237
    :cond_1c
    div-int/lit8 v7, p1, 0x40

    add-int/lit8 v4, v7, -0x1

    .line 238
    .local v4, "maskIndex":I
    iget-object v7, p0, mRemainderRemoved:[J

    array-length v7, v7

    if-lt v4, v7, :cond_27

    move v5, v6

    .line 240
    goto :goto_13

    .line 243
    :cond_27
    iget-object v7, p0, mRemainderRemoved:[J

    aget-wide v2, v7, v4

    .line 244
    .local v2, "bits":J
    rem-int/lit8 v7, p1, 0x40

    shl-long v0, v8, v7

    .line 245
    .restart local v0    # "bitMask":J
    and-long v8, v2, v0

    cmp-long v7, v8, v10

    if-nez v7, :cond_13

    move v5, v6

    goto :goto_13
.end method

.method private notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V
    .registers 16
    .param p2, "arg"    # I
    .param p4, "startIndex"    # I
    .param p5, "endIndex"    # I
    .param p6, "bits"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;IIJ)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    const-wide/16 v0, 0x1

    .line 202
    .local v0, "bitMask":J
    move v2, p4

    .local v2, "i":I
    :goto_3
    if-ge v2, p5, :cond_1d

    .line 203
    and-long v4, p6, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_18

    .line 204
    iget-object v3, p0, mNotifier:Lcom/android/internal/util/CallbackRegistry$NotifierCallback;

    iget-object v4, p0, mCallbacks:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, p1, p2, p3}, Lcom/android/internal/util/CallbackRegistry$NotifierCallback;->onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 206
    :cond_18
    const/4 v3, 0x1

    shl-long/2addr v0, v3

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 208
    :cond_1d
    return-void
.end method

.method private notifyFirst64Locked(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 12
    .param p2, "arg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    const/16 v0, 0x40

    iget-object v1, p0, mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 124
    .local v5, "maxNotified":I
    const/4 v4, 0x0

    iget-wide v6, p0, mFirst64Removed:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    .line 125
    return-void
.end method

.method private notifyRecurseLocked(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 13
    .param p2, "arg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    iget-object v0, p0, mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 144
    .local v5, "callbackCount":I
    iget-object v0, p0, mRemainderRemoved:[J

    if-nez v0, :cond_1c

    const/4 v8, -0x1

    .line 148
    .local v8, "remainderIndex":I
    :goto_b
    invoke-direct {p0, p1, p2, p3, v8}, notifyRemainderLocked(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 152
    add-int/lit8 v0, v8, 0x2

    mul-int/lit8 v4, v0, 0x40

    .line 155
    .local v4, "startCallbackIndex":I
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    .line 156
    return-void

    .line 144
    .end local v4    # "startCallbackIndex":I
    .end local v8    # "remainderIndex":I
    :cond_1c
    iget-object v0, p0, mRemainderRemoved:[J

    array-length v0, v0

    add-int/lit8 v8, v0, -0x1

    goto :goto_b
.end method

.method private notifyRemainderLocked(Ljava/lang/Object;ILjava/lang/Object;I)V
    .registers 13
    .param p2, "arg"    # I
    .param p4, "remainderIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;I)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    if-gez p4, :cond_6

    .line 172
    invoke-direct {p0, p1, p2, p3}, notifyFirst64Locked(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 180
    :goto_5
    return-void

    .line 174
    :cond_6
    iget-object v0, p0, mRemainderRemoved:[J

    aget-wide v6, v0, p4

    .line 175
    .local v6, "bits":J
    add-int/lit8 v0, p4, 0x1

    mul-int/lit8 v4, v0, 0x40

    .line 176
    .local v4, "startIndex":I
    iget-object v0, p0, mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v4, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 177
    .local v5, "endIndex":I
    add-int/lit8 v0, p4, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, notifyRemainderLocked(Ljava/lang/Object;ILjava/lang/Object;I)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 178
    invoke-direct/range {v0 .. v7}, notifyCallbacksLocked(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    goto :goto_5
.end method

.method private removeRemovedCallbacks(IJ)V
    .registers 12
    .param p1, "startIndex"    # I
    .param p2, "removed"    # J

    .prologue
    .line 259
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    add-int/lit8 v2, p1, 0x40

    .line 261
    .local v2, "endIndex":I
    const-wide/high16 v0, -0x8000000000000000L

    .line 262
    .local v0, "bitMask":J
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_6
    if-lt v3, p1, :cond_1a

    .line 263
    and-long v4, p2, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_15

    .line 264
    iget-object v4, p0, mCallbacks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 266
    :cond_15
    const/4 v4, 0x1

    ushr-long/2addr v0, v4

    .line 262
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 268
    :cond_1a
    return-void
.end method

.method private setRemovalBitLocked(I)V
    .registers 12
    .param p1, "index"    # I

    .prologue
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    const-wide/16 v8, 0x1

    const/4 v6, 0x0

    .line 286
    const/16 v4, 0x40

    if-ge p1, v4, :cond_f

    .line 288
    shl-long v0, v8, p1

    .line 289
    .local v0, "bitMask":J
    iget-wide v4, p0, mFirst64Removed:J

    or-long/2addr v4, v0

    iput-wide v4, p0, mFirst64Removed:J

    .line 303
    :goto_e
    return-void

    .line 291
    .end local v0    # "bitMask":J
    :cond_f
    div-int/lit8 v4, p1, 0x40

    add-int/lit8 v3, v4, -0x1

    .line 292
    .local v3, "remainderIndex":I
    iget-object v4, p0, mRemainderRemoved:[J

    if-nez v4, :cond_2f

    .line 293
    iget-object v4, p0, mCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x40

    new-array v4, v4, [J

    iput-object v4, p0, mRemainderRemoved:[J

    .line 300
    :cond_23
    :goto_23
    rem-int/lit8 v4, p1, 0x40

    shl-long v0, v8, v4

    .line 301
    .restart local v0    # "bitMask":J
    iget-object v4, p0, mRemainderRemoved:[J

    aget-wide v6, v4, v3

    or-long/2addr v6, v0

    aput-wide v6, v4, v3

    goto :goto_e

    .line 294
    .end local v0    # "bitMask":J
    :cond_2f
    iget-object v4, p0, mRemainderRemoved:[J

    array-length v4, v4

    if-ge v4, v3, :cond_23

    .line 296
    iget-object v4, p0, mCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/lit8 v4, v4, 0x40

    new-array v2, v4, [J

    .line 297
    .local v2, "newRemainders":[J
    iget-object v4, p0, mRemainderRemoved:[J

    iget-object v5, p0, mRemainderRemoved:[J

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 298
    iput-object v2, p0, mRemainderRemoved:[J

    goto :goto_23
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "callback":Ljava/lang/Object;, "TC;"
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 217
    .local v0, "index":I
    if-ltz v0, :cond_f

    invoke-direct {p0, v0}, isRemovedLocked(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 218
    :cond_f
    iget-object v1, p0, mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 220
    :cond_14
    monitor-exit p0

    return-void

    .line 216
    .end local v0    # "index":I
    :catchall_16
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clear()V
    .registers 3

    .prologue
    .line 346
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    monitor-enter p0

    :try_start_1
    iget v1, p0, mNotificationLevel:I

    if-nez v1, :cond_c

    .line 347
    iget-object v1, p0, mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_24

    .line 353
    :cond_a
    monitor-exit p0

    return-void

    .line 348
    :cond_c
    :try_start_c
    iget-object v1, p0, mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 349
    iget-object v1, p0, mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1c
    if-ltz v0, :cond_a

    .line 350
    invoke-direct {p0, v0}, setRemovalBitLocked(I)V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_24

    .line 349
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    .line 346
    .end local v0    # "i":I
    :catchall_24
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clone()Lcom/android/internal/util/CallbackRegistry;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/internal/util/CallbackRegistry",
            "<TC;TT;TA;>;"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    monitor-enter p0

    const/4 v2, 0x0

    .line 358
    .local v2, "clone":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/internal/util/CallbackRegistry;

    move-object v2, v0

    .line 359
    const-wide/16 v6, 0x0

    iput-wide v6, v2, mFirst64Removed:J

    .line 360
    const/4 v6, 0x0

    iput-object v6, v2, mRemainderRemoved:[J

    .line 361
    const/4 v6, 0x0

    iput v6, v2, mNotificationLevel:I

    .line 362
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v2, mCallbacks:Ljava/util/List;

    .line 363
    iget-object v6, p0, mCallbacks:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 364
    .local v5, "numListeners":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_22
    if-ge v4, v5, :cond_3c

    .line 365
    invoke-direct {p0, v4}, isRemovedLocked(I)Z

    move-result v6

    if-nez v6, :cond_35

    .line 366
    iget-object v6, v2, mCallbacks:Ljava/util/List;

    iget-object v7, p0, mCallbacks:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_35
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_35} :catch_38
    .catchall {:try_start_2 .. :try_end_35} :catchall_3e

    .line 364
    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 369
    .end local v4    # "i":I
    .end local v5    # "numListeners":I
    :catch_38
    move-exception v3

    .line 370
    .local v3, "e":Ljava/lang/CloneNotSupportedException;
    :try_start_39
    invoke-virtual {v3}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3e

    .line 372
    .end local v3    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_3c
    monitor-exit p0

    return-object v2

    .line 356
    :catchall_3e
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    invoke-virtual {p0}, clone()Lcom/android/internal/util/CallbackRegistry;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized copyListeners()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, mCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 312
    .local v0, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TC;>;"
    iget-object v3, p0, mCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 313
    .local v2, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v2, :cond_27

    .line 314
    invoke-direct {p0, v1}, isRemovedLocked(I)Z

    move-result v3

    if-nez v3, :cond_24

    .line 315
    iget-object v3, p0, mCallbacks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_29

    .line 313
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 318
    :cond_27
    monitor-exit p0

    return-object v0

    .line 311
    .end local v0    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TC;>;"
    .end local v1    # "i":I
    .end local v2    # "numListeners":I
    :catchall_29
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized isEmpty()Z
    .registers 6

    .prologue
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 327
    monitor-enter p0

    :try_start_3
    iget-object v4, p0, mCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_27

    move-result v4

    if-eqz v4, :cond_d

    .line 338
    :cond_b
    :goto_b
    monitor-exit p0

    return v2

    .line 329
    :cond_d
    :try_start_d
    iget v4, p0, mNotificationLevel:I

    if-nez v4, :cond_13

    move v2, v3

    .line 330
    goto :goto_b

    .line 332
    :cond_13
    iget-object v4, p0, mCallbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 333
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    if-ge v0, v1, :cond_b

    .line 334
    invoke-direct {p0, v0}, isRemovedLocked(I)Z
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_27

    move-result v4

    if-nez v4, :cond_24

    move v2, v3

    .line 335
    goto :goto_b

    .line 333
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 327
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    :catchall_27
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 12
    .param p2, "arg"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "sender":Ljava/lang/Object;, "TT;"
    .local p3, "arg2":Ljava/lang/Object;, "TA;"
    const-wide/16 v6, 0x0

    .line 92
    monitor-enter p0

    :try_start_3
    iget v1, p0, mNotificationLevel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mNotificationLevel:I

    .line 93
    invoke-direct {p0, p1, p2, p3}, notifyRecurseLocked(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 94
    iget v1, p0, mNotificationLevel:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, mNotificationLevel:I

    .line 95
    iget v1, p0, mNotificationLevel:I

    if-nez v1, :cond_49

    .line 96
    iget-object v1, p0, mRemainderRemoved:[J

    if-eqz v1, :cond_39

    .line 97
    iget-object v1, p0, mRemainderRemoved:[J

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_1f
    if-ltz v0, :cond_39

    .line 98
    iget-object v1, p0, mRemainderRemoved:[J

    aget-wide v2, v1, v0

    .line 99
    .local v2, "removedBits":J
    cmp-long v1, v2, v6

    if-eqz v1, :cond_36

    .line 100
    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v1, v1, 0x40

    invoke-direct {p0, v1, v2, v3}, removeRemovedCallbacks(IJ)V

    .line 101
    iget-object v1, p0, mRemainderRemoved:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v0

    .line 97
    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_1f

    .line 105
    .end local v0    # "i":I
    .end local v2    # "removedBits":J
    :cond_39
    iget-wide v4, p0, mFirst64Removed:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_49

    .line 106
    const/4 v1, 0x0

    iget-wide v4, p0, mFirst64Removed:J

    invoke-direct {p0, v1, v4, v5}, removeRemovedCallbacks(IJ)V

    .line 107
    const-wide/16 v4, 0x0

    iput-wide v4, p0, mFirst64Removed:J
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_4b

    .line 110
    :cond_49
    monitor-exit p0

    return-void

    .line 92
    :catchall_4b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "this":Lcom/android/internal/util/CallbackRegistry;, "Lcom/android/internal/util/CallbackRegistry<TC;TT;TA;>;"
    .local p1, "callback":Ljava/lang/Object;, "TC;"
    monitor-enter p0

    :try_start_1
    iget v1, p0, mNotificationLevel:I

    if-nez v1, :cond_c

    .line 276
    iget-object v1, p0, mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_18

    .line 283
    :cond_a
    :goto_a
    monitor-exit p0

    return-void

    .line 278
    :cond_c
    :try_start_c
    iget-object v1, p0, mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 279
    .local v0, "index":I
    if-ltz v0, :cond_a

    .line 280
    invoke-direct {p0, v0}, setRemovalBitLocked(I)V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_18

    goto :goto_a

    .line 275
    .end local v0    # "index":I
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method
