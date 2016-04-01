.class public Lcom/samsung/android/multidisplay/virtualscreen/VirtualScreenManager;
.super Ljava/lang/Object;
.source "VirtualScreenManager.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "VirtualScreenManager"


# instance fields
.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

.field private mVirtualScreenId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, mVirtualScreenId:I

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, mContext:Ljava/lang/ref/WeakReference;

    .line 55
    const-string/jumbo v0, "virtualscreen"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    move-result-object v0

    iput-object v0, p0, mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    .line 58
    iget-object v0, p0, mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2c

    .line 59
    const-string v0, "VirtualScreenManager"

    const-string v1, "VirtualScreenManager created by Activity Context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_2b
    return-void

    .line 61
    :cond_2c
    const-string v0, "VirtualScreenManager"

    const-string v1, "VirtualScreenManager created by not Activity Context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b
.end method


# virtual methods
.method public attachToDefaultDisplay()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 178
    :try_start_1
    iget-object v2, p0, mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->moveVirtualScreenToDisplay(Ljava/lang/String;I)Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_13} :catch_15

    move-result v2

    .line 183
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_14
    return v2

    .line 180
    :catch_15
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v2, v3

    .line 183
    goto :goto_14
.end method

.method public bindVirtualScreen()Z
    .registers 5

    .prologue
    .line 137
    :try_start_0
    iget-object v2, p0, mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    iget-object v2, p0, mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-interface {v3, v1, v2}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->bindVirtualScreen(Ljava/lang/String;I)Z
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result v2

    .line 142
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_1e
    return v2

    .line 139
    :catch_1f
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 142
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method public createVirtualScreen(Landroid/graphics/Rect;)I
    .registers 4
    .param p1, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->createVirtualScreen(Landroid/graphics/Rect;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 72
    :goto_6
    return v1

    .line 69
    :catch_7
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 72
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getDisplayId()I
    .registers 9

    .prologue
    .line 188
    :try_start_0
    iget-object v5, p0, mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 189
    .local v2, "context":Landroid/content/Context;
    instance-of v5, v2, Landroid/app/Activity;

    if-eqz v5, :cond_1c

    .line 190
    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 191
    .local v1, "activity":Landroid/app/Activity;
    iget-object v5, p0, mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->getDisplayId(Landroid/os/IBinder;Ljava/lang/String;)I

    move-result v5

    .line 200
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "context":Landroid/content/Context;
    :goto_1b
    return v5

    .line 193
    .restart local v2    # "context":Landroid/content/Context;
    :cond_1c
    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, p0, mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v4}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->getDisplayId(Landroid/os/IBinder;Ljava/lang/String;)I
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_28

    move-result v5

    goto :goto_1b

    .line 197
    .end local v2    # "context":Landroid/content/Context;
    .end local v4    # "packageName":Ljava/lang/String;
    :catch_28
    move-exception v3

    .line 198
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 200
    const/4 v5, -0x1

    goto :goto_1b
.end method

.method public getOffset()Landroid/graphics/Point;
    .registers 4

    .prologue
    .line 123
    :try_start_0
    iget v1, p0, mVirtualScreenId:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_e

    .line 124
    iget-object v1, p0, mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    iget v2, p0, mVirtualScreenId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->getOffset(I)Landroid/graphics/Point;

    move-result-object v1

    .line 131
    :goto_d
    return-object v1

    .line 126
    :cond_e
    iget-object v1, p0, mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    invoke-virtual {p0}, getDisplayId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->getOffset(I)Landroid/graphics/Point;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v1

    goto :goto_d

    .line 128
    :catch_19
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 131
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    goto :goto_d
.end method

.method public getVirtualScreenSize()Landroid/graphics/Rect;
    .registers 4

    .prologue
    .line 205
    :try_start_0
    iget v1, p0, mVirtualScreenId:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_e

    .line 206
    iget-object v1, p0, mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    iget v2, p0, mVirtualScreenId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->getVirtualScreenSize(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 213
    :goto_d
    return-object v1

    .line 208
    :cond_e
    iget-object v1, p0, mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    invoke-virtual {p0}, getDisplayId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->getVirtualScreenSize(I)Landroid/graphics/Rect;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v1

    goto :goto_d

    .line 210
    :catch_19
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 213
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isMoving()Z
    .registers 4

    .prologue
    .line 218
    :try_start_0
    iget v1, p0, mVirtualScreenId:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_e

    .line 219
    iget-object v1, p0, mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    iget v2, p0, mVirtualScreenId:I

    invoke-interface {v1, v2}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->isMoving(I)Z

    move-result v1

    .line 226
    :goto_d
    return v1

    .line 221
    :cond_e
    iget-object v1, p0, mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    invoke-virtual {p0}, getDisplayId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->isMoving(I)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_19

    move-result v1

    goto :goto_d

    .line 223
    :catch_19
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 226
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public removeVirtualScreen()V
    .registers 3

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    invoke-interface {v1}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->removeVirtualScreen()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 81
    :goto_5
    return-void

    .line 78
    :catch_6
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5
.end method

.method public setOffset(II)Z
    .registers 4
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, setOffset(IIZ)Z

    move-result v0

    return v0
.end method

.method public setOffset(IIZ)Z
    .registers 12
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I
    .param p3, "force"    # Z

    .prologue
    .line 107
    :try_start_0
    iget-object v0, p0, mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_21

    .line 108
    iget-object v0, p0, mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Activity;

    .line 109
    .local v6, "activity":Landroid/app/Activity;
    iget-object v0, p0, mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    invoke-virtual {v6}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, -0x1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->setOffset(Landroid/os/IBinder;IIIZ)Z

    move-result v0

    .line 118
    .end local v6    # "activity":Landroid/app/Activity;
    :goto_20
    return v0

    .line 110
    :cond_21
    iget v0, p0, mVirtualScreenId:I

    if-lez v0, :cond_32

    .line 111
    iget-object v0, p0, mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    const/4 v1, 0x0

    iget v2, p0, mVirtualScreenId:I

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->setOffset(Landroid/os/IBinder;IIIZ)Z

    move-result v0

    goto :goto_20

    .line 113
    :cond_32
    iget-object v0, p0, mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    const/4 v1, 0x0

    invoke-virtual {p0}, getDisplayId()I

    move-result v2

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->setOffset(Landroid/os/IBinder;IIIZ)Z
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3f} :catch_41

    move-result v0

    goto :goto_20

    .line 115
    :catch_41
    move-exception v7

    .line 116
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 118
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public startActivity(Landroid/content/Intent;)I
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, startActivity(Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)I
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 89
    const-string v2, "VirtualScreenManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startActivity intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Bundle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :try_start_23
    iget-object v2, p0, mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    invoke-interface {v2, v1, p1, p2}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result v2

    iput v2, p0, mVirtualScreenId:I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_37} :catch_3a

    .line 98
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_37
    iget v2, p0, mVirtualScreenId:I

    return v2

    .line 95
    :catch_3a
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_37
.end method

.method public unBindVirtualScreen()Z
    .registers 4

    .prologue
    .line 147
    :try_start_0
    iget-object v2, p0, mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, mService:Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;

    invoke-interface {v2, v1}, Lcom/samsung/android/multidisplay/virtualscreen/IVirtualScreenManager;->unBindVirtualScreen(Ljava/lang/String;)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_13

    move-result v2

    .line 152
    .end local v1    # "packageName":Ljava/lang/String;
    :goto_12
    return v2

    .line 149
    :catch_13
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 152
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public updateDisplayOfWindow(Landroid/view/Window;I)Z
    .registers 9
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "displayId"    # I

    .prologue
    const/4 v4, 0x0

    .line 156
    if-nez p1, :cond_d

    .line 157
    const-string v3, "VirtualScreenManager"

    const-string/jumbo v5, "updateDisplayOfWindow window is null. Invalid!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 173
    :goto_c
    return v3

    .line 161
    :cond_d
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 162
    .local v1, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    iget-object v3, p0, mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-virtual {v3, p2}, Landroid/content/Context;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 165
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_30

    .line 166
    invoke-virtual {p1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerImpl;

    .line 167
    .local v2, "wm":Landroid/view/WindowManagerImpl;
    if-eqz v2, :cond_30

    .line 168
    invoke-virtual {v2, v0}, Landroid/view/WindowManagerImpl;->setDisplay(Landroid/view/Display;)V

    .line 169
    const/4 v3, 0x1

    goto :goto_c

    .end local v2    # "wm":Landroid/view/WindowManagerImpl;
    :cond_30
    move v3, v4

    .line 173
    goto :goto_c
.end method
