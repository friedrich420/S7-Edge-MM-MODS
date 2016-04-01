.class final Lcom/android/server/midi/MidiService$Client;
.super Ljava/lang/Object;
.source "MidiService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/midi/MidiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Client"
.end annotation


# instance fields
.field private final mDeviceConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/midi/MidiService$DeviceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/midi/IMidiDeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPid:I

.field private final mToken:Landroid/os/IBinder;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService;Landroid/os/IBinder;)V
    .registers 4
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 135
    iput-object p1, p0, this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mListeners:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mDeviceConnections:Ljava/util/HashMap;

    .line 136
    iput-object p2, p0, mToken:Landroid/os/IBinder;

    .line 137
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, mUid:I

    .line 138
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, mPid:I

    .line 139
    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/midi/MidiService$Client;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/midi/MidiService$Client;

    .prologue
    .line 121
    iget v0, p0, mUid:I

    return v0
.end method

.method private close()V
    .registers 6

    .prologue
    .line 223
    iget-object v2, p0, this$0:Lcom/android/server/midi/MidiService;

    # getter for: Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/midi/MidiService;->access$200(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 224
    :try_start_7
    iget-object v2, p0, this$0:Lcom/android/server/midi/MidiService;

    # getter for: Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/midi/MidiService;->access$200(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v4, p0, mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v2, p0, mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 226
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_37

    .line 228
    iget-object v2, p0, mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 229
    .local v0, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$DeviceConnection;->getDevice()Lcom/android/server/midi/MidiService$Device;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/midi/MidiService$Device;->removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V

    goto :goto_23

    .line 226
    .end local v0    # "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_37
    move-exception v2

    :try_start_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw v2

    .line 231
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3a
    return-void
.end method


# virtual methods
.method public addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .registers 6
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;
    .param p2, "callback"    # Landroid/media/midi/IMidiDeviceOpenCallback;

    .prologue
    .line 157
    new-instance v0, Lcom/android/server/midi/MidiService$DeviceConnection;

    iget-object v1, p0, this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {v0, v1, p1, p0, p2}, Lcom/android/server/midi/MidiService$DeviceConnection;-><init>(Lcom/android/server/midi/MidiService;Lcom/android/server/midi/MidiService$Device;Lcom/android/server/midi/MidiService$Client;Landroid/media/midi/IMidiDeviceOpenCallback;)V

    .line 158
    .local v0, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    iget-object v1, p0, mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$DeviceConnection;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p1, v0}, Lcom/android/server/midi/MidiService$Device;->addDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V

    .line 160
    return-void
.end method

.method public addListener(Landroid/media/midi/IMidiDeviceListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/midi/IMidiDeviceListener;

    .prologue
    .line 146
    iget-object v0, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public binderDied()V
    .registers 4

    .prologue
    .line 235
    const-string v0, "MidiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-direct {p0}, close()V

    .line 237
    return-void
.end method

.method public deviceAdded(Lcom/android/server/midi/MidiService$Device;)V
    .registers 8
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;

    .prologue
    .line 183
    iget v4, p0, mUid:I

    invoke-virtual {p1, v4}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 193
    :cond_8
    :goto_8
    return-void

    .line 185
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    .line 187
    .local v0, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    :try_start_d
    iget-object v4, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/midi/IMidiDeviceListener;

    .line 188
    .local v3, "listener":Landroid/media/midi/IMidiDeviceListener;
    invoke-interface {v3, v0}, Landroid/media/midi/IMidiDeviceListener;->onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_22} :catch_23

    goto :goto_13

    .line 190
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Landroid/media/midi/IMidiDeviceListener;
    :catch_23
    move-exception v1

    .line 191
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "MidiService"

    const-string/jumbo v5, "remote exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public deviceRemoved(Lcom/android/server/midi/MidiService$Device;)V
    .registers 8
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;

    .prologue
    .line 197
    iget v4, p0, mUid:I

    invoke-virtual {p1, v4}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v4

    if-nez v4, :cond_9

    .line 207
    :cond_8
    :goto_8
    return-void

    .line 199
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    .line 201
    .local v0, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    :try_start_d
    iget-object v4, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/midi/IMidiDeviceListener;

    .line 202
    .local v3, "listener":Landroid/media/midi/IMidiDeviceListener;
    invoke-interface {v3, v0}, Landroid/media/midi/IMidiDeviceListener;->onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_22} :catch_23

    goto :goto_13

    .line 204
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Landroid/media/midi/IMidiDeviceListener;
    :catch_23
    move-exception v1

    .line 205
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "MidiService"

    const-string/jumbo v5, "remote exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public deviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 8
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;
    .param p2, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .prologue
    .line 211
    iget v3, p0, mUid:I

    invoke-virtual {p1, v3}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 220
    :cond_8
    :goto_8
    return-void

    .line 214
    :cond_9
    :try_start_9
    iget-object v3, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/midi/IMidiDeviceListener;

    .line 215
    .local v2, "listener":Landroid/media/midi/IMidiDeviceListener;
    invoke-interface {v2, p2}, Landroid/media/midi/IMidiDeviceListener;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1e} :catch_1f

    goto :goto_f

    .line 217
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Landroid/media/midi/IMidiDeviceListener;
    :catch_1f
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MidiService"

    const-string/jumbo v4, "remote exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public getUid()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, mUid:I

    return v0
.end method

.method public removeDeviceConnection(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 164
    iget-object v1, p0, mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 165
    .local v0, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    if-eqz v0, :cond_11

    .line 166
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$DeviceConnection;->getDevice()Lcom/android/server/midi/MidiService$Device;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/midi/MidiService$Device;->removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V

    .line 168
    :cond_11
    iget-object v1, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_24

    .line 169
    invoke-direct {p0}, close()V

    .line 171
    :cond_24
    return-void
.end method

.method public removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V
    .registers 4
    .param p1, "connection"    # Lcom/android/server/midi/MidiService$DeviceConnection;

    .prologue
    .line 175
    iget-object v0, p0, mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$DeviceConnection;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 177
    invoke-direct {p0}, close()V

    .line 179
    :cond_1c
    return-void
.end method

.method public removeListener(Landroid/media/midi/IMidiDeviceListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/media/midi/IMidiDeviceListener;

    .prologue
    .line 150
    iget-object v0, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_18

    .line 152
    invoke-direct {p0}, close()V

    .line 154
    :cond_18
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Client: UID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget v3, p0, mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    const-string v3, " PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget v3, p0, mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    const-string v3, " listener count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v3, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    const-string v3, " Device Connections:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget-object v3, p0, mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 249
    .local v0, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    const-string v3, " <device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$DeviceConnection;->getDevice()Lcom/android/server/midi/MidiService$Device;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/midi/MidiDeviceInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 253
    .end local v0    # "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    :cond_59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
