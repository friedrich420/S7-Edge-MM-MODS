.class final Lcom/android/server/display/MagnifierDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "MagnifierDisplayAdapter.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;
.implements Lcom/android/server/display/MagnifierSurfaceControl$Listener;


# static fields
.field static final DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "MagnifierDisplayAdapter"


# instance fields
.field private mCurrentDisplayId:I

.field private mDevice:Lcom/android/server/display/MagnifierDevice;

.field private mDisplayInfo:Landroid/view/DisplayInfo;

.field private mEnabled:Z

.field private mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

.field private mScale:F

.field private mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

.field private mTempSpec:Landroid/view/MagnificationSpec;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V
    .registers 13
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5, "uiHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v6, 0x0

    .line 60
    const-string v5, "MagnifierDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 51
    iput-boolean v6, p0, mEnabled:Z

    .line 52
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, mTempSpec:Landroid/view/MagnificationSpec;

    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, mScale:F

    .line 56
    iput v6, p0, mCurrentDisplayId:I

    .line 61
    new-instance v0, Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-direct {v0, p2}, Lcom/android/server/display/MagnifierDisplayPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    .line 62
    iput-object p5, p0, mUiHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 131
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 72
    return-void
.end method

.method public enable(Z)V
    .registers 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 80
    iget-boolean v0, p0, mEnabled:Z

    if-ne v0, p1, :cond_25

    .line 81
    const-string v0, "MagnifierDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flag is same"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_24
    return-void

    .line 85
    :cond_25
    const-string v0, "MagnifierDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput-boolean p1, p0, mEnabled:Z

    .line 88
    if-eqz p1, :cond_5c

    .line 89
    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    iget v5, p0, mCurrentDisplayId:I

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/MagnifierSurfaceControl;-><init>(Landroid/content/Context;Lcom/android/server/display/MagnifierSurfaceControl$Listener;Landroid/os/Handler;Lcom/android/server/display/MagnifierDisplayPolicy;I)V

    iput-object v0, p0, mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    .line 90
    iget-object v0, p0, mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->create()V

    goto :goto_24

    .line 92
    :cond_5c
    iget-object v0, p0, mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->dismiss()V

    .line 93
    iget-object v0, p0, mDevice:Lcom/android/server/display/MagnifierDevice;

    if-eqz v0, :cond_74

    .line 94
    iget-object v0, p0, mDevice:Lcom/android/server/display/MagnifierDevice;

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    .line 95
    iget-object v0, p0, mDevice:Lcom/android/server/display/MagnifierDevice;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 97
    :cond_74
    iput-object v3, p0, mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    .line 98
    iput-object v3, p0, mDevice:Lcom/android/server/display/MagnifierDevice;

    goto :goto_24
.end method

.method public onChangeSurface(Landroid/view/Surface;)V
    .registers 5
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 149
    const-string v0, "MagnifierDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChangeSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, mDevice:Lcom/android/server/display/MagnifierDevice;

    if-eqz v0, :cond_23

    .line 152
    iget-object v0, p0, mDevice:Lcom/android/server/display/MagnifierDevice;

    invoke-virtual {v0, p1}, Lcom/android/server/display/MagnifierDevice;->setSurface(Landroid/view/Surface;)V

    .line 156
    :goto_22
    return-void

    .line 154
    :cond_23
    const-string v0, "MagnifierDisplayAdapter"

    const-string/jumbo v1, "onChangeSurface: device is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public onCreateSurface(Landroid/view/Surface;II)V
    .registers 12
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "defaultModeId"    # I
    .param p3, "currentDisplayId"    # I

    .prologue
    .line 135
    invoke-virtual {p0}, getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v7

    monitor-enter v7

    .line 137
    :try_start_5
    const-string v0, "MagnifierDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreateSurface:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v0, "OverlayMagnifier"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v2

    .line 140
    .local v2, "displayToken":Landroid/os/IBinder;
    new-instance v0, Lcom/android/server/display/MagnifierDevice;

    const-string v4, "OverlayMagnifier"

    iget-object v5, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    move-object v1, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/display/MagnifierDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Landroid/view/Surface;Ljava/lang/String;Lcom/android/server/display/MagnifierDisplayPolicy;I)V

    iput-object v0, p0, mDevice:Lcom/android/server/display/MagnifierDevice;

    .line 141
    iget-object v0, p0, mDevice:Lcom/android/server/display/MagnifierDevice;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 142
    monitor-exit v7

    .line 144
    return-void

    .line 142
    .end local v2    # "displayToken":Landroid/os/IBinder;
    :catchall_3b
    move-exception v0

    monitor-exit v7
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public registerLocked()V
    .registers 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 77
    return-void
.end method

.method public setCurrentDisplayIdMagnifier(I)V
    .registers 2
    .param p1, "displayid"    # I

    .prologue
    .line 66
    iput p1, p0, mCurrentDisplayId:I

    .line 67
    return-void
.end method

.method public setMagnificationSettings(IIF)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "scale"    # F

    .prologue
    .line 103
    iget-object v0, p0, mPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/MagnifierDisplayPolicy;->updateSettings(IIF)V

    .line 104
    iput p3, p0, mScale:F

    .line 105
    return-void
.end method

.method public updateMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .registers 5
    .param p1, "spec"    # Landroid/view/MagnificationSpec;

    .prologue
    .line 108
    iget-object v1, p0, mTempSpec:Landroid/view/MagnificationSpec;

    monitor-enter v1

    .line 109
    :try_start_3
    iget-object v0, p0, mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    if-nez v0, :cond_9

    .line 110
    monitor-exit v1

    .line 121
    :goto_8
    return-void

    .line 112
    :cond_9
    if-eqz p1, :cond_29

    .line 113
    iget-object v0, p0, mTempSpec:Landroid/view/MagnificationSpec;

    iget v2, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iput v2, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 114
    iget-object v0, p0, mTempSpec:Landroid/view/MagnificationSpec;

    iget v2, p1, Landroid/view/MagnificationSpec;->offsetY:F

    iput v2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 115
    iget-object v0, p0, mTempSpec:Landroid/view/MagnificationSpec;

    iget v2, p0, mScale:F

    iput v2, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 116
    iget-object v0, p0, mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    iget-object v2, p0, mTempSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, v2}, Lcom/android/server/display/MagnifierSurfaceControl;->updateMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 120
    :goto_24
    monitor-exit v1

    goto :goto_8

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0

    .line 118
    :cond_29
    :try_start_29
    iget-object v0, p0, mSurfaceCtl:Lcom/android/server/display/MagnifierSurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/display/MagnifierSurfaceControl;->updateMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_26

    goto :goto_24
.end method
