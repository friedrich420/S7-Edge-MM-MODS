.class public Lcom/android/systemui/recents/Recents;
.super Lcom/android/systemui/SystemUI;
.source "Recents.java"

# interfaces
.implements Lcom/android/systemui/RecentsComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/Recents$AnimationStartedListener;,
        Lcom/android/systemui/recents/Recents$TransitionStartedListener;,
        Lcom/android/systemui/recents/Recents$RecentsOwnerEventProxyReceiver;,
        Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;,
        Lcom/android/systemui/recents/Recents$ProxyCallOptions;
    }
.end annotation


# static fields
.field private static mRecentsProcessType:I

.field static mRecentsVisible:Z

.field static sInstance:Lcom/android/systemui/recents/Recents;

.field static sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

.field static sInstanceLoadPlans:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;",
            ">;"
        }
    .end annotation
.end field

.field static sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;


# instance fields
.field mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

.field mBootCompleted:Z

.field mCanReuseTaskStackViews:Z

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mConnection:Landroid/content/ServiceConnection;

.field mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field private mFlipFont:I

.field private mFontScale:F

.field mHandler:Landroid/os/Handler;

.field mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

.field mHeaderBarLand:Lcom/android/systemui/recents/views/TaskViewHeader;

.field final mHeaderBarLock:Ljava/lang/Object;

.field mHeaderBarPort:Lcom/android/systemui/recents/views/TaskViewHeader;

.field mInflater:Landroid/view/LayoutInflater;

.field mLastToggleTime:J

.field private mMainStartedListener:Lcom/android/systemui/recents/Recents$AnimationStartedListener;

.field mNavBarHeight:I

.field mNavBarWidth:I

.field mProxyBroadcastReceiver:Lcom/android/systemui/recents/Recents$RecentsOwnerEventProxyReceiver;

.field mRecentsService:Lcom/android/systemui/recents/IRecentsService;

.field mStatusBarHeight:I

.field private mSubStartedListener:Lcom/android/systemui/recents/Recents$AnimationStartedListener;

.field mSystemInsets:Landroid/graphics/Rect;

.field mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTaskStackListener:Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;

.field mThumbnailTransitionBitmapCache:Landroid/graphics/Bitmap;

.field mThumbnailTransitionBitmapCacheKey:Lcom/android/systemui/recents/model/Task;

.field mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field mTriggeredFromAltTab:Z

.field mWindowRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 244
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlans:Landroid/util/SparseArray;

    .line 256
    sput-boolean v1, Lcom/android/systemui/recents/Recents;->mRecentsVisible:Z

    .line 293
    sput v1, Lcom/android/systemui/recents/Recents;->mRecentsProcessType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 301
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 258
    iput-boolean v2, p0, Lcom/android/systemui/recents/Recents;->mCanReuseTaskStackViews:Z

    .line 265
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    .line 266
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 267
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemInsets:Landroid/graphics/Rect;

    .line 268
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 279
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mHeaderBarLock:Ljava/lang/Object;

    .line 297
    new-instance v0, Lcom/android/systemui/recents/Recents$AnimationStartedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/Recents$AnimationStartedListener;-><init>(Lcom/android/systemui/recents/Recents;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mMainStartedListener:Lcom/android/systemui/recents/Recents$AnimationStartedListener;

    .line 298
    new-instance v0, Lcom/android/systemui/recents/Recents$AnimationStartedListener;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/recents/Recents$AnimationStartedListener;-><init>(Lcom/android/systemui/recents/Recents;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mSubStartedListener:Lcom/android/systemui/recents/Recents$AnimationStartedListener;

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mRecentsService:Lcom/android/systemui/recents/IRecentsService;

    .line 421
    new-instance v0, Lcom/android/systemui/recents/Recents$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/Recents$1;-><init>(Lcom/android/systemui/recents/Recents;)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mConnection:Landroid/content/ServiceConnection;

    .line 302
    return-void
.end method

.method private bindRecentsService()V
    .locals 4

    .prologue
    .line 414
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mRecentsService:Lcom/android/systemui/recents/IRecentsService;

    if-eqz v1, :cond_0

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/recents/RecentsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 418
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public static consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 2

    .prologue
    .line 1618
    sget-object v0, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 1619
    .local v0, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 1620
    return-object v0
.end method

.method static createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 330
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 334
    return-object v0
.end method

.method public static getInstanceAndStartIfNeeded(Landroid/content/Context;)Lcom/android/systemui/recents/Recents;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/recents/Recents;->getInstanceAndStartIfNeeded(Landroid/content/Context;I)Lcom/android/systemui/recents/Recents;

    move-result-object v0

    return-object v0
.end method

.method public static getInstanceAndStartIfNeeded(Landroid/content/Context;I)Lcom/android/systemui/recents/Recents;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "recentsProcessType"    # I

    .prologue
    .line 316
    sget-object v0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    if-nez v0, :cond_0

    .line 318
    sput p1, Lcom/android/systemui/recents/Recents;->mRecentsProcessType:I

    .line 320
    new-instance v0, Lcom/android/systemui/recents/Recents;

    invoke-direct {v0}, Lcom/android/systemui/recents/Recents;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    .line 321
    sget-object v0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    iput-object p0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 322
    sget-object v0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    invoke-virtual {v0}, Lcom/android/systemui/recents/Recents;->start()V

    .line 323
    sget-object v0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    invoke-virtual {v0}, Lcom/android/systemui/recents/Recents;->onBootCompleted()V

    .line 325
    :cond_0
    sget-object v0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    return-object v0
.end method

.method private handleProxyCall(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 743
    new-instance v0, Lcom/android/systemui/recents/Recents$ProxyCallOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/Recents$ProxyCallOptions;-><init>(Lcom/android/systemui/recents/Recents$1;)V

    .line 744
    .local v0, "options":Lcom/android/systemui/recents/Recents$ProxyCallOptions;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/Recents;->handleProxyCall(ILcom/android/systemui/recents/Recents$ProxyCallOptions;)V

    .line 745
    return-void
.end method

.method private handleProxyCall(ILcom/android/systemui/recents/Recents$ProxyCallOptions;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "options"    # Lcom/android/systemui/recents/Recents$ProxyCallOptions;

    .prologue
    const/4 v7, 0x1

    .line 748
    const/4 v3, 0x0

    .line 749
    .local v3, "proxyCallToRecentsService":Z
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v2

    .line 751
    .local v2, "isForegroundUserOwner":Z
    const-string v4, "Recents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleProxyCall type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    sget-boolean v4, Lcom/android/systemui/recents/Constants$Features;->UseRecentsSeparatedProcess:Z

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    sget v4, Lcom/android/systemui/recents/Recents;->mRecentsProcessType:I

    if-nez v4, :cond_0

    .line 770
    const/4 v3, 0x1

    .line 773
    :cond_0
    if-eqz v3, :cond_3

    .line 774
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mRecentsService:Lcom/android/systemui/recents/IRecentsService;

    if-nez v4, :cond_2

    .line 776
    const-string v4, "Recents"

    const-string v5, "No connection with RecentsService, try to bind"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->bindRecentsService()V

    .line 779
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 780
    const-string v4, "GATE"

    const-string v5, "<GATE-M> TASK_MGR_LAUNCH_FAILED </GATE-M>"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 785
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 791
    :pswitch_1
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mRecentsService:Lcom/android/systemui/recents/IRecentsService;

    iget-boolean v5, p2, Lcom/android/systemui/recents/Recents$ProxyCallOptions;->triggeredFromAltTab:Z

    invoke-interface {v4, v5}, Lcom/android/systemui/recents/IRecentsService;->showRecents(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 815
    :catch_0
    move-exception v0

    .line 816
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 794
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_2
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mRecentsService:Lcom/android/systemui/recents/IRecentsService;

    iget-boolean v5, p2, Lcom/android/systemui/recents/Recents$ProxyCallOptions;->triggeredFromAltTab:Z

    iget-boolean v6, p2, Lcom/android/systemui/recents/Recents$ProxyCallOptions;->triggeredFromHomeKey:Z

    invoke-interface {v4, v5, v6}, Lcom/android/systemui/recents/IRecentsService;->hideRecents(ZZ)V

    goto :goto_0

    .line 798
    :pswitch_3
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mRecentsService:Lcom/android/systemui/recents/IRecentsService;

    invoke-interface {v4}, Lcom/android/systemui/recents/IRecentsService;->toggleRecents()V

    goto :goto_0

    .line 801
    :pswitch_4
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mRecentsService:Lcom/android/systemui/recents/IRecentsService;

    invoke-interface {v4}, Lcom/android/systemui/recents/IRecentsService;->preloadRecents()V

    goto :goto_0

    .line 804
    :pswitch_5
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mRecentsService:Lcom/android/systemui/recents/IRecentsService;

    invoke-interface {v4}, Lcom/android/systemui/recents/IRecentsService;->configurationChanged()V

    goto :goto_0

    .line 809
    :pswitch_6
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mRecentsService:Lcom/android/systemui/recents/IRecentsService;

    invoke-interface {v4}, Lcom/android/systemui/recents/IRecentsService;->showNextAffiliatedTask()V

    goto :goto_0

    .line 812
    :pswitch_7
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mRecentsService:Lcom/android/systemui/recents/IRecentsService;

    invoke-interface {v4}, Lcom/android/systemui/recents/IRecentsService;->showPrevAffiliatedTask()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 819
    :cond_3
    if-eqz v2, :cond_4

    .line 820
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 822
    :pswitch_8
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->onStart()V

    goto :goto_0

    .line 825
    :pswitch_9
    iget-boolean v4, p2, Lcom/android/systemui/recents/Recents$ProxyCallOptions;->triggeredFromAltTab:Z

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/Recents;->showRecentsInternal(Z)V

    goto :goto_0

    .line 828
    :pswitch_a
    iget-boolean v4, p2, Lcom/android/systemui/recents/Recents$ProxyCallOptions;->triggeredFromAltTab:Z

    iget-boolean v5, p2, Lcom/android/systemui/recents/Recents$ProxyCallOptions;->triggeredFromHomeKey:Z

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/recents/Recents;->hideRecentsInternal(ZZ)V

    goto :goto_0

    .line 832
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->toggleRecentsInternal()V

    goto :goto_0

    .line 835
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->preloadRecentsInternal()V

    goto :goto_0

    .line 838
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->configurationChanged()V

    goto :goto_0

    .line 844
    :pswitch_e
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string v5, "overview_affiliated_task_next"

    invoke-static {v4, v5, v7}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 845
    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/Recents;->showRelativeAffiliatedTask(Z)V

    goto :goto_0

    .line 849
    :pswitch_f
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string v5, "overview_affiliated_task_prev"

    invoke-static {v4, v5, v7}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 850
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/Recents;->showRelativeAffiliatedTask(Z)V

    goto :goto_0

    .line 854
    :cond_4
    const/4 v1, 0x0

    .line 855
    .local v1, "intent":Landroid/content/Intent;
    packed-switch p1, :pswitch_data_2

    .line 884
    :goto_1
    if-eqz v1, :cond_1

    .line 885
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 857
    :pswitch_10
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->onStart()V

    goto :goto_1

    .line 860
    :pswitch_11
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string v5, "com.android.systemui.recents.action.SHOW_RECENTS_FOR_USER"

    invoke-static {v4, v5}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 862
    const-string v4, "triggeredFromAltTab"

    iget-boolean v5, p2, Lcom/android/systemui/recents/Recents$ProxyCallOptions;->triggeredFromAltTab:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 865
    :pswitch_12
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string v5, "com.android.systemui.recents.action.HIDE_RECENTS_FOR_USER"

    invoke-static {v4, v5}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 867
    const-string v4, "triggeredFromAltTab"

    iget-boolean v5, p2, Lcom/android/systemui/recents/Recents$ProxyCallOptions;->triggeredFromAltTab:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 868
    const-string v4, "triggeredFromHomeKey"

    iget-boolean v5, p2, Lcom/android/systemui/recents/Recents$ProxyCallOptions;->triggeredFromHomeKey:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 871
    :pswitch_13
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string v5, "com.android.systemui.recents.action.TOGGLE_RECENTS_FOR_USER"

    invoke-static {v4, v5}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 873
    goto :goto_1

    .line 875
    :pswitch_14
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string v5, "com.android.systemui.recents.action.PRELOAD_RECENTS_FOR_USER"

    invoke-static {v4, v5}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 877
    goto :goto_1

    .line 879
    :pswitch_15
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string v5, "com.android.systemui.recents.action.CONFIG_CHANGED_FOR_USER"

    invoke-static {v4, v5}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_1

    .line 785
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 820
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 855
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1610
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p2, "visible"    # Z
    .annotation build Lcom/android/systemui/recents/ProxyFromAnyToPrimaryUser;
    .end annotation

    .prologue
    .line 1567
    invoke-virtual {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/systemui/recents/Recents;->mRecentsProcessType:I

    if-nez v1, :cond_0

    .line 1568
    invoke-static {p2}, Lcom/android/systemui/recents/Recents;->visibilityChanged(Z)V

    .line 1578
    :goto_0
    return-void

    .line 1571
    :cond_0
    sput-boolean p2, Lcom/android/systemui/recents/Recents;->mRecentsVisible:Z

    .line 1573
    const-string v1, "action_notify_recents_visibility_change"

    invoke-static {p0, v1}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1575
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "recentsVisibility"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1576
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 359
    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 360
    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/recents/Recents;->mInflater:Landroid/view/LayoutInflater;

    .line 361
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    .line 362
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/recents/Recents;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 363
    new-instance v5, Lcom/android/systemui/recents/RecentsAppWidgetHost;

    iget-object v6, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/recents/Constants$Values$App;->AppWidgetHostId:I

    invoke-direct {v5, v6, v7}, Lcom/android/systemui/recents/RecentsAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/systemui/recents/Recents;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    .line 366
    new-instance v5, Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;

    iget-object v6, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;-><init>(Lcom/android/systemui/recents/Recents;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/systemui/recents/Recents;->mTaskStackListener:Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;

    .line 367
    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v6, p0, Lcom/android/systemui/recents/Recents;->mTaskStackListener:Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 370
    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0048

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 371
    .local v4, "portraitCount":I
    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0049

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 375
    .local v0, "landscapeCount":I
    invoke-static {v4}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->initializeCurve(I)V

    .line 377
    sget-boolean v5, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v5, :cond_0

    .line 378
    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->initializeCurveForLandscape(I)V

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->reloadHeaderBarLayout()V

    .line 386
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    .line 387
    .local v2, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v3

    .line 388
    .local v3, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    invoke-virtual {v2, v3, v8}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 389
    new-instance v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 390
    .local v1, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getApplicationIconCacheSize()I

    move-result v5

    iput v5, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 391
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v5

    iput v5, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 392
    iput-boolean v8, v1, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 393
    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v3, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 394
    return-void
.end method

.method static onStartScreenPinning(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1598
    invoke-static {p0}, Lcom/android/systemui/recents/Recents;->getInstanceAndStartIfNeeded(Landroid/content/Context;)Lcom/android/systemui/recents/Recents;

    move-result-object v2

    iget-object v0, v2, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    .line 1600
    .local v0, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 1601
    .local v1, "statusBar":Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    if-eqz v1, :cond_0

    .line 1602
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showScreenPinningRequest(Z)V

    .line 1604
    :cond_0
    return-void
.end method

.method private registerVisibilityReceiver()V
    .locals 6

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    new-instance v0, Lcom/android/systemui/recents/Recents$RecentsOwnerEventProxyReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/Recents$RecentsOwnerEventProxyReceiver;-><init>(Lcom/android/systemui/recents/Recents;)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mProxyBroadcastReceiver:Lcom/android/systemui/recents/Recents$RecentsOwnerEventProxyReceiver;

    .line 402
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 403
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "action_notify_recents_visibility_change"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    const-string v0, "action_screen_pinning_request"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mProxyBroadcastReceiver:Lcom/android/systemui/recents/Recents$RecentsOwnerEventProxyReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 408
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method static visibilityChanged(Z)V
    .locals 1
    .param p0, "visible"    # Z

    .prologue
    .line 1580
    sget-object v0, Lcom/android/systemui/recents/Recents;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    if-eqz v0, :cond_0

    .line 1581
    sget-object v0, Lcom/android/systemui/recents/Recents;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/RecentsComponent$Callbacks;->onVisibilityChanged(Z)V

    .line 1583
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .locals 0

    .prologue
    .line 614
    return-void
.end method

.method configurationChanged()V
    .locals 1

    .prologue
    .line 736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/Recents;->mCanReuseTaskStackViews:Z

    .line 738
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->reloadHeaderBarLayout()V

    .line 739
    return-void
.end method

.method drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "toTask"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    const/4 v4, 0x0

    .line 1243
    if-eqz p2, :cond_0

    iget-object v5, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v5, :cond_0

    .line 1245
    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1246
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v6, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    mul-float/2addr v4, v6

    float-to-int v3, v4

    .line 1247
    .local v3, "toHeaderWidth":I
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget v6, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    mul-float/2addr v4, v6

    float-to-int v2, v4

    .line 1248
    .local v2, "toHeaderHeight":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1253
    .local v1, "thumbnail":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1254
    .local v0, "c":Landroid/graphics/Canvas;
    iget v4, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    iget v6, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1255
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->rebindToTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1256
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    .line 1257
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1259
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1260
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1262
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v2    # "toHeaderHeight":I
    .end local v3    # "toHeaderWidth":I
    :cond_0
    return-object v4

    .line 1259
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method getHomeTransitionActivityOptions(ZI)Landroid/app/ActivityOptions;
    .locals 5
    .param p1, "fromSearchHome"    # Z
    .param p2, "displayId"    # I

    .prologue
    .line 1092
    const-string v1, "Recents"

    const-string v2, "getHomeTransitionActivityOptions is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mMainStartedListener:Lcom/android/systemui/recents/Recents$AnimationStartedListener;

    .line 1101
    .local v0, "listener":Lcom/android/systemui/recents/Recents$AnimationStartedListener;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/Recents$AnimationStartedListener;->mStartAnimationTriggered:Z

    .line 1103
    if-eqz p1, :cond_0

    .line 1104
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const v2, 0x7f05009d

    const v3, 0x7f05009e

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v3, v4, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 1115
    :goto_0
    return-object v1

    .line 1109
    :cond_0
    sget-boolean v1, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v1, :cond_1

    .line 1110
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const v2, 0x7f05009a

    const v3, 0x7f05009c

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v3, v4, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v1

    goto :goto_0

    .line 1115
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const v2, 0x7f050099

    const v3, 0x7f05009b

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v3, v4, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v1

    goto :goto_0
.end method

.method getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;ZI)Landroid/app/ActivityOptions;
    .locals 15
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p3, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p4, "isLandscape"    # Z
    .param p5, "displayId"    # I

    .prologue
    .line 1127
    const-string v2, "Recents"

    const-string v4, "getThumbnailTransitionActivityOptions is getting called"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    new-instance v12, Lcom/android/systemui/recents/model/Task;

    invoke-direct {v12}, Lcom/android/systemui/recents/model/Task;-><init>()V

    .line 1130
    .local v12, "toTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v0, v1, v2, v12}, Lcom/android/systemui/recents/Recents;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;ILcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v14

    .line 1132
    .local v14, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-object v13, v14, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    .line 1134
    .local v13, "toTaskRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mThumbnailTransitionBitmapCacheKey:Lcom/android/systemui/recents/model/Task;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mThumbnailTransitionBitmapCacheKey:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mThumbnailTransitionBitmapCacheKey:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v4, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/model/Task$TaskKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1137
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mThumbnailTransitionBitmapCache:Landroid/graphics/Bitmap;

    .line 1138
    .local v3, "thumbnail":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/recents/Recents;->mThumbnailTransitionBitmapCacheKey:Lcom/android/systemui/recents/model/Task;

    .line 1139
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/recents/Recents;->mThumbnailTransitionBitmapCache:Landroid/graphics/Bitmap;

    .line 1144
    :goto_0
    if-eqz v3, :cond_5

    .line 1151
    iget-object v9, p0, Lcom/android/systemui/recents/Recents;->mMainStartedListener:Lcom/android/systemui/recents/Recents$AnimationStartedListener;

    .line 1153
    .local v9, "listener":Lcom/android/systemui/recents/Recents$AnimationStartedListener;
    const/4 v2, 0x0

    iput-boolean v2, v9, Lcom/android/systemui/recents/Recents$AnimationStartedListener;->mStartAnimationTriggered:Z

    .line 1161
    invoke-virtual {v12}, Lcom/android/systemui/recents/model/Task;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v11

    .line 1162
    .local v11, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v2, :cond_3

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v4, 0x4000000

    invoke-virtual {v2, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1165
    :cond_1
    move/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/Recents;->getUnknownTransitionActivityOptions(I)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 1196
    .end local v9    # "listener":Lcom/android/systemui/recents/Recents$AnimationStartedListener;
    .end local v11    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_1
    return-object v2

    .line 1141
    .end local v3    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/recents/Recents;->preloadIcon(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 1142
    invoke-virtual {p0, v12, v14}, Lcom/android/systemui/recents/Recents;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;

    move-result-object v3

    .restart local v3    # "thumbnail":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 1177
    .restart local v9    # "listener":Lcom/android/systemui/recents/Recents$AnimationStartedListener;
    .restart local v11    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_3
    const/4 v10, 0x0

    .line 1178
    .local v10, "transitStartedListener":Lcom/android/systemui/recents/Recents$TransitionStartedListener;
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v2, :cond_4

    .line 1180
    new-instance v10, Lcom/android/systemui/recents/Recents$TransitionStartedListener;

    .end local v10    # "transitStartedListener":Lcom/android/systemui/recents/Recents$TransitionStartedListener;
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mMainStartedListener:Lcom/android/systemui/recents/Recents$AnimationStartedListener;

    invoke-direct {v10, p0, v2}, Lcom/android/systemui/recents/Recents$TransitionStartedListener;-><init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/Recents$AnimationStartedListener;)V

    .line 1185
    .restart local v10    # "transitStartedListener":Lcom/android/systemui/recents/Recents$TransitionStartedListener;
    const/4 v9, 0x0

    .line 1188
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget v4, v13, Landroid/graphics/Rect;->left:I

    iget v5, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    invoke-static/range {v2 .. v10}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnTransitionStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v2

    goto :goto_1

    .line 1196
    .end local v9    # "listener":Lcom/android/systemui/recents/Recents$AnimationStartedListener;
    .end local v10    # "transitStartedListener":Lcom/android/systemui/recents/Recents$TransitionStartedListener;
    .end local v11    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_5
    move/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/Recents;->getUnknownTransitionActivityOptions(I)Landroid/app/ActivityOptions;

    move-result-object v2

    goto :goto_1
.end method

.method getThumbnailTransitionTransform(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;ILcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 9
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "runningTaskId"    # I
    .param p4, "runningTaskOut"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1269
    const/4 v2, 0x0

    .line 1270
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 1271
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v5, -0x1

    if-eq p3, v5, :cond_0

    .line 1273
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1274
    .local v3, "taskCount":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1275
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 1276
    .local v1, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v5, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-ne v5, p3, :cond_2

    .line 1277
    move-object v2, v1

    .line 1278
    invoke-virtual {p4, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    .line 1283
    .end local v0    # "i":I
    .end local v1    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v3    # "taskCount":I
    :cond_0
    if-nez v2, :cond_1

    .line 1285
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 1286
    .restart local v2    # "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p4, v2}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    .line 1290
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScrollToInitialState()Z

    .line 1291
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/recents/Recents;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v8, 0x0

    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/recents/Recents;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 1293
    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v5

    .line 1274
    .restart local v0    # "i":I
    .restart local v1    # "t":Lcom/android/systemui/recents/model/Task;
    .restart local v3    # "taskCount":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method getUnknownTransitionActivityOptions(I)Landroid/app/ActivityOptions;
    .locals 5
    .param p1, "displayId"    # I

    .prologue
    .line 1071
    const-string v1, "Recents"

    const-string v2, "getUnknownTransitionActivityOptions is getting called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mMainStartedListener:Lcom/android/systemui/recents/Recents$AnimationStartedListener;

    .line 1080
    .local v0, "listener":Lcom/android/systemui/recents/Recents$AnimationStartedListener;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/Recents$AnimationStartedListener;->mStartAnimationTriggered:Z

    .line 1082
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const v2, 0x7f05009f

    const v3, 0x7f0500a0

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2, v3, v4, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v1

    return-object v1
.end method

.method public hideRecents(ZZ)V
    .locals 3
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    const-string v1, "Recents"

    const-string v2, "Device is not provisioned"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :goto_0
    return-void

    .line 493
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/Recents$ProxyCallOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/Recents$ProxyCallOptions;-><init>(Lcom/android/systemui/recents/Recents$1;)V

    .line 494
    .local v0, "options":Lcom/android/systemui/recents/Recents$ProxyCallOptions;
    iput-boolean p1, v0, Lcom/android/systemui/recents/Recents$ProxyCallOptions;->triggeredFromAltTab:Z

    .line 495
    iput-boolean p2, v0, Lcom/android/systemui/recents/Recents$ProxyCallOptions;->triggeredFromHomeKey:Z

    .line 496
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/Recents;->handleProxyCall(ILcom/android/systemui/recents/Recents$ProxyCallOptions;)V

    goto :goto_0
.end method

.method hideRecentsInternal(ZZ)V
    .locals 3
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 501
    iget-boolean v1, p0, Lcom/android/systemui/recents/Recents;->mBootCompleted:Z

    if-eqz v1, :cond_0

    .line 504
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string v2, "action_hide_recents_activity"

    invoke-static {v1, v2}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 505
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "triggeredFromAltTab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 506
    const-string v1, "triggeredFromHomeKey"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 507
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 521
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method isUserSetupComplete()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1712
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onBootCompleted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 436
    iput-boolean v1, p0, Lcom/android/systemui/recents/Recents;->mBootCompleted:Z

    .line 439
    sget-boolean v0, Lcom/android/systemui/recents/Constants$Features;->UseRecentsSeparatedProcess:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/recents/Recents;->mRecentsProcessType:I

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/systemui/recents/Recents;->mRecentsProcessType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMultiWindowSettingEnabled:Z

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->initialize(Landroid/content/Context;)Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    .line 446
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getInstance()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->isAppListLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 447
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->getInstance()Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->loadMultiWindowAppList()V

    .line 451
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 730
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/Recents;->handleProxyCall(I)V

    .line 732
    return-void
.end method

.method preCacheThumbnailTransitionBitmapAsync(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;Z)V
    .locals 4
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p3, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p4, "isTopTaskHome"    # Z

    .prologue
    .line 1218
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/Recents;->preloadIcon(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 1221
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-boolean v3, p0, Lcom/android/systemui/recents/Recents;->mTriggeredFromAltTab:Z

    invoke-virtual {v2, p2, v3, p4}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScrollForStack(Lcom/android/systemui/recents/model/TaskStack;ZZ)V

    .line 1222
    new-instance v0, Lcom/android/systemui/recents/model/Task;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/Task;-><init>()V

    .line 1223
    .local v0, "toTask":Lcom/android/systemui/recents/model/Task;
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {p0, p2, p3, v2, v0}, Lcom/android/systemui/recents/Recents;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;ILcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v1

    .line 1225
    .local v1, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    new-instance v2, Lcom/android/systemui/recents/Recents$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/recents/Recents$2;-><init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/Recents$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1237
    return-void
.end method

.method preloadIcon(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4
    .param p1, "task"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .prologue
    .line 1205
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 1206
    .local v0, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 1207
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 1208
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 1209
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 1210
    return-void
.end method

.method public preloadRecents()V
    .locals 2
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    const-string v0, "Recents"

    const-string v1, "Device is not provisioned"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :goto_0
    return-void

    .line 561
    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/Recents;->handleProxyCall(I)V

    goto :goto_0
.end method

.method preloadRecentsInternal()V
    .locals 7

    .prologue
    .line 568
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 569
    .local v2, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v3, Landroid/util/MutableBoolean;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 570
    .local v3, "topTaskHome":Landroid/util/MutableBoolean;
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 576
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 578
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/util/MutableBoolean;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 584
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-boolean v5, v3, Landroid/util/MutableBoolean;->value:Z

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(ZI)V

    .line 586
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-boolean v5, v3, Landroid/util/MutableBoolean;->value:Z

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 587
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getAllTaskStacks()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/TaskStack;

    .line 588
    .local v1, "top":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 589
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-boolean v5, v3, Landroid/util/MutableBoolean;->value:Z

    invoke-virtual {p0, v2, v1, v4, v5}, Lcom/android/systemui/recents/Recents;->preCacheThumbnailTransitionBitmapAsync(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;Z)V

    .line 609
    .end local v1    # "top":Lcom/android/systemui/recents/model/TaskStack;
    :cond_0
    return-void
.end method

.method reloadHeaderBarLayout()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 894
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 895
    .local v9, "res":Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0, v14}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    .line 899
    iput v14, p0, Lcom/android/systemui/recents/Recents;->mStatusBarHeight:I

    .line 900
    const v0, 0x1120069

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 901
    const v0, 0x1050018

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/Recents;->mNavBarHeight:I

    .line 902
    const v0, 0x105001a

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/Recents;->mNavBarWidth:I

    .line 916
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 918
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->updateOnConfigurationChange()V

    .line 919
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 923
    .local v5, "searchBarBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getOrBindSearchAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/recents/Recents;->mStatusBarHeight:I

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/systemui/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/recents/Recents;->mStatusBarHeight:I

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/systemui/recents/Recents;->mNavBarWidth:I

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/recents/Recents;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getAvailableTaskStackBounds(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 930
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v0, :cond_7

    .line 931
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/recents/Recents;->mStatusBarHeight:I

    iget v2, p0, Lcom/android/systemui/recents/Recents;->mNavBarWidth:I

    invoke-virtual {v0, v14, v1, v2, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 937
    :goto_2
    new-instance v10, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {v10}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    .line 939
    .local v10, "stack":Lcom/android/systemui/recents/model/TaskStack;
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v0, :cond_1

    .line 940
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->removeAllViewsInLayout()V

    .line 943
    :cond_1
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v10}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/model/TaskStack;)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 944
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v7

    .line 945
    .local v7, "algo":Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;
    new-instance v12, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-direct {v12, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 946
    .local v12, "taskStackBounds":Landroid/graphics/Rect;
    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    .line 947
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v7, v0, v1, v12}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->computeRects(IILandroid/graphics/Rect;)V

    .line 948
    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getUntransformedTaskViewSize()Landroid/graphics/Rect;

    move-result-object v13

    .line 949
    .local v13, "taskViewSize":Landroid/graphics/Rect;
    const v0, 0x7f0c0164

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 950
    .local v11, "taskBarHeight":I
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v1

    .line 956
    :try_start_0
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 957
    .local v8, "config":Landroid/content/res/Configuration;
    if-eqz v8, :cond_3

    iget v0, p0, Lcom/android/systemui/recents/Recents;->mFontScale:F

    iget v2, v8, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/recents/Recents;->mFlipFont:I

    iget v2, v8, Landroid/content/res/Configuration;->FlipFont:I

    if-eq v0, v2, :cond_3

    .line 959
    :cond_2
    const-string v0, "Recents"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Font changed OLD: scale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/recents/Recents;->mFontScale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flipfont="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/recents/Recents;->mFlipFont:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", NEW: scale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flipfont="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Landroid/content/res/Configuration;->FlipFont:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget v0, v8, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/android/systemui/recents/Recents;->mFontScale:F

    .line 962
    iget v0, v8, Landroid/content/res/Configuration;->FlipFont:I

    iput v0, p0, Lcom/android/systemui/recents/Recents;->mFlipFont:I

    .line 963
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mHeaderBarPort:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 964
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mHeaderBarLand:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 967
    :cond_3
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    .line 968
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mHeaderBarPort:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-nez v0, :cond_4

    .line 969
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040072

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mHeaderBarPort:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 972
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mHeaderBarPort:Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 981
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v11, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 984
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v11}, Lcom/android/systemui/recents/views/TaskViewHeader;->layout(IIII)V

    .line 985
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    return-void

    .line 905
    .end local v5    # "searchBarBounds":Landroid/graphics/Rect;
    .end local v7    # "algo":Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;
    .end local v8    # "config":Landroid/content/res/Configuration;
    .end local v10    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v11    # "taskBarHeight":I
    .end local v12    # "taskStackBounds":Landroid/graphics/Rect;
    .end local v13    # "taskViewSize":Landroid/graphics/Rect;
    :cond_5
    iput v14, p0, Lcom/android/systemui/recents/Recents;->mNavBarHeight:I

    .line 906
    iput v14, p0, Lcom/android/systemui/recents/Recents;->mNavBarWidth:I

    goto/16 :goto_0

    .restart local v5    # "searchBarBounds":Landroid/graphics/Rect;
    :cond_6
    move v4, v14

    .line 927
    goto/16 :goto_1

    .line 933
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/recents/Recents;->mStatusBarHeight:I

    iget v2, p0, Lcom/android/systemui/recents/Recents;->mNavBarHeight:I

    invoke-virtual {v0, v14, v1, v14, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    .line 974
    .restart local v7    # "algo":Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;
    .restart local v8    # "config":Landroid/content/res/Configuration;
    .restart local v10    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v11    # "taskBarHeight":I
    .restart local v12    # "taskStackBounds":Landroid/graphics/Rect;
    .restart local v13    # "taskViewSize":Landroid/graphics/Rect;
    :cond_8
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mHeaderBarLand:Lcom/android/systemui/recents/views/TaskViewHeader;

    if-nez v0, :cond_9

    .line 975
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040072

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mHeaderBarLand:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 978
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mHeaderBarLand:Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    goto :goto_3

    .line 985
    .end local v8    # "config":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCallback(Lcom/android/systemui/RecentsComponent$Callbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/RecentsComponent$Callbacks;

    .prologue
    .line 1558
    sput-object p1, Lcom/android/systemui/recents/Recents;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    .line 1559
    return-void
.end method

.method public showNextAffiliatedTask()V
    .locals 2

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    const-string v0, "Recents"

    const-string v1, "Device is not provisioned"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :goto_0
    return-void

    .line 708
    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/Recents;->handleProxyCall(I)V

    goto :goto_0
.end method

.method public showPrevAffiliatedTask()V
    .locals 2

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 717
    const-string v0, "Recents"

    const-string v1, "Device is not provisioned"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :goto_0
    return-void

    .line 722
    :cond_0
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/Recents;->handleProxyCall(I)V

    goto :goto_0
.end method

.method public showRecents(ZLandroid/view/View;)V
    .locals 3
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "statusBarView"    # Landroid/view/View;
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 460
    const-string v1, "Recents"

    const-string v2, "Device is not provisioned"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :goto_0
    return-void

    .line 465
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/Recents$ProxyCallOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/Recents$ProxyCallOptions;-><init>(Lcom/android/systemui/recents/Recents$1;)V

    .line 466
    .local v0, "options":Lcom/android/systemui/recents/Recents$ProxyCallOptions;
    iput-boolean p1, v0, Lcom/android/systemui/recents/Recents$ProxyCallOptions;->triggeredFromAltTab:Z

    .line 467
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/recents/Recents;->handleProxyCall(ILcom/android/systemui/recents/Recents$ProxyCallOptions;)V

    goto :goto_0
.end method

.method showRecentsInternal(Z)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 472
    iput-boolean p1, p0, Lcom/android/systemui/recents/Recents;->mTriggeredFromAltTab:Z

    .line 475
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->startRecentsActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :goto_0
    return-void

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "Failed to launch RecentAppsIntent"

    invoke-static {v1, v0}, Lcom/android/systemui/recents/misc/Console;->logRawError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method showRelativeAffiliatedTask(Z)V
    .locals 22
    .param p1, "showNextTask"    # Z

    .prologue
    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getFocusedStack()I

    move-result v5

    .line 620
    .local v5, "focusedStackId":I
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v9

    .line 621
    .local v9, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v11

    .line 622
    .local v11, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v11, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 624
    if-gez v5, :cond_1

    .line 696
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    invoke-virtual {v11, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack(I)Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    .line 631
    .local v4, "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v18

    if-eqz v18, :cond_0

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v12

    .line 635
    .local v12, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v12, :cond_0

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v18, v0

    iget v0, v12, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInHomeStack(I)Z

    move-result v18

    if-nez v18, :cond_0

    .line 640
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v15

    .line 641
    .local v15, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/16 v16, 0x0

    .line 642
    .local v16, "toTask":Lcom/android/systemui/recents/model/Task;
    const/4 v8, 0x0

    .line 643
    .local v8, "launchOpts":Landroid/app/ActivityOptions;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 644
    .local v14, "taskCount":I
    const/4 v10, 0x0

    .line 645
    .local v10, "numAffiliatedTasks":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v14, :cond_3

    .line 646
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/model/Task;

    .line 647
    .local v13, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v0, v13, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v18, v0

    iget v0, v12, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 648
    iget-object v6, v13, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 650
    .local v6, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    if-eqz p1, :cond_5

    .line 651
    invoke-virtual {v6, v13}, Lcom/android/systemui/recents/model/TaskGrouping;->getNextTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v17

    .line 652
    .local v17, "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0500a6

    const v20, 0x7f0500a5

    invoke-static/range {v18 .. v20}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v8

    .line 661
    :goto_3
    if-eqz v17, :cond_2

    .line 662
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/recents/model/Task;

    move-result-object v16

    .line 664
    :cond_2
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v10

    .line 670
    .end local v6    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v13    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v17    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_3
    if-nez v16, :cond_8

    .line 671
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v10, v0, :cond_0

    .line 672
    if-eqz p1, :cond_7

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0500a4

    invoke-static/range {v19 .. v20}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    goto/16 :goto_0

    .line 627
    .end local v4    # "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v7    # "i":I
    .end local v8    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v10    # "numAffiliatedTasks":I
    .end local v12    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v14    # "taskCount":I
    .end local v15    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .end local v16    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_4
    invoke-virtual {v11}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getAllTaskStacks()Ljava/util/ArrayList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/TaskStack;

    .restart local v4    # "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    goto/16 :goto_1

    .line 656
    .restart local v6    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .restart local v7    # "i":I
    .restart local v8    # "launchOpts":Landroid/app/ActivityOptions;
    .restart local v10    # "numAffiliatedTasks":I
    .restart local v12    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v13    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v14    # "taskCount":I
    .restart local v15    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .restart local v16    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_5
    invoke-virtual {v6, v13}, Lcom/android/systemui/recents/model/TaskGrouping;->getPrevTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v17

    .line 657
    .restart local v17    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0500a9

    const v20, 0x7f0500a8

    invoke-static/range {v18 .. v20}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v8

    goto :goto_3

    .line 645
    .end local v6    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v17    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 677
    .end local v13    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0500a7

    invoke-static/range {v19 .. v20}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    goto/16 :goto_0

    .line 686
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "overview_affiliated_task_launch"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 689
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isActive:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveTaskToFront(ILandroid/app/ActivityOptions;)V

    goto/16 :goto_0

    .line 693
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;)Z

    goto/16 :goto_0
.end method

.method public start()V
    .locals 3
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 341
    sget-object v0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    if-nez v0, :cond_0

    .line 342
    sput-object p0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    .line 345
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 347
    invoke-direct {p0, v2}, Lcom/android/systemui/recents/Recents;->handleProxyCall(I)V

    .line 349
    sget v0, Lcom/android/systemui/recents/Recents;->mRecentsProcessType:I

    if-nez v0, :cond_1

    .line 350
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->registerVisibilityReceiver()V

    .line 352
    :cond_1
    sget v0, Lcom/android/systemui/recents/Recents;->mRecentsProcessType:I

    if-eq v0, v2, :cond_2

    .line 353
    const-class v0, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/recents/Recents;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 356
    :cond_2
    return-void
.end method

.method startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;IZ)V
    .locals 6
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "opts"    # Landroid/app/ActivityOptions;
    .param p3, "fromHome"    # Z
    .param p4, "fromSearchHome"    # Z
    .param p5, "fromThumbnail"    # Z
    .param p6, "vr"    # Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    .param p7, "displayId"    # I
    .param p8, "fromCoupledTask"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1490
    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    if-nez p4, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, v5, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    .line 1491
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean p4, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    .line 1492
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean p5, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    .line 1493
    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    if-eqz p1, :cond_2

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_1
    iput v2, v5, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    .line 1494
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v5, p0, Lcom/android/systemui/recents/Recents;->mTriggeredFromAltTab:Z

    iput-boolean v5, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    .line 1495
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v5, p0, Lcom/android/systemui/recents/Recents;->mCanReuseTaskStackViews:Z

    iput-boolean v5, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedReuseTaskStackViews:Z

    .line 1496
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, p6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    iput v5, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    .line 1497
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v5, p6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    iput v5, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    .line 1498
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean v3, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    .line 1501
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1503
    .local v1, "intent":Landroid/content/Intent;
    sget v2, Lcom/android/systemui/recents/Recents;->mRecentsProcessType:I

    if-ne v2, v4, :cond_3

    .line 1504
    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.recents.SeparatedRecentsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1511
    :goto_2
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1543
    if-eqz p2, :cond_4

    .line 1544
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1552
    :goto_3
    iput-boolean v4, p0, Lcom/android/systemui/recents/Recents;->mCanReuseTaskStackViews:Z

    .line 1553
    return-void

    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    move v2, v3

    .line 1490
    goto :goto_0

    .line 1493
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .line 1506
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v2, "com.android.systemui.recents.SHOW_RECENTS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1507
    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1546
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1548
    :catch_0
    move-exception v0

    .line 1549
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_3
.end method

.method startRecentsActivity()V
    .locals 3

    .prologue
    .line 1049
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 1050
    .local v1, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v0, Landroid/util/MutableBoolean;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 1051
    .local v0, "isTopTaskHome":Landroid/util/MutableBoolean;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/util/MutableBoolean;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1062
    :cond_0
    iget-boolean v2, v0, Landroid/util/MutableBoolean;->value:Z

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/Recents;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 1065
    :cond_1
    return-void
.end method

.method startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 1
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isTopTaskHome"    # Z

    .prologue
    .line 1299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/recents/Recents;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZI)V

    .line 1300
    return-void
.end method

.method startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZI)V
    .locals 33
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isTopTaskHome"    # Z
    .param p3, "displayId"    # I

    .prologue
    .line 1304
    const-string v4, "Recents"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startRecentsActivity() : isTopTaskHome="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", displayId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/Recents;->isUserSetupComplete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1444
    :goto_0
    return-void

    .line 1312
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v29

    .line 1313
    .local v29, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move/from16 v0, p3

    invoke-static {v4, v5, v0}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;I)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v24

    .line 1317
    .local v24, "configuration":Lcom/android/systemui/recents/RecentsConfiguration;
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    move/from16 v25, v0

    .line 1318
    .local v25, "currentOrientation":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_3

    const/16 v28, 0x1

    .line 1321
    .local v28, "lastOrienation":Z
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    .line 1322
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/Recents;->reloadHeaderBarLayout()V

    .line 1323
    const-string v4, "Recents"

    const-string v5, "startRecentsActivity() : called reloadHeaderBarLayout by forcebecause of not received configuration change properly."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v7}, Lcom/android/systemui/recents/RecentsConfiguration;->setCurrentActivity(Landroid/content/Context;I)V

    .line 1338
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v4, :cond_2

    .line 1346
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 1352
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    if-eqz v4, :cond_4

    .line 1353
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    const/4 v5, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 1354
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getAllTaskStacks()Ljava/util/ArrayList;

    move-result-object v31

    .line 1355
    .local v31, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/model/TaskStack;

    .line 1356
    .local v13, "stack":Lcom/android/systemui/recents/model/TaskStack;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/recents/Recents;->mTriggeredFromAltTab:Z

    const/4 v7, 0x1

    invoke-virtual {v4, v13, v5, v7}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScrollForStack(Lcom/android/systemui/recents/model/TaskStack;ZZ)V

    .line 1357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;

    move-result-object v10

    .line 1359
    .local v10, "stackVr":Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/Recents;->getUnknownTransitionActivityOptions(I)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 1360
    .local v6, "opts":Landroid/app/ActivityOptions;
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v11, p3

    invoke-virtual/range {v4 .. v12}, Lcom/android/systemui/recents/Recents;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;IZ)V

    goto/16 :goto_0

    .line 1318
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    .end local v10    # "stackVr":Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    .end local v13    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v28    # "lastOrienation":Z
    .end local v31    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    :cond_3
    const/16 v28, 0x0

    goto :goto_1

    .line 1365
    .restart local v28    # "lastOrienation":Z
    :cond_4
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1366
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-object/from16 v0, v29

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;ZI)V

    .line 1368
    :cond_5
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getAllTaskStacks()Ljava/util/ArrayList;

    move-result-object v31

    .line 1369
    .restart local v31    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/model/TaskStack;

    .line 1372
    .restart local v13    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    const/16 v22, 0x0

    .line 1385
    .local v22, "isTopTaskCoupled":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/recents/Recents;->mTriggeredFromAltTab:Z

    move/from16 v0, p2

    invoke-virtual {v4, v13, v5, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScrollForStack(Lcom/android/systemui/recents/model/TaskStack;ZZ)V

    .line 1386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;

    move-result-object v10

    .line 1388
    .restart local v10    # "stackVr":Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    invoke-virtual {v13}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-lez v4, :cond_8

    const/16 v26, 0x1

    .line 1389
    .local v26, "hasRecentTasks":Z
    :goto_2
    if-eqz p1, :cond_9

    if-nez p2, :cond_9

    if-eqz v26, :cond_9

    if-nez v22, :cond_9

    const/16 v32, 0x1

    .line 1394
    .local v32, "useThumbnailTransition":Z
    :goto_3
    if-eqz v32, :cond_6

    .line 1398
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v23

    .line 1403
    .local v23, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, v23

    iget-boolean v15, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v16, p3

    invoke-virtual/range {v11 .. v16}, Lcom/android/systemui/recents/Recents;->getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;ZI)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 1405
    .restart local v6    # "opts":Landroid/app/ActivityOptions;
    if-eqz v6, :cond_a

    .line 1406
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v11, p3

    move/from16 v12, v22

    invoke-virtual/range {v4 .. v12}, Lcom/android/systemui/recents/Recents;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;IZ)V

    .line 1420
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    .end local v23    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    :cond_6
    :goto_4
    if-nez v32, :cond_7

    .line 1423
    if-eqz v26, :cond_c

    .line 1424
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getHomeActivityPackageName()Ljava/lang/String;

    move-result-object v27

    .line 1425
    .local v27, "homeActivityPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string v5, "searchAppWidgetPackage"

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1429
    .local v30, "searchWidgetPackage":Ljava/lang/String;
    if-eqz v27, :cond_b

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v8, 0x1

    .line 1431
    .local v8, "fromSearchHome":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/recents/Recents;->getHomeTransitionActivityOptions(ZI)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 1432
    .restart local v6    # "opts":Landroid/app/ActivityOptions;
    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v11, p3

    move/from16 v12, v22

    invoke-virtual/range {v4 .. v12}, Lcom/android/systemui/recents/Recents;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;IZ)V

    .line 1443
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    .end local v8    # "fromSearchHome":Z
    .end local v27    # "homeActivityPackage":Ljava/lang/String;
    .end local v30    # "searchWidgetPackage":Ljava/lang/String;
    :cond_7
    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/systemui/recents/Recents;->mLastToggleTime:J

    goto/16 :goto_0

    .line 1388
    .end local v26    # "hasRecentTasks":Z
    .end local v32    # "useThumbnailTransition":Z
    :cond_8
    const/16 v26, 0x0

    goto :goto_2

    .line 1389
    .restart local v26    # "hasRecentTasks":Z
    :cond_9
    const/16 v32, 0x0

    goto :goto_3

    .line 1411
    .restart local v6    # "opts":Landroid/app/ActivityOptions;
    .restart local v23    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .restart local v32    # "useThumbnailTransition":Z
    :cond_a
    const/16 v32, 0x0

    goto :goto_4

    .line 1429
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    .end local v23    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .restart local v27    # "homeActivityPackage":Ljava/lang/String;
    .restart local v30    # "searchWidgetPackage":Ljava/lang/String;
    :cond_b
    const/4 v8, 0x0

    goto :goto_5

    .line 1437
    .end local v27    # "homeActivityPackage":Ljava/lang/String;
    .end local v30    # "searchWidgetPackage":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/Recents;->getUnknownTransitionActivityOptions(I)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 1438
    .restart local v6    # "opts":Landroid/app/ActivityOptions;
    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v6

    move-object/from16 v20, v10

    move/from16 v21, p3

    invoke-virtual/range {v14 .. v22}, Lcom/android/systemui/recents/Recents;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;IZ)V

    goto :goto_6
.end method

.method public toggleRecents(Landroid/view/Display;ILandroid/view/View;)V
    .locals 2
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "layoutDirection"    # I
    .param p3, "statusBarView"    # Landroid/view/View;
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    const-string v0, "Recents"

    const-string v1, "Device is not provisioned"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/Recents;->handleProxyCall(I)V

    goto :goto_0
.end method

.method toggleRecentsActivity()V
    .locals 8

    .prologue
    .line 993
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/recents/Recents;->mLastToggleTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1f4

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 1044
    :goto_0
    return-void

    .line 999
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 1000
    .local v2, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v1, Landroid/util/MutableBoolean;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 1033
    .local v1, "isTopTaskHome":Landroid/util/MutableBoolean;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/util/MutableBoolean;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1035
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string v4, "action_toggle_recents_activity"

    invoke-static {v3, v4}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1036
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1038
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/recents/Recents;->mLastToggleTime:J

    goto :goto_0

    .line 1041
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-boolean v3, v1, Landroid/util/MutableBoolean;->value:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/recents/Recents;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    goto :goto_0
.end method

.method toggleRecentsInternal()V
    .locals 2

    .prologue
    .line 540
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recents/Recents;->mTriggeredFromAltTab:Z

    .line 543
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->toggleRecentsActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "Failed to launch RecentAppsIntent"

    invoke-static {v1, v0}, Lcom/android/systemui/recents/misc/Console;->logRawError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
