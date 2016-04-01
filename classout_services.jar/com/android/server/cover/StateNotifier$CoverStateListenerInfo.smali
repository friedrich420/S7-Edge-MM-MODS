.class Lcom/android/server/cover/StateNotifier$CoverStateListenerInfo;
.super Ljava/lang/Object;
.source "StateNotifier.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/StateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoverStateListenerInfo"
.end annotation


# instance fields
.field final component:Landroid/content/ComponentName;

.field final pid:I

.field final synthetic this$0:Lcom/android/server/cover/StateNotifier;

.field final token:Landroid/os/IBinder;

.field final type:I

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/cover/StateNotifier;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .registers 7
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "type"    # I

    .prologue
    .line 142
    iput-object p1, p0, this$0:Lcom/android/server/cover/StateNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p2, p0, token:Landroid/os/IBinder;

    .line 144
    iput-object p3, p0, component:Landroid/content/ComponentName;

    .line 145
    iput p4, p0, pid:I

    .line 146
    iput p5, p0, uid:I

    .line 147
    iput p6, p0, type:I

    .line 148
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    .line 152
    const-string v0, "CoverManager.StateNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, this$0:Lcom/android/server/cover/StateNotifier;

    # getter for: Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cover/StateNotifier;->access$300(Lcom/android/server/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 154
    :try_start_21
    iget-object v0, p0, this$0:Lcom/android/server/cover/StateNotifier;

    # getter for: Lcom/android/server/cover/StateNotifier;->mListeners:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/cover/StateNotifier;->access$300(Lcom/android/server/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 155
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_32

    .line 156
    iget-object v0, p0, token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 157
    return-void

    .line 155
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0
.end method

.method public onCoverAppCovered(Z)V
    .registers 6
    .param p1, "covered"    # Z

    .prologue
    .line 214
    iget-object v2, p0, token:Landroid/os/IBinder;

    if-nez v2, :cond_d

    .line 215
    const-string v2, "CoverManager.StateNotifier"

    const-string/jumbo v3, "null listener received CoverState!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_c
    :goto_c
    return-void

    .line 218
    :cond_d
    iget v2, p0, type:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_c

    .line 220
    :try_start_13
    iget-object v2, p0, token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/ICoverWindowStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverWindowStateListenerCallback;

    move-result-object v0

    .line 222
    .local v0, "callback":Lcom/samsung/android/cover/ICoverWindowStateListenerCallback;
    if-eqz v0, :cond_c

    .line 223
    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverWindowStateListenerCallback;->onCoverAppCovered(Z)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1e} :catch_1f

    goto :goto_c

    .line 225
    .end local v0    # "callback":Lcom/samsung/android/cover/ICoverWindowStateListenerCallback;
    :catch_1f
    move-exception v1

    .line 226
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.StateNotifier"

    const-string v3, "Failed onCoverAppCovered callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public onCoverAttachStateChanged(Z)V
    .registers 6
    .param p1, "attached"    # Z

    .prologue
    .line 196
    iget-object v2, p0, token:Landroid/os/IBinder;

    if-nez v2, :cond_d

    .line 197
    const-string v2, "CoverManager.StateNotifier"

    const-string/jumbo v3, "null listener received CoverState!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_c
    :goto_c
    return-void

    .line 200
    :cond_d
    iget v2, p0, type:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_c

    .line 202
    :try_start_13
    iget-object v2, p0, token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverStateListenerCallback;

    move-result-object v0

    .line 204
    .local v0, "callback":Lcom/samsung/android/cover/ICoverStateListenerCallback;
    if-eqz v0, :cond_c

    .line 205
    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverStateListenerCallback;->onCoverAttachStateChanged(Z)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1e} :catch_1f

    goto :goto_c

    .line 207
    .end local v0    # "callback":Lcom/samsung/android/cover/ICoverStateListenerCallback;
    :catch_1f
    move-exception v1

    .line 208
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.StateNotifier"

    const-string v3, "Failed onCoverAttachStateChanged callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public onCoverSwitchStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 6
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 160
    iget-object v2, p0, token:Landroid/os/IBinder;

    if-nez v2, :cond_d

    .line 161
    const-string v2, "CoverManager.StateNotifier"

    const-string/jumbo v3, "null listener received CoverState!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_c
    :goto_c
    return-void

    .line 164
    :cond_d
    iget v2, p0, type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 166
    :try_start_12
    iget-object v2, p0, token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/ICoverManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManagerCallback;

    move-result-object v0

    .line 168
    .local v0, "callback":Lcom/samsung/android/cover/ICoverManagerCallback;
    if-eqz v0, :cond_c

    .line 169
    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverManagerCallback;->coverCallback(Lcom/samsung/android/cover/CoverState;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1d} :catch_1e

    goto :goto_c

    .line 171
    .end local v0    # "callback":Lcom/samsung/android/cover/ICoverManagerCallback;
    :catch_1e
    move-exception v1

    .line 172
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.StateNotifier"

    const-string v3, "Failed onCoverStateChanged coverCallback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public onCoverSwitchStateChanged(Z)V
    .registers 6
    .param p1, "switchState"    # Z

    .prologue
    .line 178
    iget-object v2, p0, token:Landroid/os/IBinder;

    if-nez v2, :cond_d

    .line 179
    const-string v2, "CoverManager.StateNotifier"

    const-string/jumbo v3, "null listener received CoverState!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_c
    :goto_c
    return-void

    .line 182
    :cond_d
    iget v2, p0, type:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_c

    .line 184
    :try_start_13
    iget-object v2, p0, token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverStateListenerCallback;

    move-result-object v0

    .line 186
    .local v0, "callback":Lcom/samsung/android/cover/ICoverStateListenerCallback;
    if-eqz v0, :cond_c

    .line 187
    invoke-interface {v0, p1}, Lcom/samsung/android/cover/ICoverStateListenerCallback;->onCoverSwitchStateChanged(Z)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1e} :catch_1f

    goto :goto_c

    .line 189
    .end local v0    # "callback":Lcom/samsung/android/cover/ICoverStateListenerCallback;
    :catch_1f
    move-exception v1

    .line 190
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager.StateNotifier"

    const-string v3, "Failed onCoverSwitchStateChanged callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method
