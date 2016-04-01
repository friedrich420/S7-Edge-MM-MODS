.class public abstract Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;
.super Ljava/lang/Object;
.source "AbsCocktailBarStatePolicy.java"

# interfaces
.implements Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCocktailBarStateHandler:Landroid/os/Handler;

.field private mCocktailBarStateThread:Landroid/os/HandlerThread;

.field protected mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

.field private final mLockMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field protected final mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

.field protected mWindowType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    iput-object v0, p0, mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 29
    const/4 v0, 0x1

    iput v0, p0, mWindowType:I

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mLockMap:Landroid/util/SparseArray;

    .line 34
    iput-object p2, p0, mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    .line 35
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 17
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method private findModeLock(I)Landroid/util/SparseBooleanArray;
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 171
    iget-object v1, p0, mLockMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 172
    .local v0, "modeLock":Landroid/util/SparseBooleanArray;
    if-nez v0, :cond_14

    .line 173
    new-instance v0, Landroid/util/SparseBooleanArray;

    .end local v0    # "modeLock":Landroid/util/SparseBooleanArray;
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 174
    .restart local v0    # "modeLock":Landroid/util/SparseBooleanArray;
    iget-object v1, p0, mLockMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    :cond_14
    return-object v0
.end method


# virtual methods
.method protected cancelHideTimer()V
    .registers 4

    .prologue
    .line 227
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 228
    :try_start_3
    iget-object v0, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    monitor-exit v1

    .line 230
    return-void

    .line 229
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method protected clearMessageChangeVisibility()V
    .registers 4

    .prologue
    .line 213
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 214
    :try_start_3
    iget-object v0, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    monitor-exit v1

    .line 217
    return-void

    .line 216
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method protected clearMessageUpdateStateFromSystemDelayed()V
    .registers 4

    .prologue
    .line 189
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 190
    :try_start_3
    iget-object v0, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    monitor-exit v1

    .line 193
    return-void

    .line 192
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public dump()Ljava/lang/String;
    .registers 4

    .prologue
    .line 160
    const-string v0, ""

    .line 161
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[LockState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mLockMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Visibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CocktailBarWindowType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WindowType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mWindowType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    return-object v0
.end method

.method public getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    return-object v0
.end method

.method public getLockState()I
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    return v0
.end method

.method public getWindowType()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, mWindowType:I

    return v0
.end method

.method public abstract handleChangeVisibility(I)V
.end method

.method public abstract handleNotifyCurrentStateToBinder(Landroid/os/IBinder;)V
.end method

.method public abstract handleNotifyState(I)V
.end method

.method public abstract handleRefreshState()V
.end method

.method public abstract handleUpdateActivate(Z)V
.end method

.method public abstract handleUpdateCocktailBarWindowType(ILjava/lang/String;)V
.end method

.method public abstract handleUpdatePosition(I)V
.end method

.method public abstract handleUpdateState(ZZ)V
.end method

.method public abstract handleUpdateStateFromSystem(IZ)V
.end method

.method public abstract handleUpdateVisibility(I)V
.end method

.method protected hasMessageUpdateStateFromSystemDelayed()Z
    .registers 4

    .prologue
    .line 196
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 197
    :try_start_3
    iget-object v0, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 199
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public initialize()V
    .registers 3

    .prologue
    .line 39
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CocktailBarVisibility"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mCocktailBarStateThread:Landroid/os/HandlerThread;

    .line 40
    iget-object v0, p0, mCocktailBarStateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 41
    new-instance v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;

    iget-object v1, p0, mCocktailBarStateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;-><init>(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;Landroid/os/Looper;)V

    iput-object v0, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    .line 42
    iget-object v0, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$1;-><init>(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void
.end method

.method public notifyStateToBinder(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 97
    iget-object v2, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 98
    :try_start_3
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v3, 0x33

    invoke-static {v1, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 100
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    monitor-exit v2

    .line 102
    return-void

    .line 101
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method protected refreshHideTimer(I)Z
    .registers 4
    .param p1, "duration"    # I

    .prologue
    .line 233
    iget-object v0, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 234
    invoke-virtual {p0}, cancelHideTimer()V

    .line 235
    invoke-virtual {p0, p1}, startHideTimer(I)V

    .line 236
    const/4 v0, 0x1

    .line 238
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public refreshState()V
    .registers 4

    .prologue
    .line 89
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 90
    :try_start_3
    iget-object v0, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method protected sendMessageChangeVisibility(IJ)V
    .registers 10
    .param p1, "visibility"    # I
    .param p2, "delayMills"    # J

    .prologue
    .line 203
    iget-object v2, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 204
    :try_start_3
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 206
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-static {v1, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 208
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 209
    monitor-exit v2

    .line 210
    return-void

    .line 209
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method protected sendMessageUpdateStateFromSystemDelayed(IJ)V
    .registers 10
    .param p1, "windowType"    # I
    .param p2, "delayMills"    # J

    .prologue
    .line 180
    iget-object v2, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 181
    :try_start_3
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v1, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 184
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 185
    monitor-exit v2

    .line 186
    return-void

    .line 185
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public setLockState(IZ)V
    .registers 3
    .param p1, "state"    # I
    .param p2, "flagOn"    # Z

    .prologue
    .line 116
    invoke-virtual {p0, p1, p2, p1}, setLockState(IZI)V

    .line 117
    return-void
.end method

.method public setLockState(IZI)V
    .registers 8
    .param p1, "state"    # I
    .param p2, "flagOn"    # Z
    .param p3, "id"    # I

    .prologue
    .line 121
    invoke-direct {p0, p1}, findModeLock(I)Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 122
    .local v0, "modeLock":Landroid/util/SparseBooleanArray;
    if-eqz p2, :cond_12

    .line 123
    iget-object v1, p0, mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    or-int/2addr v2, p1

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    .line 124
    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 133
    :cond_11
    :goto_11
    return-void

    .line 126
    :cond_12
    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1c

    .line 127
    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 129
    :cond_1c
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-nez v1, :cond_11

    .line 130
    iget-object v1, p0, mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    xor-int/lit8 v3, p1, -0x1

    and-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    goto :goto_11
.end method

.method protected startHideTimer(I)V
    .registers 8
    .param p1, "duration"    # I

    .prologue
    .line 220
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 221
    :try_start_3
    iget-object v0, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    int-to-long v4, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 223
    monitor-exit v1

    .line 224
    return-void

    .line 223
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public updateActivate(Z)V
    .registers 8
    .param p1, "activate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v2, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 143
    :try_start_4
    iget-object v3, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 v4, 0x31

    if-eqz p1, :cond_b

    const/4 v1, 0x1

    :cond_b
    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 145
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    monitor-exit v2

    .line 147
    return-void

    .line 146
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_17
    move-exception v1

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public updateCocktailBarWindowType(ILjava/lang/String;)V
    .registers 8
    .param p1, "windowType"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 151
    iget-object v2, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 152
    :try_start_3
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-static {v1, v3, p1, v4, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 154
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    monitor-exit v2

    .line 156
    return-void

    .line 155
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public updatePosition(I)V
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 71
    iget-object v2, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 72
    :try_start_3
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {v1, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 74
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    monitor-exit v2

    .line 76
    return-void

    .line 75
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public updateState(ZZ)V
    .registers 10
    .param p1, "shift"    # Z
    .param p2, "dimBackground"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    iget-object v4, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v4

    .line 81
    :try_start_5
    iget-object v5, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    if-eqz p1, :cond_18

    move v3, v1

    :goto_b
    if-eqz p2, :cond_1a

    :goto_d
    invoke-static {v5, v6, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 83
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 84
    monitor-exit v4

    .line 85
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_18
    move v3, v2

    .line 81
    goto :goto_b

    :cond_1a
    move v1, v2

    goto :goto_d

    .line 84
    :catchall_1c
    move-exception v1

    monitor-exit v4
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public updateStateFromSystem(I)V
    .registers 7
    .param p1, "windowType"    # I

    .prologue
    .line 62
    iget-object v2, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 63
    :try_start_3
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 65
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 66
    monitor-exit v2

    .line 67
    return-void

    .line 66
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public updateVisibility(I)V
    .registers 7
    .param p1, "visibility"    # I

    .prologue
    .line 53
    iget-object v2, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 54
    :try_start_3
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 56
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mCocktailBarStateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 57
    monitor-exit v2

    .line 58
    return-void

    .line 57
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
