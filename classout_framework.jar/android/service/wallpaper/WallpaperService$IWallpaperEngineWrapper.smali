.class Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;
.super Landroid/service/wallpaper/IWallpaperEngine$Stub;
.source "WallpaperService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IWallpaperEngineWrapper"
.end annotation


# instance fields
.field private final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mConnection:Landroid/service/wallpaper/IWallpaperConnection;

.field mDisplayId:I

.field final mDisplayPadding:Landroid/graphics/Rect;

.field mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

.field final mIsPreview:Z

.field mReqHeight:I

.field mReqWidth:I

.field mShownReported:Z

.field final mWindowToken:Landroid/os/IBinder;

.field final mWindowType:I

.field final synthetic this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method constructor <init>(Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;I)V
    .registers 15
    .param p2, "context"    # Landroid/service/wallpaper/WallpaperService;
    .param p3, "conn"    # Landroid/service/wallpaper/IWallpaperConnection;
    .param p4, "windowToken"    # Landroid/os/IBinder;
    .param p5, "windowType"    # I
    .param p6, "isPreview"    # Z
    .param p7, "reqWidth"    # I
    .param p8, "reqHeight"    # I
    .param p9, "padding"    # Landroid/graphics/Rect;
    .param p10, "displayId"    # I

    .prologue
    .line 1121
    iput-object p1, p0, this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;-><init>()V

    .line 1113
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mDisplayPadding:Landroid/graphics/Rect;

    .line 1122
    new-instance v1, Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p2}, Landroid/service/wallpaper/WallpaperService;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p2, v2, p0, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v1, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 1123
    iput-object p3, p0, mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    .line 1124
    iput-object p4, p0, mWindowToken:Landroid/os/IBinder;

    .line 1125
    iput p5, p0, mWindowType:I

    .line 1126
    iput-boolean p6, p0, mIsPreview:Z

    .line 1127
    iput p7, p0, mReqWidth:I

    .line 1128
    iput p8, p0, mReqHeight:I

    .line 1129
    iget-object v1, p0, mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v1, p9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1131
    iput p10, p0, mDisplayId:I

    .line 1134
    iget-object v1, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1135
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 1136
    return-void
.end method

.method static synthetic access$200(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;
    .registers 2
    .param p0, "x0"    # Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .prologue
    .line 1102
    iget-object v0, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 4

    .prologue
    .line 1182
    iget-object v1, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1183
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 1184
    return-void
.end method

.method public dispatchPointer(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1155
    iget-object v0, p0, mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-eqz v0, :cond_a

    .line 1156
    iget-object v0, p0, mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    # invokes: Landroid/service/wallpaper/WallpaperService$Engine;->dispatchPointer(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->access$100(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V

    .line 1160
    :goto_9
    return-void

    .line 1158
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_9
.end method

.method public dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    .registers 13
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1164
    iget-object v0, p0, mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    if-eqz v0, :cond_11

    .line 1165
    iget-object v0, p0, mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/BaseIWindow;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 1167
    :cond_11
    return-void
.end method

.method public executeMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1187
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_dc

    .line 1259
    const-string v6, "WallpaperService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown message type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :goto_21
    :sswitch_21
    return-void

    .line 1190
    :sswitch_22
    :try_start_22
    iget-object v6, p0, mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    invoke-interface {v6, p0}, Landroid/service/wallpaper/IWallpaperConnection;->attachEngine(Landroid/service/wallpaper/IWallpaperEngine;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_3c

    .line 1195
    iget-object v6, p0, this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v6}, Landroid/service/wallpaper/WallpaperService;->onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;

    move-result-object v2

    .line 1196
    .local v2, "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    iput-object v2, p0, mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 1197
    iget-object v6, p0, this$0:Landroid/service/wallpaper/WallpaperService;

    # getter for: Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/service/wallpaper/WallpaperService;->access$300(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1198
    invoke-virtual {v2, p0}, Landroid/service/wallpaper/WallpaperService$Engine;->attach(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V

    goto :goto_21

    .line 1191
    .end local v2    # "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    :catch_3c
    move-exception v1

    .line 1192
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "WallpaperService"

    const-string v7, "Wallpaper host disappeared"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 1202
    .end local v1    # "e":Landroid/os/RemoteException;
    :sswitch_45
    iget-object v6, p0, this$0:Landroid/service/wallpaper/WallpaperService;

    # getter for: Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;
    invoke-static {v6}, Landroid/service/wallpaper/WallpaperService;->access$300(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1203
    iget-object v6, p0, mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v6}, Landroid/service/wallpaper/WallpaperService$Engine;->detach()V

    goto :goto_21

    .line 1207
    :sswitch_56
    iget-object v6, p0, mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7, v8}, Landroid/service/wallpaper/WallpaperService$Engine;->doDesiredSizeChanged(II)V

    goto :goto_21

    .line 1211
    :sswitch_60
    iget-object v9, p0, mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {v9, v6}, Landroid/service/wallpaper/WallpaperService$Engine;->doDisplayPaddingChanged(Landroid/graphics/Rect;)V

    .line 1214
    :sswitch_69
    const-string v6, "WallpaperService"

    const-string v9, "MSG_UPDATE_SURFACE"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget-object v6, p0, mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v6, v7, v8, v8}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    goto :goto_21

    .line 1220
    :sswitch_76
    iget-object v9, p0, mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_81

    move v6, v7

    :goto_7d
    invoke-virtual {v9, v6}, Landroid/service/wallpaper/WallpaperService$Engine;->doVisibilityChanged(Z)V

    goto :goto_21

    :cond_81
    move v6, v8

    goto :goto_7d

    .line 1223
    :sswitch_83
    iget-object v6, p0, mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v6, v7}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    goto :goto_21

    .line 1226
    :sswitch_89
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    .line 1227
    .local v0, "cmd":Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    iget-object v6, p0, mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v6, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->doCommand(Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V

    goto :goto_21

    .line 1230
    .end local v0    # "cmd":Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    :sswitch_93
    const-string v6, "WallpaperService"

    const-string v9, "MSG_WINDOW_RESIZED"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_ab

    move v4, v7

    .line 1233
    .local v4, "reportDraw":Z
    :goto_9f
    iget-object v6, p0, mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v6, v7, v8, v4}, Landroid/service/wallpaper/WallpaperService$Engine;->updateSurface(ZZZ)V

    .line 1234
    iget-object v6, p0, mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v6, v7}, Landroid/service/wallpaper/WallpaperService$Engine;->doOffsetsChanged(Z)V

    goto/16 :goto_21

    .end local v4    # "reportDraw":Z
    :cond_ab
    move v4, v8

    .line 1231
    goto :goto_9f

    .line 1240
    :sswitch_ad
    const/4 v5, 0x0

    .line 1241
    .local v5, "skip":Z
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/MotionEvent;

    .line 1242
    .local v3, "ev":Landroid/view/MotionEvent;
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_ca

    .line 1243
    iget-object v6, p0, mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v7, v6, Landroid/service/wallpaper/WallpaperService$Engine;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1244
    :try_start_be
    iget-object v6, p0, mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v6, v6, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    if-ne v6, v3, :cond_d6

    .line 1245
    iget-object v6, p0, mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    const/4 v8, 0x0

    iput-object v8, v6, Landroid/service/wallpaper/WallpaperService$Engine;->mPendingMove:Landroid/view/MotionEvent;

    .line 1250
    :goto_c9
    monitor-exit v7
    :try_end_ca
    .catchall {:try_start_be .. :try_end_ca} :catchall_d8

    .line 1252
    :cond_ca
    if-nez v5, :cond_d1

    .line 1254
    iget-object v6, p0, mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v6, v3}, Landroid/service/wallpaper/WallpaperService$Engine;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1256
    :cond_d1
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_21

    .line 1248
    :cond_d6
    const/4 v5, 0x1

    goto :goto_c9

    .line 1250
    :catchall_d8
    move-exception v6

    :try_start_d9
    monitor-exit v7
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    throw v6

    .line 1187
    nop

    :sswitch_data_dc
    .sparse-switch
        0xa -> :sswitch_22
        0x14 -> :sswitch_45
        0x1e -> :sswitch_56
        0x28 -> :sswitch_60
        0x2710 -> :sswitch_69
        0x271a -> :sswitch_76
        0x2724 -> :sswitch_83
        0x2729 -> :sswitch_89
        0x272e -> :sswitch_93
        0x2733 -> :sswitch_21
        0x2738 -> :sswitch_ad
    .end sparse-switch
.end method

.method public reportShown()V
    .registers 4

    .prologue
    .line 1170
    iget-boolean v1, p0, mShownReported:Z

    if-nez v1, :cond_c

    .line 1171
    const/4 v1, 0x1

    iput-boolean v1, p0, mShownReported:Z

    .line 1173
    :try_start_7
    iget-object v1, p0, mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    invoke-interface {v1, p0}, Landroid/service/wallpaper/IWallpaperConnection;->engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 1179
    :cond_c
    :goto_c
    return-void

    .line 1174
    :catch_d
    move-exception v0

    .line 1175
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WallpaperService"

    const-string v2, "Wallpaper host disappeared"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public setDesiredSize(II)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1139
    iget-object v1, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    .line 1140
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 1141
    return-void
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 1144
    iget-object v1, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x28

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1145
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 1146
    return-void
.end method

.method public setVisibility(Z)V
    .registers 6
    .param p1, "visible"    # Z

    .prologue
    .line 1149
    iget-object v2, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x271a

    if-eqz p1, :cond_11

    const/4 v1, 0x1

    :goto_7
    invoke-virtual {v2, v3, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 1151
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 1152
    return-void

    .line 1149
    .end local v0    # "msg":Landroid/os/Message;
    :cond_11
    const/4 v1, 0x0

    goto :goto_7
.end method
