.class public Lcom/sec/android/cover/CoverViewMediator;
.super Ljava/lang/Object;
.source "CoverViewMediator.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static mTestModeEnabled:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoverController:Lcom/sec/android/cover/BaseCoverController;

.field private mHandler:Landroid/os/Handler;

.field private mPreviewRootView:Landroid/widget/FrameLayout;

.field private mRootView:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/sec/android/cover/CoverViewMediator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/cover/CoverViewMediator;->mTestModeEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/sec/android/cover/CoverViewMediator$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/CoverViewMediator$1;-><init>(Lcom/sec/android/cover/CoverViewMediator;)V

    iput-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mHandler:Landroid/os/Handler;

    .line 166
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "CoverViewMediator is not allow default constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/widget/FrameLayout;
    .param p3, "previewRootView"    # Landroid/widget/FrameLayout;

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/sec/android/cover/CoverViewMediator$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/CoverViewMediator$1;-><init>(Lcom/sec/android/cover/CoverViewMediator;)V

    iput-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mHandler:Landroid/os/Handler;

    .line 170
    sget-object v0, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iput-object p1, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    .line 174
    iput-object p2, p0, Lcom/sec/android/cover/CoverViewMediator;->mRootView:Landroid/widget/FrameLayout;

    .line 175
    iput-object p3, p0, Lcom/sec/android/cover/CoverViewMediator;->mPreviewRootView:Landroid/widget/FrameLayout;

    .line 178
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    .line 179
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    .line 180
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    .line 181
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverBroadcastManager;

    .line 182
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/cover/CoverViewMediator;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/CoverViewMediator;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/cover/CoverViewMediator;)Lcom/sec/android/cover/BaseCoverController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/CoverViewMediator;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/cover/CoverViewMediator;Lcom/sec/android/cover/BaseCoverController;)Lcom/sec/android/cover/BaseCoverController;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/cover/CoverViewMediator;
    .param p1, "x1"    # Lcom/sec/android/cover/BaseCoverController;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/cover/CoverViewMediator;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/CoverViewMediator;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mPreviewRootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/cover/CoverViewMediator;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/cover/CoverViewMediator;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mRootView:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public injectCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 216
    sget-object v1, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cover BaseService injectCoverState :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 219
    .local v0, "msgStateUpdate":Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 220
    return-void
.end method

.method public onCoverAppCovered(Z)V
    .locals 1
    .param p1, "covered"    # Z

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->onCoverAppCovered(Z)V

    .line 252
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy : The cover service destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->onDestroy()V

    .line 194
    sget-object v0, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy : Killing SViewCover process..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 196
    return-void
.end method

.method public onStatusBarStateChanged(I)V
    .locals 1
    .param p1, "statusBarState"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/BaseCoverController;->onStatusBarStateChanged(I)V

    .line 226
    :cond_0
    return-void
.end method

.method public setCoverUiAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/BaseCoverController;->setCoverUiAlpha(F)V

    .line 248
    :cond_0
    return-void
.end method

.method public setShortcutAppOpenCallback(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;)V
    .locals 1
    .param p1, "starter"    # Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->setShortcutAppOpenCallback(Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;)V

    .line 256
    return-void
.end method

.method public showCoverOpenPopup()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    invoke-virtual {v0}, Lcom/sec/android/cover/BaseCoverController;->showCoverOpenPopup()V

    .line 236
    :cond_0
    return-void
.end method

.method public showCoverOpenPopup(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mCoverController:Lcom/sec/android/cover/BaseCoverController;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/BaseCoverController;->showCoverOpenPopup(Ljava/lang/String;)V

    .line 242
    :cond_0
    return-void
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 200
    sget-boolean v1, Lcom/sec/android/cover/CoverViewMediator;->mTestModeEnabled:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    sget-object v1, Lcom/sec/android/cover/CoverViewMediator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cover BaseService updateCoverState :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 212
    .local v0, "msgStateUpdate":Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/cover/CoverViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sec/android/cover/CoverViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimerWithInterval()V

    .line 230
    return-void
.end method
