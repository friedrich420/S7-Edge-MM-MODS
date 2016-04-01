.class final Lcom/android/server/display/VirtualDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "VirtualDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;,
        Lcom/android/server/display/VirtualDisplayAdapter$Callback;,
        Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "VirtualDisplayAdapter"

.field private static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "virtual:"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mVirtualDisplayDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .registers 11
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;

    .prologue
    .line 63
    const-string v5, "VirtualDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 56
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mVirtualDisplayDevices:Landroid/util/ArrayMap;

    .line 64
    iput-object p3, p0, mHandler:Landroid/os/Handler;

    .line 65
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/VirtualDisplayAdapter;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 49
    invoke-direct {p0, p1}, handleBinderDiedLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/VirtualDisplayAdapter;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 49
    invoke-direct {p0, p1}, handleMediaProjectionStoppedLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method private getNextUniqueIndex(Ljava/lang/String;)I
    .registers 6
    .param p1, "uniqueIdPrefix"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v3, p0, mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 147
    const/4 v2, 0x0

    .line 162
    :cond_9
    return v2

    .line 150
    :cond_a
    const/4 v2, 0x0

    .line 151
    .local v2, "nextUniqueIndex":I
    iget-object v3, p0, mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 152
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;>;"
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 153
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 154
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    # getter for: Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mUniqueIndex:I
    invoke-static {v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->access$000(Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;)I

    move-result v3

    if-lt v3, v2, :cond_15

    .line 158
    # getter for: Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mUniqueIndex:I
    invoke-static {v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->access$000(Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    goto :goto_15
.end method

.method private handleBinderDiedLocked(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "appToken"    # Landroid/os/IBinder;

    .prologue
    .line 166
    iget-object v1, p0, mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 167
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_2c

    .line 168
    const-string v1, "VirtualDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Virtual display device released because application token died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    .line 171
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 173
    :cond_2c
    return-void
.end method

.method private handleMediaProjectionStoppedLocked(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "appToken"    # Landroid/os/IBinder;

    .prologue
    .line 176
    iget-object v1, p0, mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 177
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_27

    .line 178
    const-string v1, "VirtualDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Virtual display device released because media projection stopped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->stopLocked()V

    .line 182
    :cond_27
    return-void
.end method


# virtual methods
.method public createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)Lcom/android/server/display/DisplayDevice;
    .registers 32
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "projection"    # Landroid/media/projection/IMediaProjection;
    .param p3, "ownerUid"    # I
    .param p4, "ownerPackageName"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "densityDpi"    # I
    .param p9, "surface"    # Landroid/view/Surface;
    .param p10, "flags"    # I

    .prologue
    .line 70
    and-int/lit8 v4, p10, 0x4

    if-eqz v4, :cond_a1

    const/16 v20, 0x1

    .line 71
    .local v20, "secure":Z
    :goto_6
    invoke-interface/range {p1 .. p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 72
    .local v6, "appToken":Landroid/os/IBinder;
    move-object/from16 v0, p5

    move/from16 v1, v20

    move/from16 v2, p10

    invoke-static {v0, v1, v2}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;ZI)Landroid/os/IBinder;

    move-result-object v5

    .line 73
    .local v5, "displayToken":Landroid/os/IBinder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "virtual:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 75
    .local v18, "baseUniqueId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, getNextUniqueIndex(Ljava/lang/String;)I

    move-result v17

    .line 76
    .local v17, "uniqueIndex":I
    new-instance v3, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    new-instance v15, Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    move-object/from16 v0, p0

    iget-object v4, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-direct {v15, v0, v4}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;-><init>(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/os/Handler;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v4, p0

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    invoke-direct/range {v3 .. v17}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;-><init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILcom/android/server/display/VirtualDisplayAdapter$Callback;Ljava/lang/String;I)V

    .line 80
    .local v3, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    move-object/from16 v0, p0

    iget-object v4, v0, mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    if-eqz p2, :cond_9c

    .line 84
    :try_start_90
    new-instance v4, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;-><init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/media/projection/IMediaProjection;->registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 86
    :cond_9c
    const/4 v4, 0x0

    invoke-interface {v6, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_a0} :catch_a5

    .line 95
    .end local v3    # "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    :goto_a0
    return-object v3

    .line 70
    .end local v5    # "displayToken":Landroid/os/IBinder;
    .end local v6    # "appToken":Landroid/os/IBinder;
    .end local v17    # "uniqueIndex":I
    .end local v18    # "baseUniqueId":Ljava/lang/String;
    .end local v20    # "secure":Z
    :cond_a1
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 87
    .restart local v3    # "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    .restart local v5    # "displayToken":Landroid/os/IBinder;
    .restart local v6    # "appToken":Landroid/os/IBinder;
    .restart local v17    # "uniqueIndex":I
    .restart local v18    # "baseUniqueId":Ljava/lang/String;
    .restart local v20    # "secure":Z
    :catch_a5
    move-exception v19

    .line 88
    .local v19, "ex":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v4, v0, mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    .line 90
    const/4 v3, 0x0

    goto :goto_a0
.end method

.method public releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;
    .registers 4
    .param p1, "appToken"    # Landroid/os/IBinder;

    .prologue
    .line 131
    iget-object v1, p0, mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 132
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_12

    .line 133
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    .line 134
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 139
    :cond_12
    return-object v0
.end method

.method public resizeVirtualDisplayLocked(Landroid/os/IBinder;III)V
    .registers 7
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I

    .prologue
    .line 100
    iget-object v1, p0, mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 101
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_d

    .line 102
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->resizeLocked(III)V

    .line 104
    :cond_d
    return-void
.end method

.method public setVirtualDisplayFixedOrientationLocked(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "orientation"    # I

    .prologue
    .line 124
    iget-object v1, p0, mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 125
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_d

    .line 126
    invoke-virtual {v0, p2}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->setFixedOrientationLocked(I)V

    .line 128
    :cond_d
    return-void
.end method

.method public setVirtualDisplayMirroringDisplayLocked(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .prologue
    .line 116
    iget-object v1, p0, mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 117
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_d

    .line 118
    invoke-virtual {v0, p2}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->setMirroringDisplayLocked(I)V

    .line 120
    :cond_d
    return-void
.end method

.method public setVirtualDisplaySurfaceLocked(Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 5
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 108
    iget-object v1, p0, mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 109
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_d

    .line 110
    invoke-virtual {v0, p2}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->setSurfaceLocked(Landroid/view/Surface;)V

    .line 112
    :cond_d
    return-void
.end method
