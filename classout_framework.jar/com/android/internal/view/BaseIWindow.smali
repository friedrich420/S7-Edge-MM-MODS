.class public Lcom/android/internal/view/BaseIWindow;
.super Landroid/view/IWindow$Stub;
.source "BaseIWindow.java"


# instance fields
.field public mSeq:I

.field private mSession:Landroid/view/IWindowSession;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/view/IWindow$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public closeSystemDialogs(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 79
    return-void
.end method

.method public dispatchAppVisibility(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    .line 63
    return-void
.end method

.method public dispatchAttachedDisplayChanged(I)V
    .registers 2
    .param p1, "displayId"    # I

    .prologue
    .line 58
    return-void
.end method

.method public dispatchCoverStateChanged(Z)V
    .registers 2
    .param p1, "isOpen"    # Z

    .prologue
    .line 136
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 93
    return-void
.end method

.method public dispatchGetNewSurface()V
    .registers 1

    .prologue
    .line 67
    return-void
.end method

.method public dispatchMultiWindowStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 154
    return-void
.end method

.method public dispatchSmartClipRemoteRequest(Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;)V
    .registers 2
    .param p1, "request"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    .prologue
    .line 127
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .registers 5
    .param p1, "seq"    # I
    .param p2, "globalUi"    # I
    .param p3, "localValue"    # I
    .param p4, "localChanges"    # I

    .prologue
    .line 98
    iput p1, p0, mSeq:I

    .line 99
    return-void
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "sync"    # Z

    .prologue
    .line 104
    if-eqz p6, :cond_c

    .line 106
    :try_start_2
    iget-object v0, p0, mSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_c} :catch_d

    .line 110
    :cond_c
    :goto_c
    return-void

    .line 107
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public dispatchWallpaperOffsets(FFFFZ)V
    .registers 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "xStep"    # F
    .param p4, "yStep"    # F
    .param p5, "sync"    # Z

    .prologue
    .line 83
    if-eqz p5, :cond_b

    .line 85
    :try_start_2
    iget-object v0, p0, mSession:Landroid/view/IWindowSession;

    invoke-virtual {p0}, asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    .line 89
    :cond_b
    :goto_b
    return-void

    .line 86
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public dispatchWindowShown()V
    .registers 1

    .prologue
    .line 122
    return-void
.end method

.method public executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "out"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 75
    return-void
.end method

.method public moved(II)V
    .registers 3
    .param p1, "newX"    # I
    .param p2, "newY"    # I

    .prologue
    .line 53
    return-void
.end method

.method public onAnimationStarted(I)V
    .registers 2
    .param p1, "remainingFrameCount"    # I

    .prologue
    .line 114
    return-void
.end method

.method public onAnimationStopped()V
    .registers 1

    .prologue
    .line 118
    return-void
.end method

.method public onSurfaceDestroyDeferred()V
    .registers 1

    .prologue
    .line 145
    return-void
.end method

.method public resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "overscanInsets"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "stableInsets"    # Landroid/graphics/Rect;
    .param p6, "outsets"    # Landroid/graphics/Rect;
    .param p7, "reportDraw"    # Z
    .param p8, "newConfig"    # Landroid/content/res/Configuration;
    .param p9, "cocktailBarFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 43
    if-eqz p7, :cond_7

    .line 45
    :try_start_2
    iget-object v0, p0, mSession:Landroid/view/IWindowSession;

    invoke-interface {v0, p0}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_8

    .line 49
    :cond_7
    :goto_7
    return-void

    .line 46
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public setSession(Landroid/view/IWindowSession;)V
    .registers 2
    .param p1, "session"    # Landroid/view/IWindowSession;

    .prologue
    .line 36
    iput-object p1, p0, mSession:Landroid/view/IWindowSession;

    .line 37
    return-void
.end method

.method public windowFocusChanged(ZZZ)V
    .registers 4
    .param p1, "hasFocus"    # Z
    .param p2, "touchEnabled"    # Z
    .param p3, "focusedAppChanged"    # Z

    .prologue
    .line 71
    return-void
.end method
