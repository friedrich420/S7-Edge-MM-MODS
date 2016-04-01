.class final Lcom/android/server/wm/Session;
.super Landroid/view/IWindowSession$Stub;
.source "Session.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final mCallback:Landroid/view/IWindowSessionCallback;

.field final mClient:Lcom/android/internal/view/IInputMethodClient;

.field mClientDead:Z

.field final mInputContext:Lcom/android/internal/view/IInputContext;

.field mLastReportedAnimatorScale:F

.field mNumWindow:I

.field final mPid:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mStringName:Ljava/lang/String;

.field mSurfaceSession:Landroid/view/SurfaceSession;

.field final mUid:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)V
    .registers 13
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "callback"    # Landroid/view/IWindowSessionCallback;
    .param p3, "client"    # Lcom/android/internal/view/IInputMethodClient;
    .param p4, "inputContext"    # Lcom/android/internal/view/IInputContext;

    .prologue
    const/4 v5, 0x0

    .line 79
    invoke-direct {p0}, Landroid/view/IWindowSession$Stub;-><init>()V

    .line 74
    iput v5, p0, mNumWindow:I

    .line 75
    iput-boolean v5, p0, mClientDead:Z

    .line 80
    iput-object p1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    .line 81
    iput-object p2, p0, mCallback:Landroid/view/IWindowSessionCallback;

    .line 82
    iput-object p3, p0, mClient:Lcom/android/internal/view/IInputMethodClient;

    .line 83
    iput-object p4, p0, mInputContext:Lcom/android/internal/view/IInputContext;

    .line 84
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iput v5, p0, mUid:I

    .line 85
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    iput v5, p0, mPid:I

    .line 86
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v5

    iput v5, p0, mLastReportedAnimatorScale:F

    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "Session{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v5, p0, mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    iget v5, p0, mUid:I

    const/16 v6, 0x2710

    if-ge v5, v6, :cond_9f

    .line 93
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget v5, p0, mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    :goto_51
    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, mStringName:Ljava/lang/String;

    .line 104
    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 105
    :try_start_62
    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-nez v5, :cond_7d

    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mHaveInputMethods:Z

    if-eqz v5, :cond_7d

    .line 106
    const-string/jumbo v5, "input_method"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 108
    .local v0, "b":Landroid/os/IBinder;
    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v7

    iput-object v7, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    .line 110
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_7d
    monitor-exit v6
    :try_end_7e
    .catchall {:try_start_62 .. :try_end_7e} :catchall_bc

    .line 111
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 115
    .local v2, "ident":J
    :try_start_82
    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v5, :cond_bf

    .line 116
    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    iget v6, p0, mUid:I

    iget v7, p0, mPid:I

    invoke-interface {v5, p3, p4, v6, v7}, Lcom/android/internal/view/IInputMethodManager;->addClient(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;II)V

    .line 121
    :goto_93
    invoke-interface {p3}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, p0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_9b} :catch_c4
    .catchall {:try_start_82 .. :try_end_9b} :catchall_d6

    .line 131
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    :goto_9e
    return-void

    .line 96
    .end local v2    # "ident":J
    :cond_9f
    const-string v5, ":u"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget v5, p0, mUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const/16 v5, 0x61

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    iget v5, p0, mUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_51

    .line 110
    :catchall_bc
    move-exception v5

    :try_start_bd
    monitor-exit v6
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    throw v5

    .line 119
    .restart local v2    # "ident":J
    :cond_bf
    const/4 v5, 0x0

    :try_start_c0
    invoke-interface {p3, v5}, Lcom/android/internal/view/IInputMethodClient;->setUsingInputMethod(Z)V
    :try_end_c3
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_c3} :catch_c4
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_d6

    goto :goto_93

    .line 122
    :catch_c4
    move-exception v1

    .line 125
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_c5
    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v5, :cond_d2

    .line 126
    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v5, p3}, Lcom/android/internal/view/IInputMethodManager;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_d2
    .catch Landroid/os/RemoteException; {:try_start_c5 .. :try_end_d2} :catch_db
    .catchall {:try_start_c5 .. :try_end_d2} :catchall_d6

    .line 131
    :cond_d2
    :goto_d2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_9e

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_d6
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 128
    .restart local v1    # "e":Landroid/os/RemoteException;
    :catch_db
    move-exception v5

    goto :goto_d2
.end method


# virtual methods
.method public add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I
    .registers 18
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "viewVisibility"    # I
    .param p5, "outContentInsets"    # Landroid/graphics/Rect;
    .param p6, "outStableInsets"    # Landroid/graphics/Rect;
    .param p7, "outInputChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 169
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v0

    return v0
.end method

.method public addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I
    .registers 21
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "viewVisibility"    # I
    .param p5, "displayId"    # I
    .param p6, "outContentInsets"    # Landroid/graphics/Rect;
    .param p7, "outStableInsets"    # Landroid/graphics/Rect;
    .param p8, "outOutsets"    # Landroid/graphics/Rect;
    .param p9, "outInputChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 177
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v0

    return v0
.end method

.method public addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 19
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "viewVisibility"    # I
    .param p5, "displayId"    # I
    .param p6, "outContentInsets"    # Landroid/graphics/Rect;
    .param p7, "outStableInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 191
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v0

    return v0
.end method

.method public addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 15
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "viewVisibility"    # I
    .param p5, "outContentInsets"    # Landroid/graphics/Rect;
    .param p6, "outStableInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 184
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public binderDied()V
    .registers 4

    .prologue
    .line 153
    :try_start_0
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    if-eqz v0, :cond_f

    .line 154
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    iget-object v1, p0, mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0, v1}, Lcom/android/internal/view/IInputMethodManager;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_29

    .line 158
    :cond_f
    :goto_f
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 159
    :try_start_14
    iget-object v0, p0, mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, mClientDead:Z

    .line 161
    invoke-virtual {p0}, killSessionLocked()V

    .line 162
    monitor-exit v1

    .line 163
    return-void

    .line 162
    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_14 .. :try_end_28} :catchall_26

    throw v0

    .line 156
    :catch_29
    move-exception v0

    goto :goto_f
.end method

.method public dragRecipientEntered(Landroid/view/IWindow;)V
    .registers 2
    .param p1, "window"    # Landroid/view/IWindow;

    .prologue
    .line 431
    return-void
.end method

.method public dragRecipientExited(Landroid/view/IWindow;)V
    .registers 2
    .param p1, "window"    # Landroid/view/IWindow;

    .prologue
    .line 437
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 560
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNumWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mNumWindow:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 561
    const-string v0, " mClientDead="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mClientDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 562
    const-string v0, " mSurfaceSession="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 563
    return-void
.end method

.method public finishDrawing(Landroid/view/IWindow;)V
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;

    .prologue
    .line 248
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    .line 249
    return-void
.end method

.method public getContentFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "outContentFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 242
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getWindowContentFrame(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 243
    return-void
.end method

.method public getCoverStateSwitch()Z
    .registers 2

    .prologue
    .line 514
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getCoverStateSwitch()Z

    move-result v0

    return v0
.end method

.method public getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "outDisplayFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 238
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getWindowDisplayFrame(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 239
    return-void
.end method

.method public getInTouchMode()Z
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 259
    :try_start_5
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    monitor-exit v1

    return v0

    .line 260
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .registers 3
    .param p1, "window"    # Landroid/os/IBinder;

    .prologue
    .line 498
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v0

    return-object v0
.end method

.method killSessionLocked()V
    .registers 5

    .prologue
    .line 539
    iget v1, p0, mNumWindow:I

    if-gtz v1, :cond_1b

    iget-boolean v1, p0, mClientDead:Z

    if-eqz v1, :cond_1b

    .line 540
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 541
    iget-object v1, p0, mSurfaceSession:Landroid/view/SurfaceSession;

    if-eqz v1, :cond_1b

    .line 548
    :try_start_13
    iget-object v1, p0, mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v1}, Landroid/view/SurfaceSession;->kill()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1c

    .line 554
    :goto_18
    const/4 v1, 0x0

    iput-object v1, p0, mSurfaceSession:Landroid/view/SurfaceSession;

    .line 557
    :cond_1b
    return-void

    .line 549
    :catch_1c
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when killing surface session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method public onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "rectangle"    # Landroid/graphics/Rect;

    .prologue
    .line 487
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 488
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_18

    move-result-wide v0

    .line 490
    .local v0, "identity":J
    :try_start_9
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowManagerService;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    .line 492
    :try_start_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 494
    monitor-exit v3

    .line 495
    return-void

    .line 492
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 494
    .end local v0    # "identity":J
    :catchall_18
    move-exception v2

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v2
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowSession$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 140
    :catch_5
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 143
    const-string v1, "WindowManager"

    const-string v2, "Window Session Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    :cond_11
    throw v0
.end method

.method public outOfMemory(Landroid/view/IWindow;)Z
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;

    .prologue
    .line 224
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z

    move-result v0

    return v0
.end method

.method public performDeferredDestroy(Landroid/view/IWindow;)V
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;

    .prologue
    .line 220
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->performDeferredDestroyWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    .line 221
    return-void
.end method

.method public performDrag(Landroid/view/IWindow;Landroid/os/IBinder;FFFFLandroid/content/ClipData;)Z
    .registers 20
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "dragToken"    # Landroid/os/IBinder;
    .param p3, "touchX"    # F
    .param p4, "touchY"    # F
    .param p5, "thumbCenterX"    # F
    .param p6, "thumbCenterY"    # F
    .param p7, "data"    # Landroid/content/ClipData;

    .prologue
    .line 291
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9

    .line 292
    :try_start_5
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v8, :cond_1e

    .line 293
    const-string v8, "WindowManager"

    const-string v10, "No drag prepared"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "performDrag() without prepareDrag()"

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 378
    :catchall_1b
    move-exception v8

    monitor-exit v9
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw v8

    .line 297
    :cond_1e
    :try_start_1e
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v8, v8, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-eq p2, v8, :cond_36

    .line 298
    const-string v8, "WindowManager"

    const-string v10, "Performing mismatched drag"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "performDrag() does not match prepareDrag()"

    invoke-direct {v8, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 302
    :cond_36
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v10, p1, v11}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 303
    .local v1, "callingWin":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_5b

    .line 304
    const-string v8, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad requesting window "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v8, 0x0

    monitor-exit v9

    .line 380
    :goto_5a
    return v8

    .line 312
    :cond_5b
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v10, 0x14

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 320
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 321
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v3, :cond_71

    .line 322
    const/4 v8, 0x0

    monitor-exit v9

    goto :goto_5a

    .line 324
    :cond_71
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v2

    .line 325
    .local v2, "display":Landroid/view/Display;
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8, v2}, Lcom/android/server/wm/DragState;->register(Landroid/view/Display;)V

    .line 326
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 327
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v11, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v11, v11, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v8, v10, v11}, Lcom/android/server/input/InputManagerService;->transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v8

    if-nez v8, :cond_b4

    .line 329
    const-string v8, "WindowManager"

    const-string v10, "Unable to transfer touch focus"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8}, Lcom/android/server/wm/DragState;->unregister()V

    .line 331
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    iput-object v10, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 332
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 333
    const/4 v8, 0x0

    monitor-exit v9

    goto :goto_5a

    .line 336
    :cond_b4
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v0, p7

    iput-object v0, v8, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 337
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iput p3, v8, Lcom/android/server/wm/DragState;->mCurrentX:F

    .line 338
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v0, p4

    iput v0, v8, Lcom/android/server/wm/DragState;->mCurrentY:F

    .line 340
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v1, v8, Lcom/android/server/wm/DragState;->mSourceWindow:Lcom/android/server/wm/WindowState;

    .line 342
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v0, p4

    invoke-virtual {v8, p3, v0}, Lcom/android/server/wm/DragState;->broadcastDragStartedLw(FF)V

    .line 345
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v0, p5

    iput v0, v8, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 346
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v0, p6

    iput v0, v8, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 349
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v5, v8, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 352
    .local v5, "surfaceControl":Landroid/view/SurfaceControl;
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_f2
    .catchall {:try_start_1e .. :try_end_f2} :catchall_1b

    .line 356
    :try_start_f2
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v10

    invoke-virtual {v8, v10}, Lcom/android/server/wm/WindowManagerService;->getEasyOneHandScaleSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v4

    .line 357
    .local v4, "spec":Landroid/view/MagnificationSpec;
    if-eqz v4, :cond_13f

    iget v8, v4, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v8, v8, v10

    if-gez v8, :cond_13f

    .line 358
    sub-float v8, p3, p5

    iget v10, v4, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v8, v10

    iget v10, v4, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v8, v10

    float-to-int v6, v8

    .line 359
    .local v6, "xPos":I
    sub-float v8, p4, p6

    iget v10, v4, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v8, v10

    iget v10, v4, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v8, v10

    float-to-int v7, v8

    .line 360
    .local v7, "yPos":I
    int-to-float v8, v6

    int-to-float v10, v7

    invoke-virtual {v5, v8, v10}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 369
    .end local v6    # "xPos":I
    .end local v7    # "yPos":I
    :goto_11d
    const v8, 0x3f350481    # 0.7071f

    invoke-virtual {v5, v8}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 370
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8}, Lcom/android/server/wm/DragState;->getDragLayerLw()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 371
    invoke-virtual {v2}, Landroid/view/Display;->getLayerStack()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 372
    invoke-virtual {v5}, Landroid/view/SurfaceControl;->show()V
    :try_end_138
    .catchall {:try_start_f2 .. :try_end_138} :catchall_147

    .line 374
    :try_start_138
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 378
    monitor-exit v9
    :try_end_13c
    .catchall {:try_start_138 .. :try_end_13c} :catchall_1b

    .line 380
    const/4 v8, 0x1

    goto/16 :goto_5a

    .line 362
    :cond_13f
    sub-float v8, p3, p5

    sub-float v10, p4, p6

    :try_start_143
    invoke-virtual {v5, v8, v10}, Landroid/view/SurfaceControl;->setPosition(FF)V
    :try_end_146
    .catchall {:try_start_143 .. :try_end_146} :catchall_147

    goto :goto_11d

    .line 374
    .end local v4    # "spec":Landroid/view/MagnificationSpec;
    :catchall_147
    move-exception v8

    :try_start_148
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v8
    :try_end_14c
    .catchall {:try_start_148 .. :try_end_14c} :catchall_1b
.end method

.method public performHapticFeedback(Landroid/view/IWindow;IZ)Z
    .registers 10
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    .line 265
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 266
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_22

    move-result-wide v0

    .line 268
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, p0, p1, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    invoke-interface {v2, v4, p2, p3}, Landroid/view/WindowManagerPolicy;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_1d

    move-result v2

    .line 272
    :try_start_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3

    return v2

    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 274
    .end local v0    # "ident":J
    :catchall_22
    move-exception v2

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_22

    throw v2
.end method

.method public pokeDrawLock(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "window"    # Landroid/os/IBinder;

    .prologue
    .line 503
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 505
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p1}, Lcom/android/server/wm/WindowManagerService;->pokeDrawLock(Lcom/android/server/wm/Session;Landroid/os/IBinder;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 507
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 509
    return-void

    .line 507
    :catchall_d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public prepareDrag(Landroid/view/IWindow;IIILandroid/view/Surface;)Landroid/os/IBinder;
    .registers 13
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "flags"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "outSurface"    # Landroid/view/Surface;

    .prologue
    .line 280
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, mSurfaceSession:Landroid/view/SurfaceSession;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->prepareDragSurface(Landroid/view/IWindow;Landroid/view/SurfaceSession;IIILandroid/view/Surface;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;Landroid/graphics/PointF;Landroid/graphics/Rect;)I
    .registers 39
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "seq"    # I
    .param p3, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "requestedWidth"    # I
    .param p5, "requestedHeight"    # I
    .param p6, "viewFlags"    # I
    .param p7, "flags"    # I
    .param p8, "outFrame"    # Landroid/graphics/Rect;
    .param p9, "outOverscanInsets"    # Landroid/graphics/Rect;
    .param p10, "outContentInsets"    # Landroid/graphics/Rect;
    .param p11, "outVisibleInsets"    # Landroid/graphics/Rect;
    .param p12, "outStableInsets"    # Landroid/graphics/Rect;
    .param p13, "outsets"    # Landroid/graphics/Rect;
    .param p14, "outConfig"    # Landroid/content/res/Configuration;
    .param p15, "outSurface"    # Landroid/view/Surface;
    .param p16, "outScale"    # Landroid/graphics/PointF;
    .param p17, "outCocktailBar"    # Landroid/graphics/Rect;

    .prologue
    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move-object/from16 v18, p16

    move-object/from16 v19, p17

    invoke-virtual/range {v1 .. v19}, Lcom/android/server/wm/WindowManagerService;->relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;Landroid/graphics/PointF;Landroid/graphics/Rect;)I

    move-result v20

    .line 216
    .local v20, "res":I
    return v20
.end method

.method public remove(Landroid/view/IWindow;)V
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;

    .prologue
    .line 196
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    .line 197
    return-void
.end method

.method public reportDropResult(Landroid/view/IWindow;Z)V
    .registers 11
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "consumed"    # Z

    .prologue
    .line 384
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 389
    .local v1, "token":Landroid/os/IBinder;
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 390
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_5b

    move-result-wide v2

    .line 392
    .local v2, "ident":J
    :try_start_d
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v4, :cond_1f

    .line 395
    const-string v4, "WindowManager"

    const-string v6, "Drop result given but no drag in progress"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_56

    .line 422
    :try_start_1a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v5
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_5b

    .line 425
    :goto_1e
    return-void

    .line 399
    :cond_1f
    :try_start_1f
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v4, v4, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-eq v4, v1, :cond_5e

    .line 401
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid drop-result claim by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v4, v4, Lcom/android/server/wm/DragState;->mSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_5e

    .line 404
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "reportDropResult() by non-recipient"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_56
    .catchall {:try_start_1f .. :try_end_56} :catchall_56

    .line 422
    :catchall_56
    move-exception v4

    :try_start_57
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 424
    .end local v2    # "ident":J
    :catchall_5b
    move-exception v4

    monitor-exit v5
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_5b

    throw v4

    .line 412
    .restart local v2    # "ident":J
    :cond_5e
    :try_start_5e
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0x15

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 413
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v6, p1, v7}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 414
    .local v0, "callingWin":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_92

    .line 415
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad result-reporting window "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8d
    .catchall {:try_start_5e .. :try_end_8d} :catchall_56

    .line 422
    :try_start_8d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v5
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_5b

    goto :goto_1e

    .line 419
    :cond_92
    :try_start_92
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    iput-boolean p2, v4, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 420
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v4}, Lcom/android/server/wm/DragState;->endDragLw()V
    :try_end_9f
    .catchall {:try_start_92 .. :try_end_9f} :catchall_56

    .line 422
    :try_start_9f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 424
    monitor-exit v5
    :try_end_a3
    .catchall {:try_start_9f .. :try_end_a3} :catchall_5b

    goto/16 :goto_1e
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 19
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z

    .prologue
    .line 470
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 471
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_29

    move-result-wide v8

    .line 473
    .local v8, "ident":J
    :try_start_9
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowManagerService;->sendWindowWallpaperCommandLocked(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_24

    move-result-object v0

    .line 477
    :try_start_1f
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v10

    return-object v0

    :catchall_24
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 479
    .end local v8    # "ident":J
    :catchall_29
    move-exception v0

    monitor-exit v10
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public setInTouchMode(Z)V
    .registers 4
    .param p1, "mode"    # Z

    .prologue
    .line 252
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 253
    :try_start_5
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean p1, v0, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 254
    monitor-exit v1

    .line 255
    return-void

    .line 254
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 13
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "touchableInsets"    # I
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "touchableArea"    # Landroid/graphics/Region;

    .prologue
    .line 233
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    .line 235
    return-void
.end method

.method public setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 4
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "region"    # Landroid/graphics/Region;

    .prologue
    .line 228
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setTransparentRegionWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 229
    return-void
.end method

.method public setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    .registers 10
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 457
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 458
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_1f

    move-result-wide v0

    .line 460
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, p0, p1, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v4

    invoke-virtual {v2, v4, p2, p3}, Lcom/android/server/wm/WindowManagerService;->setWindowWallpaperDisplayOffsetLocked(Lcom/android/server/wm/WindowState;II)V
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_1a

    .line 463
    :try_start_15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    monitor-exit v3

    .line 466
    return-void

    .line 463
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 465
    .end local v0    # "ident":J
    :catchall_1f
    move-exception v2

    monitor-exit v3
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method public setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    .registers 15
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "xStep"    # F
    .param p5, "yStep"    # F

    .prologue
    .line 440
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 441
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_23

    move-result-wide v6

    .line 443
    .local v6, "ident":J
    :try_start_9
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->setWindowWallpaperPositionLocked(Lcom/android/server/wm/WindowState;FFFF)V
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1e

    .line 447
    :try_start_19
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 449
    monitor-exit v8

    .line 450
    return-void

    .line 447
    :catchall_1e
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 449
    .end local v6    # "ident":J
    :catchall_23
    move-exception v0

    monitor-exit v8
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 567
    iget-object v0, p0, mStringName:Ljava/lang/String;

    return-object v0
.end method

.method public wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "result"    # Landroid/os/Bundle;

    .prologue
    .line 483
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 484
    return-void
.end method

.method public wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "window"    # Landroid/os/IBinder;

    .prologue
    .line 453
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    .line 454
    return-void
.end method

.method windowAddedLocked()V
    .registers 3

    .prologue
    .line 519
    iget-object v0, p0, mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_23

    .line 522
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, mSurfaceSession:Landroid/view/SurfaceSession;

    .line 525
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 526
    iget v0, p0, mLastReportedAnimatorScale:F

    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_23

    .line 527
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    .line 530
    :cond_23
    iget v0, p0, mNumWindow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mNumWindow:I

    .line 531
    return-void
.end method

.method windowRemovedLocked()V
    .registers 2

    .prologue
    .line 534
    iget v0, p0, mNumWindow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, mNumWindow:I

    .line 535
    invoke-virtual {p0}, killSessionLocked()V

    .line 536
    return-void
.end method
