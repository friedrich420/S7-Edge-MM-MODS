.class public Lcom/android/internal/midi/EventScheduler;
.super Ljava/lang/Object;
.source "EventScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/midi/EventScheduler$SchedulableEvent;,
        Lcom/android/internal/midi/EventScheduler$FastEventQueue;
    }
.end annotation


# static fields
.field private static final NANOS_PER_MILLI:J = 0xf4240L


# instance fields
.field private mClosed:Z

.field private volatile mEventBuffer:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/midi/EventScheduler$FastEventQueue;",
            ">;"
        }
    .end annotation
.end field

.field private mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

.field private final mLock:Ljava/lang/Object;

.field private mMaxPoolSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    .line 34
    const/16 v0, 0xc8

    iput v0, p0, mMaxPoolSize:I

    .line 38
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, mEventBuffer:Ljava/util/SortedMap;

    .line 39
    return-void
.end method

.method private removeNextEventLocked(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .registers 8
    .param p1, "lowestTime"    # J

    .prologue
    .line 172
    iget-object v2, p0, mEventBuffer:Ljava/util/SortedMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    .line 174
    .local v1, "list":Lcom/android/internal/midi/EventScheduler$FastEventQueue;
    invoke-virtual {v1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 175
    iget-object v2, p0, mEventBuffer:Ljava/util/SortedMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_1c
    invoke-virtual {v1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->remove()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v0

    .line 178
    .local v0, "event":Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    return-object v0
.end method


# virtual methods
.method public add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .registers 10
    .param p1, "event"    # Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .prologue
    .line 152
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 153
    :try_start_3
    iget-object v1, p0, mEventBuffer:Ljava/util/SortedMap;

    invoke-virtual {p1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    .line 154
    .local v0, "list":Lcom/android/internal/midi/EventScheduler$FastEventQueue;
    if-nez v0, :cond_50

    .line 155
    iget-object v1, p0, mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_43

    const-wide v2, 0x7fffffffffffffffL

    .line 157
    .local v2, "lowestTime":J
    :goto_22
    new-instance v0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    .end local v0    # "list":Lcom/android/internal/midi/EventScheduler$FastEventQueue;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;-><init>(Lcom/android/internal/midi/EventScheduler;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    .line 158
    .restart local v0    # "list":Lcom/android/internal/midi/EventScheduler$FastEventQueue;
    iget-object v1, p0, mEventBuffer:Ljava/util/SortedMap;

    invoke-virtual {p1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {p1}, Lcom/android/internal/midi/EventScheduler$SchedulableEvent;->getTimestamp()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-gez v1, :cond_41

    .line 162
    iget-object v1, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 167
    .end local v2    # "lowestTime":J
    :cond_41
    :goto_41
    monitor-exit v4

    .line 168
    return-void

    .line 155
    :cond_43
    iget-object v1, p0, mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_22

    .line 165
    :cond_50
    invoke-virtual {v0, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    goto :goto_41

    .line 167
    .end local v0    # "list":Lcom/android/internal/midi/EventScheduler$FastEventQueue;
    :catchall_54
    move-exception v1

    monitor-exit v4
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw v1
.end method

.method public addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    .prologue
    .line 136
    iget-object v0, p0, mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    if-nez v0, :cond_c

    .line 137
    new-instance v0, Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;-><init>(Lcom/android/internal/midi/EventScheduler;Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    iput-object v0, p0, mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    .line 143
    :cond_b
    :goto_b
    return-void

    .line 140
    :cond_c
    iget-object v0, p0, mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-virtual {v0}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->size()I

    move-result v0

    iget v1, p0, mMaxPoolSize:I

    if-ge v0, v1, :cond_b

    .line 141
    iget-object v0, p0, mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-virtual {v0, p1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->add(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    goto :goto_b
.end method

.method public close()V
    .registers 3

    .prologue
    .line 246
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 247
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, mClosed:Z

    .line 248
    iget-object v0, p0, mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 249
    monitor-exit v1

    .line 250
    return-void

    .line 249
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method protected flush()V
    .registers 2

    .prologue
    .line 242
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, mEventBuffer:Ljava/util/SortedMap;

    .line 243
    return-void
.end method

.method public getNextEvent(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .registers 8
    .param p1, "time"    # J

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "event":Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    iget-object v4, p0, mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 190
    :try_start_4
    iget-object v1, p0, mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    .line 191
    iget-object v1, p0, mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 193
    .local v2, "lowestTime":J
    cmp-long v1, v2, p1

    if-gtz v1, :cond_20

    .line 194
    invoke-direct {p0, v2, v3}, removeNextEventLocked(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v0

    .line 197
    .end local v2    # "lowestTime":J
    :cond_20
    monitor-exit v4

    .line 199
    return-object v0

    .line 197
    :catchall_22
    move-exception v1

    monitor-exit v4
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public removeEventfromPool()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .registers 4

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "event":Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    iget-object v1, p0, mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    if-eqz v1, :cond_14

    iget-object v1, p0, mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-virtual {v1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_14

    .line 125
    iget-object v1, p0, mEventPool:Lcom/android/internal/midi/EventScheduler$FastEventQueue;

    invoke-virtual {v1}, Lcom/android/internal/midi/EventScheduler$FastEventQueue;->remove()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v0

    .line 127
    :cond_14
    return-object v0
.end method

.method public waitNextEvent()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 211
    const/4 v2, 0x0

    .line 212
    .local v2, "event":Lcom/android/internal/midi/EventScheduler$SchedulableEvent;
    move-object/from16 v0, p0

    iget-object v12, v0, mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 213
    :goto_6
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, mClosed:Z

    if-nez v3, :cond_35

    .line 214
    const-wide/32 v6, 0x7fffffff

    .line 215
    .local v6, "millisToWait":J
    move-object/from16 v0, p0

    iget-object v3, v0, mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 216
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    .line 217
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-object v3, v0, mEventBuffer:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 219
    .local v4, "lowestTime":J
    cmp-long v3, v4, v10

    if-gtz v3, :cond_37

    .line 220
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, removeNextEventLocked(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v2

    .line 236
    .end local v4    # "lowestTime":J
    .end local v6    # "millisToWait":J
    .end local v10    # "now":J
    :cond_35
    monitor-exit v12

    .line 237
    return-object v2

    .line 224
    .restart local v4    # "lowestTime":J
    .restart local v6    # "millisToWait":J
    .restart local v10    # "now":J
    :cond_37
    sub-long v8, v4, v10

    .line 227
    .local v8, "nanosToWait":J
    const-wide/16 v14, 0x1

    const-wide/32 v16, 0xf4240

    div-long v16, v8, v16

    add-long v6, v14, v16

    .line 229
    const-wide/32 v14, 0x7fffffff

    cmp-long v3, v6, v14

    if-lez v3, :cond_4c

    .line 230
    const-wide/32 v6, 0x7fffffff

    .line 234
    .end local v4    # "lowestTime":J
    .end local v8    # "nanosToWait":J
    .end local v10    # "now":J
    :cond_4c
    move-object/from16 v0, p0

    iget-object v3, v0, mLock:Ljava/lang/Object;

    long-to-int v13, v6

    int-to-long v14, v13

    invoke-virtual {v3, v14, v15}, Ljava/lang/Object;->wait(J)V

    goto :goto_6

    .line 236
    .end local v6    # "millisToWait":J
    :catchall_56
    move-exception v3

    monitor-exit v12
    :try_end_58
    .catchall {:try_start_6 .. :try_end_58} :catchall_56

    throw v3
.end method
