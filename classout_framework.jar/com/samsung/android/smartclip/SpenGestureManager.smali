.class public Lcom/samsung/android/smartclip/SpenGestureManager;
.super Ljava/lang/Object;
.source "SpenGestureManager.java"


# static fields
.field public static final GLOBAL_AIR_BUTTON_ALL_ENABLE:I = -0x1

.field public static final GLOBAL_AIR_BUTTON_FLASHANNOTATE:I = 0x2

.field public static final GLOBAL_AIR_BUTTON_GALAXYFINDER:I = 0x3

.field public static final GLOBAL_AIR_BUTTON_MULTIWINDOW:I = 0x4

.field public static final GLOBAL_AIR_BUTTON_QUICKMEMO:I = 0x0

.field public static final GLOBAL_AIR_BUTTON_RAKEIN:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/smartclip/ISpenGestureService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-string v0, "SpenGestureManager"

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 57
    iput-object v0, p0, mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    .line 61
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    .line 63
    return-void
.end method

.method private declared-synchronized getService()Lcom/samsung/android/smartclip/ISpenGestureService;
    .registers 3

    .prologue
    .line 78
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    if-nez v0, :cond_1e

    .line 79
    const-string/jumbo v0, "spengestureservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v0

    iput-object v0, p0, mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    .line 81
    iget-object v0, p0, mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    if-nez v0, :cond_1e

    .line 82
    const-string v0, "SpenGestureManager"

    const-string/jumbo v1, "warning: no SpenGestureManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1e
    iget-object v0, p0, mService:Lcom/samsung/android/smartclip/ISpenGestureService;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    monitor-exit p0

    return-object v0

    .line 78
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getAirButtonHitTest(III)I
    .registers 7
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 199
    :try_start_0
    invoke-direct {p0}, getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .line 200
    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_12

    .line 201
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/smartclip/ISpenGestureService;->getAirButtonHitTest(III)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 207
    :goto_a
    return v2

    .line 203
    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_b
    move-exception v0

    .line 205
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 207
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :cond_12
    const/4 v2, -0x1

    goto :goto_a
.end method

.method public getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;

    .prologue
    .line 156
    :try_start_0
    invoke-direct {p0}, getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .line 157
    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_12

    .line 158
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/smartclip/ISpenGestureService;->getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    .line 164
    :goto_a
    return-object v2

    .line 160
    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_b
    move-exception v0

    .line 162
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 164
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :cond_12
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;
    .registers 7
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "viewHash"    # I
    .param p3, "skipWindowToken"    # Landroid/os/IBinder;

    .prologue
    .line 170
    :try_start_0
    invoke-direct {p0}, getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .line 171
    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_12

    .line 172
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/smartclip/ISpenGestureService;->getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    .line 178
    :goto_a
    return-object v2

    .line 174
    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_b
    move-exception v0

    .line 176
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 178
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :cond_12
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .registers 7
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;
    .param p3, "extractionMode"    # I

    .prologue
    .line 142
    :try_start_0
    invoke-direct {p0}, getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .line 143
    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_12

    .line 144
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/smartclip/ISpenGestureService;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    .line 150
    :goto_a
    return-object v2

    .line 146
    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_b
    move-exception v0

    .line 148
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 150
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :cond_12
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public getSmartClipDataFromCurrentScreen()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 121
    :try_start_1
    invoke-direct {p0}, getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .line 122
    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_12

    .line 123
    const/4 v2, 0x0

    check-cast v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    check-cast v3, Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/smartclip/ISpenGestureService;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v2

    .line 129
    :cond_12
    return-object v2

    .line 125
    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_13
    move-exception v0

    .line 127
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public injectInputEvent(IILjava/util/ArrayList;ZLandroid/os/IBinder;)V
    .registers 13
    .param p1, "targetX"    # I
    .param p2, "targetY"    # I
    .param p4, "waitUntilConsume"    # Z
    .param p5, "skipWindowToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/InputEvent;",
            ">;Z",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 184
    .local p3, "inputEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/InputEvent;>;"
    :try_start_0
    invoke-direct {p0}, getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v0

    .line 185
    .local v0, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v0, :cond_19

    .line 186
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [Landroid/view/InputEvent;

    .line 187
    .local v3, "array":[Landroid/view/InputEvent;
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "array":[Landroid/view/InputEvent;
    check-cast v3, [Landroid/view/InputEvent;

    .restart local v3    # "array":[Landroid/view/InputEvent;
    move v1, p1

    move v2, p2

    move v4, p4

    move-object v5, p5

    .line 188
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/smartclip/ISpenGestureService;->injectInputEvent(II[Landroid/view/InputEvent;ZLandroid/os/IBinder;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 194
    .end local v3    # "array":[Landroid/view/InputEvent;
    :cond_19
    return-void

    .line 190
    .end local v0    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_1a
    move-exception v6

    .line 192
    .local v6, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized isServiceAvailable()Z
    .registers 4

    .prologue
    .line 69
    monitor-enter p0

    :try_start_1
    const-string/jumbo v1, "spengestureservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v0

    .line 70
    .local v0, "service":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-nez v0, :cond_18

    .line 71
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "isServiceAvailable : Service not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1a

    .line 72
    const/4 v1, 0x0

    .line 74
    :goto_16
    monitor-exit p0

    return v1

    :cond_18
    const/4 v1, 0x1

    goto :goto_16

    .line 69
    .end local v0    # "service":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendSmartClipRemoteRequestResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;)V
    .registers 5
    .param p1, "result"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    .prologue
    .line 91
    :try_start_0
    invoke-direct {p0}, getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .line 92
    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_9

    .line 93
    invoke-interface {v1, p1}, Lcom/samsung/android/smartclip/ISpenGestureService;->sendSmartClipRemoteRequestResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 99
    :cond_9
    return-void

    .line 95
    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_a
    move-exception v0

    .line 97
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setDisableGlobalAirBottonAppindex(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 219
    return-void
.end method

.method public setFocusWindow(I)V
    .registers 6
    .param p1, "focusSurfaceLayer"    # I

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    if-eqz v1, :cond_22

    .line 106
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFocusWindow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    invoke-interface {v1, p1}, Lcom/samsung/android/smartclip/ISpenGestureService;->setFocusWindow(I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    .line 112
    :cond_22
    return-void

    .line 109
    :catch_23
    move-exception v0

    .line 110
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
