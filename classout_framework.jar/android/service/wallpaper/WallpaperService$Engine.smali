.class public Landroid/service/wallpaper/WallpaperService$Engine;
.super Ljava/lang/Object;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/WallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Engine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;
    }
.end annotation


# instance fields
.field mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mConfiguration:Landroid/content/res/Configuration;

.field mConnection:Landroid/service/wallpaper/IWallpaperConnection;

.field final mContentInsets:Landroid/graphics/Rect;

.field mCreated:Z

.field mCurHeight:I

.field mCurWidth:I

.field mCurWindowFlags:I

.field mCurWindowPrivateFlags:I

.field mDestroyed:Z

.field final mDispatchedContentInsets:Landroid/graphics/Rect;

.field final mDispatchedOutsets:Landroid/graphics/Rect;

.field final mDispatchedOverscanInsets:Landroid/graphics/Rect;

.field final mDispatchedStableInsets:Landroid/graphics/Rect;

.field mDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayState:I

.field mDrawingAllowed:Z

.field final mFinalStableInsets:Landroid/graphics/Rect;

.field final mFinalSystemInsets:Landroid/graphics/Rect;

.field mFixedSizeAllowed:Z

.field mFormat:I

.field mHeight:I

.field mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

.field mInitializing:Z

.field mInputChannel:Landroid/view/InputChannel;

.field mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

.field mIsCreating:Z

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field final mLock:Ljava/lang/Object;

.field mOffsetMessageEnqueued:Z

.field mOffsetsChanged:Z

.field final mOutsets:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mPendingMove:Landroid/view/MotionEvent;

.field mPendingSync:Z

.field mPendingXOffset:F

.field mPendingXOffsetStep:F

.field mPendingYOffset:F

.field mPendingYOffsetStep:F

.field mReportedVisible:Z

.field mSession:Landroid/view/IWindowSession;

.field final mStableInsets:Landroid/graphics/Rect;

.field mSurfaceCreated:Z

.field final mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mType:I

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mWidth:I

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Lcom/android/internal/view/BaseIWindow;

.field mWindowFlags:I

.field mWindowPrivateFlags:I

.field mWindowToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method public constructor <init>(Landroid/service/wallpaper/WallpaperService;)V
    .registers 3

    .prologue
    .line 139
    iput-object p1, p0, this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, mInitializing:Z

    .line 165
    const/16 v0, 0x10

    iput v0, p0, mWindowFlags:I

    .line 166
    const/4 v0, 0x4

    iput v0, p0, mWindowPrivateFlags:I

    .line 168
    iget v0, p0, mWindowFlags:I

    iput v0, p0, mCurWindowFlags:I

    .line 169
    iget v0, p0, mWindowPrivateFlags:I

    iput v0, p0, mCurWindowPrivateFlags:I

    .line 170
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mVisibleInsets:Landroid/graphics/Rect;

    .line 171
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mWinFrame:Landroid/graphics/Rect;

    .line 172
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mOverscanInsets:Landroid/graphics/Rect;

    .line 173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mContentInsets:Landroid/graphics/Rect;

    .line 174
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mStableInsets:Landroid/graphics/Rect;

    .line 175
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mOutsets:Landroid/graphics/Rect;

    .line 176
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mDispatchedOverscanInsets:Landroid/graphics/Rect;

    .line 177
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mDispatchedContentInsets:Landroid/graphics/Rect;

    .line 178
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mDispatchedStableInsets:Landroid/graphics/Rect;

    .line 179
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mDispatchedOutsets:Landroid/graphics/Rect;

    .line 180
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mFinalSystemInsets:Landroid/graphics/Rect;

    .line 181
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mFinalStableInsets:Landroid/graphics/Rect;

    .line 182
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, mConfiguration:Landroid/content/res/Configuration;

    .line 184
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 202
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$1;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$1;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 281
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$2;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$2;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, mWindow:Lcom/android/internal/view/BaseIWindow;

    .line 1084
    new-instance v0, Landroid/service/wallpaper/WallpaperService$Engine$3;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/WallpaperService$Engine$3;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;)V

    iput-object v0, p0, mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method

.method static synthetic access$000(Landroid/service/wallpaper/WallpaperService$Engine;)I
    .registers 2
    .param p0, "x0"    # Landroid/service/wallpaper/WallpaperService$Engine;

    .prologue
    .line 139
    iget v0, p0, mDisplayState:I

    return v0
.end method

.method static synthetic access$100(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/MotionEvent;)V
    .registers 2
    .param p0, "x0"    # Landroid/service/wallpaper/WallpaperService$Engine;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 139
    invoke-direct {p0, p1}, dispatchPointer(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private dispatchPointer(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 595
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 596
    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 597
    :try_start_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_21

    .line 598
    iput-object p1, p0, mPendingMove:Landroid/view/MotionEvent;

    .line 602
    :goto_12
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_25

    .line 603
    iget-object v1, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x2738

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 604
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 608
    .end local v0    # "msg":Landroid/os/Message;
    :goto_20
    return-void

    .line 600
    :cond_21
    const/4 v1, 0x0

    :try_start_22
    iput-object v1, p0, mPendingMove:Landroid/view/MotionEvent;

    goto :goto_12

    .line 602
    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_25

    throw v1

    .line 606
    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_20
.end method


# virtual methods
.method attach(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)V
    .registers 6
    .param p1, "wrapper"    # Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .prologue
    const/4 v3, 0x0

    .line 878
    const-string v0, "WallpaperService"

    const-string v1, "attach"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-boolean v0, p0, mDestroyed:Z

    if-eqz v0, :cond_d

    .line 907
    :goto_c
    return-void

    .line 884
    :cond_d
    iput-object p1, p0, mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    .line 885
    # getter for: Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;
    invoke-static {p1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->access$200(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;)Lcom/android/internal/os/HandlerCaller;

    move-result-object v0

    iput-object v0, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 886
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    iput-object v0, p0, mConnection:Landroid/service/wallpaper/IWallpaperConnection;

    .line 887
    iget-object v0, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowToken:Landroid/os/IBinder;

    iput-object v0, p0, mWindowToken:Landroid/os/IBinder;

    .line 888
    iget-object v0, p0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->setSizeFromLayout()V

    .line 889
    const/4 v0, 0x1

    iput-boolean v0, p0, mInitializing:Z

    .line 890
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, mSession:Landroid/view/IWindowSession;

    .line 892
    iget-object v0, p0, mWindow:Lcom/android/internal/view/BaseIWindow;

    iget-object v1, p0, mSession:Landroid/view/IWindowSession;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    .line 894
    iget-object v0, p0, mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 896
    iget-object v0, p0, this$0:Landroid/service/wallpaper/WallpaperService;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 897
    iget-object v0, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 898
    iget-object v0, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget v1, p1, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, mDisplay:Landroid/view/Display;

    .line 899
    iget-object v0, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    iput v0, p0, mDisplayState:I

    .line 902
    iget-object v0, p0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v0}, onCreate(Landroid/view/SurfaceHolder;)V

    .line 904
    iput-boolean v3, p0, mInitializing:Z

    .line 905
    iput-boolean v3, p0, mReportedVisible:Z

    .line 906
    invoke-virtual {p0, v3, v3, v3}, updateSurface(ZZZ)V

    goto :goto_c
.end method

.method detach()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1038
    iget-boolean v0, p0, mDestroyed:Z

    if-eqz v0, :cond_7

    .line 1082
    :cond_6
    :goto_6
    return-void

    .line 1042
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, mDestroyed:Z

    .line 1044
    iget-object v0, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_15

    .line 1045
    iget-object v0, p0, mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 1048
    :cond_15
    iget-boolean v0, p0, mVisible:Z

    if-eqz v0, :cond_1e

    .line 1049
    iput-boolean v2, p0, mVisible:Z

    .line 1051
    invoke-virtual {p0, v2}, onVisibilityChanged(Z)V

    .line 1054
    :cond_1e
    invoke-virtual {p0}, reportSurfaceDestroyed()V

    .line 1057
    invoke-virtual {p0}, onDestroy()V

    .line 1059
    iget-boolean v0, p0, mCreated:Z

    if-eqz v0, :cond_6

    .line 1064
    :try_start_28
    iget-object v0, p0, mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    if-eqz v0, :cond_34

    .line 1065
    iget-object v0, p0, mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;->dispose()V

    .line 1066
    const/4 v0, 0x0

    iput-object v0, p0, mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 1069
    :cond_34
    iget-object v0, p0, mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3b} :catch_50

    .line 1072
    :goto_3b
    iget-object v0, p0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 1073
    iput-boolean v2, p0, mCreated:Z

    .line 1077
    iget-object v0, p0, mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_6

    .line 1078
    iget-object v0, p0, mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 1079
    iput-object v3, p0, mInputChannel:Landroid/view/InputChannel;

    goto :goto_6

    .line 1070
    :catch_50
    move-exception v0

    goto :goto_3b
.end method

.method doCommand(Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V
    .registers 10
    .param p1, "cmd"    # Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    .prologue
    .line 1006
    iget-boolean v0, p0, mDestroyed:Z

    if-nez v0, :cond_25

    .line 1007
    iget-object v1, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    iget v2, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->x:I

    iget v3, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->y:I

    iget v4, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->z:I

    iget-object v5, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->extras:Landroid/os/Bundle;

    iget-boolean v6, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v7

    .line 1012
    .local v7, "result":Landroid/os/Bundle;
    :goto_15
    iget-boolean v0, p1, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->sync:Z

    if-eqz v0, :cond_24

    .line 1015
    :try_start_19
    iget-object v0, p0, mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v1}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Landroid/view/IWindowSession;->wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_24} :catch_27

    .line 1019
    :cond_24
    :goto_24
    return-void

    .line 1010
    .end local v7    # "result":Landroid/os/Bundle;
    :cond_25
    const/4 v7, 0x0

    .restart local v7    # "result":Landroid/os/Bundle;
    goto :goto_15

    .line 1016
    :catch_27
    move-exception v0

    goto :goto_24
.end method

.method doDesiredSizeChanged(II)V
    .registers 4
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    .prologue
    .line 910
    iget-boolean v0, p0, mDestroyed:Z

    if-nez v0, :cond_13

    .line 913
    iget-object v0, p0, mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p1, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    .line 914
    iget-object v0, p0, mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iput p2, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    .line 915
    invoke-virtual {p0, p1, p2}, onDesiredSizeChanged(II)V

    .line 916
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, doOffsetsChanged(Z)V

    .line 918
    :cond_13
    return-void
.end method

.method doDisplayPaddingChanged(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 921
    iget-boolean v0, p0, mDestroyed:Z

    if-nez v0, :cond_1a

    .line 923
    iget-object v0, p0, mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 924
    iget-object v0, p0, mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 925
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, updateSurface(ZZZ)V

    .line 928
    :cond_1a
    return-void
.end method

.method doOffsetsChanged(Z)V
    .registers 15
    .param p1, "always"    # Z

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    .line 958
    iget-boolean v10, p0, mDestroyed:Z

    if-eqz v10, :cond_8

    .line 1002
    :cond_7
    :goto_7
    return-void

    .line 962
    :cond_8
    if-nez p1, :cond_e

    iget-boolean v10, p0, mOffsetsChanged:Z

    if-eqz v10, :cond_7

    .line 971
    :cond_e
    iget-object v10, p0, mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 972
    :try_start_11
    iget v1, p0, mPendingXOffset:F

    .line 973
    .local v1, "xOffset":F
    iget v2, p0, mPendingYOffset:F

    .line 974
    .local v2, "yOffset":F
    iget v3, p0, mPendingXOffsetStep:F

    .line 975
    .local v3, "xOffsetStep":F
    iget v4, p0, mPendingYOffsetStep:F

    .line 976
    .local v4, "yOffsetStep":F
    iget-boolean v9, p0, mPendingSync:Z

    .line 977
    .local v9, "sync":Z
    const/4 v11, 0x0

    iput-boolean v11, p0, mPendingSync:Z

    .line 978
    const/4 v11, 0x0

    iput-boolean v11, p0, mOffsetMessageEnqueued:Z

    .line 979
    monitor-exit v10
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_5c

    .line 981
    iget-boolean v10, p0, mSurfaceCreated:Z

    if-eqz v10, :cond_4c

    .line 982
    iget-boolean v10, p0, mReportedVisible:Z

    if-eqz v10, :cond_63

    .line 985
    iget-object v10, p0, mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v10, v10, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    iget v11, p0, mCurWidth:I

    sub-int v8, v10, v11

    .line 986
    .local v8, "availw":I
    if-lez v8, :cond_5f

    int-to-float v10, v8

    mul-float/2addr v10, v1

    add-float/2addr v10, v12

    float-to-int v10, v10

    neg-int v5, v10

    .line 987
    .local v5, "xPixels":I
    :goto_39
    iget-object v10, p0, mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v10, v10, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    iget v11, p0, mCurHeight:I

    sub-int v7, v10, v11

    .line 988
    .local v7, "availh":I
    if-lez v7, :cond_61

    int-to-float v0, v7

    mul-float/2addr v0, v2

    add-float/2addr v0, v12

    float-to-int v0, v0

    neg-int v6, v0

    .local v6, "yPixels":I
    :goto_48
    move-object v0, p0

    .line 989
    invoke-virtual/range {v0 .. v6}, onOffsetsChanged(FFFFII)V

    .line 995
    .end local v5    # "xPixels":I
    .end local v6    # "yPixels":I
    .end local v7    # "availh":I
    .end local v8    # "availw":I
    :cond_4c
    :goto_4c
    if-eqz v9, :cond_7

    .line 998
    :try_start_4e
    iget-object v0, p0, mSession:Landroid/view/IWindowSession;

    iget-object v10, p0, mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-virtual {v10}, Lcom/android/internal/view/BaseIWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-interface {v0, v10}, Landroid/view/IWindowSession;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_59} :catch_5a

    goto :goto_7

    .line 999
    :catch_5a
    move-exception v0

    goto :goto_7

    .line 979
    .end local v1    # "xOffset":F
    .end local v2    # "yOffset":F
    .end local v3    # "xOffsetStep":F
    .end local v4    # "yOffsetStep":F
    .end local v9    # "sync":Z
    :catchall_5c
    move-exception v0

    :try_start_5d
    monitor-exit v10
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw v0

    .restart local v1    # "xOffset":F
    .restart local v2    # "yOffset":F
    .restart local v3    # "xOffsetStep":F
    .restart local v4    # "yOffsetStep":F
    .restart local v8    # "availw":I
    .restart local v9    # "sync":Z
    :cond_5f
    move v5, v0

    .line 986
    goto :goto_39

    .restart local v5    # "xPixels":I
    .restart local v7    # "availh":I
    :cond_61
    move v6, v0

    .line 988
    goto :goto_48

    .line 991
    .end local v5    # "xPixels":I
    .end local v7    # "availh":I
    .end local v8    # "availw":I
    :cond_63
    const/4 v0, 0x1

    iput-boolean v0, p0, mOffsetsChanged:Z

    goto :goto_4c
.end method

.method doVisibilityChanged(Z)V
    .registers 3
    .param p1, "visible"    # Z

    .prologue
    .line 931
    iget-boolean v0, p0, mDestroyed:Z

    if-nez v0, :cond_9

    .line 932
    iput-boolean p1, p0, mVisible:Z

    .line 933
    invoke-virtual {p0}, reportVisibility()V

    .line 935
    :cond_9
    return-void
.end method

.method protected dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "out"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 555
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInitializing="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mInitializing:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 556
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 557
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 558
    const-string v0, " mReportedVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mReportedVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 559
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDisplay="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 560
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 561
    const-string v0, " mSurfaceCreated="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mSurfaceCreated:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 562
    const-string v0, " mIsCreating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mIsCreating:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 563
    const-string v0, " mDrawingAllowed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mDrawingAllowed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 564
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 565
    const-string v0, " mCurWidth="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mCurWidth:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 566
    const-string v0, " mHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 567
    const-string v0, " mCurHeight="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mCurHeight:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 568
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mType="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mType:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 569
    const-string v0, " mWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 570
    const-string v0, " mCurWindowFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mCurWindowFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 571
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 572
    const-string v0, " mCurWindowPrivateFlags="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mCurWindowPrivateFlags:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 573
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisibleInsets="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 575
    const-string v0, " mWinFrame="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 576
    const-string v0, " mContentInsets="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mConfiguration="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 578
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 579
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 580
    :try_start_11a
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingXOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mPendingXOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 581
    const-string v0, " mPendingXOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mPendingXOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 582
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingXOffsetStep="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 583
    iget v0, p0, mPendingXOffsetStep:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 584
    const-string v0, " mPendingXOffsetStep="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, mPendingXOffsetStep:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 585
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOffsetMessageEnqueued="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 586
    iget-boolean v0, p0, mOffsetMessageEnqueued:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 587
    const-string v0, " mPendingSync="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mPendingSync:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 588
    iget-object v0, p0, mPendingMove:Landroid/view/MotionEvent;

    if-eqz v0, :cond_174

    .line 589
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingMove="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, mPendingMove:Landroid/view/MotionEvent;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 591
    :cond_174
    monitor-exit v1

    .line 592
    return-void

    .line 591
    :catchall_176
    move-exception v0

    monitor-exit v1
    :try_end_178
    .catchall {:try_start_11a .. :try_end_178} :catchall_176

    throw v0
.end method

.method public getDesiredMinimumHeight()I
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqHeight:I

    return v0
.end method

.method public getDesiredMinimumWidth()I
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mReqWidth:I

    return v0
.end method

.method public getDisplayId()I
    .registers 4

    .prologue
    .line 392
    const-string v0, "WallpaperService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v2, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayId:I

    return v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .registers 2

    .prologue
    .line 351
    iget-object v0, p0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    return-object v0
.end method

.method public isPreview()Z
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v0, v0, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mIsPreview:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 378
    iget-boolean v0, p0, mReportedVisible:Z

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)V
    .registers 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 467
    return-void
.end method

.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "resultRequested"    # Z

    .prologue
    .line 509
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 549
    const-string v1, "WallpaperService"

    const-string/jumbo v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v1, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x272e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    .line 551
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->sendMessage(Landroid/os/Message;)V

    .line 552
    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 441
    return-void
.end method

.method public onDesiredSizeChanged(II)V
    .registers 3
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I

    .prologue
    .line 517
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 449
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .registers 7
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "xOffsetStep"    # F
    .param p4, "yOffsetStep"    # F
    .param p5, "xPixelOffset"    # I
    .param p6, "yPixelOffset"    # I

    .prologue
    .line 488
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 524
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 538
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 545
    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .registers 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 531
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 477
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2
    .param p1, "visible"    # Z

    .prologue
    .line 457
    return-void
.end method

.method reportSurfaceDestroyed()V
    .registers 7

    .prologue
    .line 1022
    iget-boolean v5, p0, mSurfaceCreated:Z

    if-eqz v5, :cond_28

    .line 1023
    const/4 v5, 0x0

    iput-boolean v5, p0, mSurfaceCreated:Z

    .line 1024
    iget-object v5, p0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 1025
    iget-object v5, p0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v5}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v2

    .line 1026
    .local v2, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v2, :cond_23

    .line 1027
    move-object v0, v2

    .local v0, "arr$":[Landroid/view/SurfaceHolder$Callback;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_17
    if-ge v3, v4, :cond_23

    aget-object v1, v0, v3

    .line 1028
    .local v1, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v5, p0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v1, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1027
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 1033
    .end local v0    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v1    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_23
    iget-object v5, p0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {p0, v5}, onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1035
    .end local v2    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_28
    return-void
.end method

.method reportVisibility()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 938
    iget-boolean v1, p0, mDestroyed:Z

    if-nez v1, :cond_26

    .line 939
    iget-object v1, p0, mDisplay:Landroid/view/Display;

    if-nez v1, :cond_27

    move v1, v2

    :goto_b
    iput v1, p0, mDisplayState:I

    .line 940
    iget-boolean v1, p0, mVisible:Z

    if-eqz v1, :cond_2e

    iget v1, p0, mDisplayState:I

    if-eq v1, v0, :cond_2e

    .line 941
    .local v0, "visible":Z
    :goto_15
    iget-boolean v1, p0, mReportedVisible:Z

    if-eq v1, v0, :cond_26

    .line 942
    iput-boolean v0, p0, mReportedVisible:Z

    .line 945
    if-eqz v0, :cond_23

    .line 949
    invoke-virtual {p0, v2}, doOffsetsChanged(Z)V

    .line 950
    invoke-virtual {p0, v2, v2, v2}, updateSurface(ZZZ)V

    .line 952
    :cond_23
    invoke-virtual {p0, v0}, onVisibilityChanged(Z)V

    .line 955
    .end local v0    # "visible":Z
    :cond_26
    return-void

    .line 939
    :cond_27
    iget-object v1, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    goto :goto_b

    :cond_2e
    move v0, v2

    .line 940
    goto :goto_15
.end method

.method public setFixedSizeAllowed(Z)V
    .registers 2
    .param p1, "allowed"    # Z

    .prologue
    .line 433
    iput-boolean p1, p0, mFixedSizeAllowed:Z

    .line 434
    return-void
.end method

.method public setOffsetNotificationsEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 421
    if-eqz p1, :cond_11

    iget v0, p0, mWindowPrivateFlags:I

    or-int/lit8 v0, v0, 0x4

    :goto_7
    iput v0, p0, mWindowPrivateFlags:I

    .line 426
    iget-boolean v0, p0, mCreated:Z

    if-eqz v0, :cond_10

    .line 427
    invoke-virtual {p0, v1, v1, v1}, updateSurface(ZZZ)V

    .line 429
    :cond_10
    return-void

    .line 421
    :cond_11
    iget v0, p0, mWindowPrivateFlags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_7
.end method

.method public setTouchEventsEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 404
    if-eqz p1, :cond_11

    iget v0, p0, mWindowFlags:I

    and-int/lit8 v0, v0, -0x11

    :goto_7
    iput v0, p0, mWindowFlags:I

    .line 407
    iget-boolean v0, p0, mCreated:Z

    if-eqz v0, :cond_10

    .line 408
    invoke-virtual {p0, v1, v1, v1}, updateSurface(ZZZ)V

    .line 410
    :cond_10
    return-void

    .line 404
    :cond_11
    iget v0, p0, mWindowFlags:I

    or-int/lit8 v0, v0, 0x10

    goto :goto_7
.end method

.method updateSurface(ZZZ)V
    .registers 46
    .param p1, "forceRelayout"    # Z
    .param p2, "forceReport"    # Z
    .param p3, "redrawNeeded"    # Z

    .prologue
    .line 611
    const-string v2, "WallpaperService"

    const-string/jumbo v3, "updateSurface"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    move-object/from16 v0, p0

    iget-boolean v2, v0, mDestroyed:Z

    if-eqz v2, :cond_15

    .line 613
    const-string v2, "WallpaperService"

    const-string v3, "Ignoring updateSurface: destroyed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_15
    const/16 v25, 0x0

    .line 617
    .local v25, "fixedSize":Z
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedWidth()I

    move-result v34

    .line 618
    .local v34, "myWidth":I
    if-gtz v34, :cond_22c

    const/16 v34, -0x1

    .line 620
    :goto_23
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedHeight()I

    move-result v33

    .line 621
    .local v33, "myHeight":I
    if-gtz v33, :cond_230

    const/16 v33, -0x1

    .line 624
    :goto_2f
    move-object/from16 v0, p0

    iget-boolean v2, v0, mCreated:Z

    if-nez v2, :cond_234

    const/16 v23, 0x1

    .line 625
    .local v23, "creating":Z
    :goto_37
    move-object/from16 v0, p0

    iget-boolean v2, v0, mSurfaceCreated:Z

    if-nez v2, :cond_238

    const/16 v38, 0x1

    .line 626
    .local v38, "surfaceCreating":Z
    :goto_3f
    move-object/from16 v0, p0

    iget v2, v0, mFormat:I

    move-object/from16 v0, p0

    iget-object v3, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v3

    if-eq v2, v3, :cond_23c

    const/16 v27, 0x1

    .line 627
    .local v27, "formatChanged":Z
    :goto_4f
    move-object/from16 v0, p0

    iget v2, v0, mWidth:I

    move/from16 v0, v34

    if-ne v2, v0, :cond_5f

    move-object/from16 v0, p0

    iget v2, v0, mHeight:I

    move/from16 v0, v33

    if-eq v2, v0, :cond_240

    :cond_5f
    const/16 v37, 0x1

    .line 628
    .local v37, "sizeChanged":Z
    :goto_61
    move-object/from16 v0, p0

    iget-boolean v2, v0, mCreated:Z

    if-nez v2, :cond_244

    const/16 v31, 0x1

    .line 629
    .local v31, "insetsChanged":Z
    :goto_69
    move-object/from16 v0, p0

    iget v2, v0, mType:I

    move-object/from16 v0, p0

    iget-object v3, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v3

    if-eq v2, v3, :cond_248

    const/16 v39, 0x1

    .line 630
    .local v39, "typeChanged":Z
    :goto_79
    move-object/from16 v0, p0

    iget v2, v0, mCurWindowFlags:I

    move-object/from16 v0, p0

    iget v3, v0, mWindowFlags:I

    if-ne v2, v3, :cond_8d

    move-object/from16 v0, p0

    iget v2, v0, mCurWindowPrivateFlags:I

    move-object/from16 v0, p0

    iget v3, v0, mWindowPrivateFlags:I

    if-eq v2, v3, :cond_24c

    :cond_8d
    const/16 v26, 0x1

    .line 632
    .local v26, "flagsChanged":Z
    :goto_8f
    if-nez p1, :cond_a7

    if-nez v23, :cond_a7

    if-nez v38, :cond_a7

    if-nez v27, :cond_a7

    if-nez v37, :cond_a7

    if-nez v39, :cond_a7

    if-nez v26, :cond_a7

    if-nez p3, :cond_a7

    move-object/from16 v0, p0

    iget-object v2, v0, mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-boolean v2, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mShownReported:Z

    if-nez v2, :cond_22b

    .line 636
    :cond_a7
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Changes: creating="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " format="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, mWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SurfaceWidth:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, mHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SurfaceHeigh:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :try_start_11c
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, mWidth:I

    .line 641
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, mHeight:I

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedFormat()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mFormat:I

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getRequestedType()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mType:I

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v34

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    move/from16 v0, v33

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, mFormat:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 652
    move-object/from16 v0, p0

    iget v2, v0, mWindowFlags:I

    move-object/from16 v0, p0

    iput v2, v0, mCurWindowFlags:I

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, mWindowFlags:I

    or-int/lit16 v3, v3, 0x200

    or-int/lit16 v3, v3, 0x100

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 658
    move-object/from16 v0, p0

    iget v2, v0, mWindowPrivateFlags:I

    move-object/from16 v0, p0

    iput v2, v0, mCurWindowPrivateFlags:I

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, mWindowPrivateFlags:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v3, v0, mType:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, mWindowToken:Landroid/os/IBinder;

    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 664
    move-object/from16 v0, p0

    iget-boolean v2, v0, mCreated:Z

    if-nez v2, :cond_268

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/service/wallpaper/WallpaperService;

    sget-object v3, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v2, v3}, Landroid/service/wallpaper/WallpaperService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v41

    .line 668
    .local v41, "windowStyle":Landroid/content/res/TypedArray;
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    .line 671
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget v3, v3, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mWindowType:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x800033

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    const v3, 0x10302ea

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 676
    new-instance v2, Landroid/view/InputChannel;

    invoke-direct {v2}, Landroid/view/InputChannel;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, mInputChannel:Landroid/view/InputChannel;

    .line 677
    move-object/from16 v0, p0

    iget-object v2, v0, mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, mWindow:Lcom/android/internal/view/BaseIWindow;

    iget v4, v4, Lcom/android/internal/view/BaseIWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v5, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, mOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, mInputChannel:Landroid/view/InputChannel;

    invoke-interface/range {v2 .. v11}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InputChannel;)I

    move-result v2

    if-gez v2, :cond_250

    .line 680
    const-string v2, "WallpaperService"

    const-string v3, "Failed to add window while updating wallpaper surface."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    .end local v41    # "windowStyle":Landroid/content/res/TypedArray;
    :cond_22b
    :goto_22b
    return-void

    .line 619
    .end local v23    # "creating":Z
    .end local v26    # "flagsChanged":Z
    .end local v27    # "formatChanged":Z
    .end local v31    # "insetsChanged":Z
    .end local v33    # "myHeight":I
    .end local v37    # "sizeChanged":Z
    .end local v38    # "surfaceCreating":Z
    .end local v39    # "typeChanged":Z
    :cond_22c
    const/16 v25, 0x1

    goto/16 :goto_23

    .line 622
    .restart local v33    # "myHeight":I
    :cond_230
    const/16 v25, 0x1

    goto/16 :goto_2f

    .line 624
    :cond_234
    const/16 v23, 0x0

    goto/16 :goto_37

    .line 625
    .restart local v23    # "creating":Z
    :cond_238
    const/16 v38, 0x0

    goto/16 :goto_3f

    .line 626
    .restart local v38    # "surfaceCreating":Z
    :cond_23c
    const/16 v27, 0x0

    goto/16 :goto_4f

    .line 627
    .restart local v27    # "formatChanged":Z
    :cond_240
    const/16 v37, 0x0

    goto/16 :goto_61

    .line 628
    .restart local v37    # "sizeChanged":Z
    :cond_244
    const/16 v31, 0x0

    goto/16 :goto_69

    .line 629
    .restart local v31    # "insetsChanged":Z
    :cond_248
    const/16 v39, 0x0

    goto/16 :goto_79

    .line 630
    .restart local v39    # "typeChanged":Z
    :cond_24c
    const/16 v26, 0x0

    goto/16 :goto_8f

    .line 683
    .restart local v26    # "flagsChanged":Z
    .restart local v41    # "windowStyle":Landroid/content/res/TypedArray;
    :cond_250
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mCreated:Z

    .line 685
    new-instance v2, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    move-object/from16 v0, p0

    iget-object v3, v0, mInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;-><init>(Landroid/service/wallpaper/WallpaperService$Engine;Landroid/view/InputChannel;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mInputEventReceiver:Landroid/service/wallpaper/WallpaperService$Engine$WallpaperInputEventReceiver;

    .line 689
    .end local v41    # "windowStyle":Landroid/content/res/TypedArray;
    :cond_268
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 690
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mDrawingAllowed:Z

    .line 693
    if-nez v25, :cond_4c3

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v3, v3, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, mOutsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, mOutsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 697
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v4, v0, mOutsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, mOutsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 703
    :goto_2cb
    new-instance v18, Landroid/graphics/PointF;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/PointF;-><init>()V

    .line 705
    .local v18, "outScale":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v2, v0, mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, mWindow:Lcom/android/internal/view/BaseIWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, mWindow:Lcom/android/internal/view/BaseIWindow;

    iget v4, v4, Lcom/android/internal/view/BaseIWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v5, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v6, v0, mWidth:I

    move-object/from16 v0, p0

    iget v7, v0, mHeight:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, mOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    invoke-interface/range {v2 .. v19}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;Landroid/graphics/PointF;Landroid/graphics/Rect;)I

    move-result v36

    .line 715
    .local v36, "relayoutResult":I
    move-object/from16 v0, p0

    iget-object v2, v0, mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v40

    .line 716
    .local v40, "w":I
    move-object/from16 v0, p0

    iget-object v2, v0, mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v28

    .line 718
    .local v28, "h":I
    if-nez v25, :cond_407

    .line 719
    move-object/from16 v0, p0

    iget-object v2, v0, mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    iget-object v0, v2, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->mDisplayPadding:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    .line 720
    .local v35, "padding":Landroid/graphics/Rect;
    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v35

    iget v3, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, mOutsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, mOutsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int v40, v40, v2

    .line 721
    move-object/from16 v0, v35

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v35

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, mOutsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, mOutsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    add-int v28, v28, v2

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, mOverscanInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, mOverscanInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, mOverscanInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, mOverscanInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, mContentInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, mContentInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, mContentInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, mContentInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, mStableInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, mStableInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, mStableInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, mStableInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v35

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 736
    .end local v35    # "padding":Landroid/graphics/Rect;
    :cond_407
    move-object/from16 v0, p0

    iget v2, v0, mCurWidth:I

    move/from16 v0, v40

    if-eq v2, v0, :cond_417

    .line 737
    const/16 v37, 0x1

    .line 738
    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, mCurWidth:I

    .line 740
    :cond_417
    move-object/from16 v0, p0

    iget v2, v0, mCurHeight:I

    move/from16 v0, v28

    if-eq v2, v0, :cond_427

    .line 741
    const/16 v37, 0x1

    .line 742
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, mCurHeight:I

    .line 745
    :cond_427
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wallpaper size has changed: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, mCurWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, mCurHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    move-object/from16 v0, p0

    iget-object v2, v0, mDispatchedOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d2

    const/4 v2, 0x1

    :goto_466
    or-int v31, v31, v2

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, mDispatchedContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d4

    const/4 v2, 0x1

    :goto_477
    or-int v31, v31, v2

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, mDispatchedStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d6

    const/4 v2, 0x1

    :goto_488
    or-int v31, v31, v2

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, mDispatchedOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d8

    const/4 v2, 0x1

    :goto_499
    or-int v31, v31, v2

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move/from16 v0, v40

    move/from16 v1, v28

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 755
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v2, v2, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_4da

    .line 756
    invoke-virtual/range {p0 .. p0}, reportSurfaceDestroyed()V

    goto/16 :goto_22b

    .line 869
    .end local v18    # "outScale":Landroid/graphics/PointF;
    .end local v28    # "h":I
    .end local v36    # "relayoutResult":I
    .end local v40    # "w":I
    :catch_4c0
    move-exception v2

    goto/16 :goto_22b

    .line 700
    :cond_4c3
    move-object/from16 v0, p0

    iget-object v2, v0, mLayout:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_4d0
    .catch Landroid/os/RemoteException; {:try_start_11c .. :try_end_4d0} :catch_4c0

    goto/16 :goto_2cb

    .line 747
    .restart local v18    # "outScale":Landroid/graphics/PointF;
    .restart local v28    # "h":I
    .restart local v36    # "relayoutResult":I
    .restart local v40    # "w":I
    :cond_4d2
    const/4 v2, 0x0

    goto :goto_466

    .line 748
    :cond_4d4
    const/4 v2, 0x0

    goto :goto_477

    .line 749
    :cond_4d6
    const/4 v2, 0x0

    goto :goto_488

    .line 750
    :cond_4d8
    const/4 v2, 0x0

    goto :goto_499

    .line 761
    :cond_4da
    const/16 v24, 0x0

    .line 764
    .local v24, "didSurface":Z
    :try_start_4dc
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 766
    if-eqz v38, :cond_51c

    .line 767
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsCreating:Z

    .line 768
    const/16 v24, 0x1

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v22

    .line 773
    .local v22, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v22, :cond_51c

    .line 774
    move-object/from16 v20, v22

    .local v20, "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v32, v0

    .local v32, "len$":I
    const/16 v29, 0x0

    .local v29, "i$":I
    :goto_508
    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_51c

    aget-object v21, v20, v29

    .line 775
    .local v21, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 774
    add-int/lit8 v29, v29, 0x1

    goto :goto_508

    .line 780
    .end local v20    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v21    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v22    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v29    # "i$":I
    .end local v32    # "len$":I
    :cond_51c
    if-nez v23, :cond_522

    and-int/lit8 v2, v36, 0x2

    if-eqz v2, :cond_5cc

    :cond_522
    const/4 v2, 0x1

    :goto_523
    or-int p3, p3, v2

    .line 783
    if-nez p2, :cond_52f

    if-nez v23, :cond_52f

    if-nez v38, :cond_52f

    if-nez v27, :cond_52f

    if-eqz v37, :cond_5cf

    .line 792
    :cond_52f
    const-string v2, "WallpaperService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSurfaceChanged("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, mFormat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, mCurWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, mCurHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/16 v24, 0x1

    .line 797
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget v3, v0, mFormat:I

    move-object/from16 v0, p0

    iget v4, v0, mCurWidth:I

    move-object/from16 v0, p0

    iget v5, v0, mCurHeight:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 799
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v22

    .line 800
    .restart local v22    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v22, :cond_5cf

    .line 801
    move-object/from16 v20, v22

    .restart local v20    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v32, v0

    .restart local v32    # "len$":I
    const/16 v29, 0x0

    .restart local v29    # "i$":I
    :goto_5ac
    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_5cf

    aget-object v21, v20, v29

    .line 802
    .restart local v21    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget v3, v0, mFormat:I

    move-object/from16 v0, p0

    iget v4, v0, mCurWidth:I

    move-object/from16 v0, p0

    iget v5, v0, mCurHeight:I

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 801
    add-int/lit8 v29, v29, 0x1

    goto :goto_5ac

    .line 780
    .end local v20    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v21    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v22    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v29    # "i$":I
    .end local v32    # "len$":I
    :cond_5cc
    const/4 v2, 0x0

    goto/16 :goto_523

    .line 808
    :cond_5cf
    if-eqz v31, :cond_676

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, mDispatchedOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, mDispatchedOverscanInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, mOutsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, mDispatchedOverscanInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, mOutsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, mDispatchedOverscanInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v4, v0, mOutsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, mDispatchedOverscanInsets:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v4, v0, mOutsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 814
    move-object/from16 v0, p0

    iget-object v2, v0, mDispatchedContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, mDispatchedStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, mDispatchedOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 817
    move-object/from16 v0, p0

    iget-object v2, v0, mFinalSystemInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, mDispatchedOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, mFinalStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, mDispatchedStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 819
    new-instance v30, Landroid/view/WindowInsets;

    move-object/from16 v0, p0

    iget-object v2, v0, mFinalSystemInsets:Landroid/graphics/Rect;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, mFinalStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v5}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v5

    move-object/from16 v0, v30

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 825
    .local v30, "insets":Landroid/view/WindowInsets;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, onApplyWindowInsets(Landroid/view/WindowInsets;)V

    .line 828
    .end local v30    # "insets":Landroid/view/WindowInsets;
    :cond_676
    if-eqz p3, :cond_6b0

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v22

    .line 831
    .restart local v22    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v22, :cond_6b0

    .line 832
    move-object/from16 v20, v22

    .restart local v20    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v32, v0

    .restart local v32    # "len$":I
    const/16 v29, 0x0

    .restart local v29    # "i$":I
    :goto_694
    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_6b0

    aget-object v21, v20, v29

    .line 833
    .restart local v21    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v21

    instance-of v2, v0, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v2, :cond_6ad

    .line 834
    check-cast v21, Landroid/view/SurfaceHolder$Callback2;

    .end local v21    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v2, v0, mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 832
    :cond_6ad
    add-int/lit8 v29, v29, 0x1

    goto :goto_694

    .line 841
    .end local v20    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v22    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v29    # "i$":I
    .end local v32    # "len$":I
    :cond_6b0
    if-eqz v24, :cond_6ca

    move-object/from16 v0, p0

    iget-boolean v2, v0, mReportedVisible:Z

    if-nez v2, :cond_6ca

    .line 847
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsCreating:Z

    if-eqz v2, :cond_6c4

    .line 854
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, onVisibilityChanged(Z)V

    .line 858
    :cond_6c4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, onVisibilityChanged(Z)V
    :try_end_6ca
    .catchall {:try_start_4dc .. :try_end_6ca} :catchall_6ea

    .line 862
    :cond_6ca
    const/4 v2, 0x0

    :try_start_6cb
    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsCreating:Z

    .line 863
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mSurfaceCreated:Z

    .line 864
    if-eqz p3, :cond_6e1

    .line 865
    move-object/from16 v0, p0

    iget-object v2, v0, mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 867
    :cond_6e1
    move-object/from16 v0, p0

    iget-object v2, v0, mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->reportShown()V

    goto/16 :goto_22b

    .line 862
    :catchall_6ea
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, mIsCreating:Z

    .line 863
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, mSurfaceCreated:Z

    .line 864
    if-eqz p3, :cond_702

    .line 865
    move-object/from16 v0, p0

    iget-object v3, v0, mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, mWindow:Lcom/android/internal/view/BaseIWindow;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 867
    :cond_702
    move-object/from16 v0, p0

    iget-object v3, v0, mIWallpaperEngine:Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;

    invoke-virtual {v3}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->reportShown()V

    throw v2
    :try_end_70a
    .catch Landroid/os/RemoteException; {:try_start_6cb .. :try_end_70a} :catch_4c0
.end method
