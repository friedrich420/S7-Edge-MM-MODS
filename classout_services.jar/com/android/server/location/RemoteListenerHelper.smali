.class abstract Lcom/android/server/location/RemoteListenerHelper;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;,
        Lcom/android/server/location/RemoteListenerHelper$LinkedListener;,
        Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener::Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final RESULT_GPS_LOCATION_DISABLED:I = 0x3

.field protected static final RESULT_INTERNAL_ERROR:I = 0x4

.field protected static final RESULT_NOT_AVAILABLE:I = 0x1

.field protected static final RESULT_NOT_SUPPORTED:I = 0x2

.field protected static final RESULT_SUCCESS:I = 0x0

.field protected static final RESULT_UNKNOWN:I = 0x5


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mHasIsSupported:Z

.field private mIsRegistered:Z

.field private mIsSupported:Z

.field private mLastReportedResult:I

.field private final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/RemoteListenerHelper",
            "<TT",
            "Listener;",
            ">.",
            "LinkedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mListenerMap:Ljava/util/Map;

    .line 52
    const/4 v0, 0x5

    iput v0, p0, mLastReportedResult:I

    .line 55
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iput-object p1, p0, mHandler:Landroid/os/Handler;

    .line 57
    iput-object p2, p0, mTag:Ljava/lang/String;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/RemoteListenerHelper;

    .prologue
    .line 34
    iget-object v0, p0, mTag:Ljava/lang/String;

    return-object v0
.end method

.method private calculateCurrentResultUnsafe()I
    .registers 2

    .prologue
    .line 200
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    invoke-virtual {p0}, isAvailableInPlatform()Z

    move-result v0

    if-nez v0, :cond_8

    .line 201
    const/4 v0, 0x1

    .line 213
    :goto_7
    return v0

    .line 203
    :cond_8
    iget-boolean v0, p0, mHasIsSupported:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, mListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 205
    :cond_14
    const/4 v0, 0x5

    goto :goto_7

    .line 207
    :cond_16
    iget-boolean v0, p0, mIsSupported:Z

    if-nez v0, :cond_1c

    .line 208
    const/4 v0, 0x2

    goto :goto_7

    .line 210
    :cond_1c
    invoke-virtual {p0}, isGpsEnabled()Z

    move-result v0

    if-nez v0, :cond_24

    .line 211
    const/4 v0, 0x3

    goto :goto_7

    .line 213
    :cond_24
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iget-object v2, p0, mListenerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;

    .line 173
    .local v1, "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    invoke-virtual {v1}, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->getUnderlyingListener()Landroid/os/IInterface;

    move-result-object v2

    invoke-direct {p0, v2, p1}, post(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    goto :goto_a

    .line 175
    .end local v1    # "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    :cond_1e
    return-void
.end method

.method private post(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    .local p2, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    if-eqz p2, :cond_c

    .line 179
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;-><init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    :cond_c
    return-void
.end method

.method private tryRegister()Z
    .registers 2

    .prologue
    .line 184
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-boolean v0, p0, mIsRegistered:Z

    if-nez v0, :cond_a

    .line 185
    invoke-virtual {p0}, registerWithService()Z

    move-result v0

    iput-boolean v0, p0, mIsRegistered:Z

    .line 187
    :cond_a
    iget-boolean v0, p0, mIsRegistered:Z

    return v0
.end method

.method private tryUnregister()V
    .registers 2

    .prologue
    .line 191
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-boolean v0, p0, mIsRegistered:Z

    if-nez v0, :cond_5

    .line 196
    :goto_4
    return-void

    .line 194
    :cond_5
    invoke-virtual {p0}, unregisterFromService()V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsRegistered:Z

    goto :goto_4
.end method


# virtual methods
.method public addListener(Landroid/os/IInterface;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 61
    const-string v6, "Attempted to register a \'null\' listener."

    invoke-static {p1, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 63
    .local v0, "binder":Landroid/os/IBinder;
    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;-><init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;)V

    .line 64
    .local v1, "deathListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    iget-object v6, p0, mListenerMap:Ljava/util/Map;

    monitor-enter v6

    .line 65
    :try_start_13
    iget-object v7, p0, mListenerMap:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 67
    monitor-exit v6
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_36

    .line 100
    :goto_1c
    return v4

    .line 70
    :cond_1d
    const/4 v7, 0x0

    :try_start_1e
    invoke-interface {v0, v1, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_39
    .catchall {:try_start_1e .. :try_end_21} :catchall_36

    .line 77
    :try_start_21
    iget-object v5, p0, mListenerMap:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0}, isAvailableInPlatform()Z

    move-result v5

    if-nez v5, :cond_44

    .line 82
    const/4 v3, 0x1

    .line 98
    .local v3, "result":I
    :goto_2d
    invoke-virtual {p0, v3}, getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    move-result-object v5

    invoke-direct {p0, p1, v5}, post(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 99
    monitor-exit v6

    goto :goto_1c

    .end local v3    # "result":I
    :catchall_36
    move-exception v4

    monitor-exit v6
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_36

    throw v4

    .line 71
    :catch_39
    move-exception v2

    .line 74
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3a
    iget-object v4, p0, mTag:Ljava/lang/String;

    const-string v7, "Remote listener already died."

    invoke-static {v4, v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    monitor-exit v6

    move v4, v5

    goto :goto_1c

    .line 83
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_44
    iget-boolean v5, p0, mHasIsSupported:Z

    if-eqz v5, :cond_4e

    iget-boolean v5, p0, mIsSupported:Z

    if-nez v5, :cond_4e

    .line 84
    const/4 v3, 0x2

    .restart local v3    # "result":I
    goto :goto_2d

    .line 85
    .end local v3    # "result":I
    :cond_4e
    invoke-virtual {p0}, isGpsEnabled()Z

    move-result v5

    if-nez v5, :cond_56

    .line 86
    const/4 v3, 0x3

    .restart local v3    # "result":I
    goto :goto_2d

    .line 87
    .end local v3    # "result":I
    :cond_56
    invoke-direct {p0}, tryRegister()Z

    move-result v5

    if-nez v5, :cond_5e

    .line 90
    const/4 v3, 0x4

    .restart local v3    # "result":I
    goto :goto_2d

    .line 91
    .end local v3    # "result":I
    :cond_5e
    iget-boolean v5, p0, mHasIsSupported:Z

    if-eqz v5, :cond_68

    iget-boolean v5, p0, mIsSupported:Z

    if-eqz v5, :cond_68

    .line 92
    const/4 v3, 0x0

    .restart local v3    # "result":I
    goto :goto_2d

    .line 96
    .end local v3    # "result":I
    :cond_68
    monitor-exit v6
    :try_end_69
    .catchall {:try_start_3a .. :try_end_69} :catchall_36

    goto :goto_1c
.end method

.method protected foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iget-object v1, p0, mListenerMap:Ljava/util/Map;

    monitor-enter v1

    .line 130
    :try_start_3
    invoke-direct {p0, p1}, foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 131
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method protected abstract getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract isAvailableInPlatform()Z
.end method

.method protected abstract isGpsEnabled()Z
.end method

.method protected abstract registerWithService()Z
.end method

.method public removeListener(Landroid/os/IInterface;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    const-string v2, "Attempted to remove a \'null\' listener."

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 107
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, mListenerMap:Ljava/util/Map;

    monitor-enter v3

    .line 108
    :try_start_c
    iget-object v2, p0, mListenerMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;

    .line 109
    .local v1, "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    iget-object v2, p0, mListenerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 110
    invoke-direct {p0}, tryUnregister()V

    .line 112
    :cond_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_27

    .line 113
    if-eqz v1, :cond_26

    .line 114
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 116
    :cond_26
    return-void

    .line 112
    .end local v1    # "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    :catchall_27
    move-exception v2

    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v2
.end method

.method protected setSupported(Z)V
    .registers 4
    .param p1, "value"    # Z

    .prologue
    .line 135
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-object v1, p0, mListenerMap:Ljava/util/Map;

    monitor-enter v1

    .line 136
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, mHasIsSupported:Z

    .line 137
    iput-boolean p1, p0, mIsSupported:Z

    .line 138
    monitor-exit v1

    .line 139
    return-void

    .line 138
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_a

    throw v0
.end method

.method protected tryUpdateRegistrationWithService()Z
    .registers 5

    .prologue
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    const/4 v1, 0x1

    .line 142
    iget-object v2, p0, mListenerMap:Ljava/util/Map;

    monitor-enter v2

    .line 143
    :try_start_4
    invoke-virtual {p0}, isGpsEnabled()Z

    move-result v3

    if-nez v3, :cond_f

    .line 144
    invoke-direct {p0}, tryUnregister()V

    .line 145
    monitor-exit v2

    .line 156
    :goto_e
    return v1

    .line 147
    :cond_f
    iget-object v3, p0, mListenerMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 148
    monitor-exit v2

    goto :goto_e

    .line 157
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_19

    throw v1

    .line 150
    :cond_1c
    :try_start_1c
    invoke-direct {p0}, tryRegister()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 152
    monitor-exit v2

    goto :goto_e

    .line 154
    :cond_24
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    move-result-object v0

    .line 155
    .local v0, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    invoke-direct {p0, v0}, foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 156
    const/4 v1, 0x0

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_1c .. :try_end_2e} :catchall_19

    goto :goto_e
.end method

.method protected abstract unregisterFromService()V
.end method

.method protected updateResult()V
    .registers 4

    .prologue
    .line 161
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-object v2, p0, mListenerMap:Ljava/util/Map;

    monitor-enter v2

    .line 162
    :try_start_3
    invoke-direct {p0}, calculateCurrentResultUnsafe()I

    move-result v0

    .line 163
    .local v0, "newResult":I
    iget v1, p0, mLastReportedResult:I

    if-ne v1, v0, :cond_d

    .line 164
    monitor-exit v2

    .line 169
    :goto_c
    return-void

    .line 166
    :cond_d
    invoke-virtual {p0, v0}, getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    move-result-object v1

    invoke-direct {p0, v1}, foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 167
    iput v0, p0, mLastReportedResult:I

    .line 168
    monitor-exit v2

    goto :goto_c

    .end local v0    # "newResult":I
    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method
