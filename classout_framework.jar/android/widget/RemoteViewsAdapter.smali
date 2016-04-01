.class public Landroid/widget/RemoteViewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;,
        Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;,
        Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;
    }
.end annotation


# static fields
.field private static final MULTI_USER_PERM:Ljava/lang/String; = "android.permission.INTERACT_ACROSS_USERS_FULL"

.field private static final REMOTE_VIEWS_CACHE_DURATION:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "RemoteViewsAdapter"

.field private static sCacheRemovalQueue:Landroid/os/Handler; = null

.field private static sCacheRemovalThread:Landroid/os/HandlerThread; = null

.field private static final sCachedRemoteViewsCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;",
            "Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefaultCacheSize:I = 0x28

.field private static final sDefaultLoadingViewHeight:I = 0x32

.field private static final sDefaultMessageType:I = 0x0

.field private static final sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUnbindServiceDelay:I = 0x1388

.field private static final sUnbindServiceMessageType:I = 0x1


# instance fields
.field private final mAppWidgetId:I

.field private mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataReady:Z

.field private final mIntent:Landroid/content/Intent;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMainQueue:Landroid/os/Handler;

.field private mNotifyDataSetChangedAfterOnServiceConnected:Z

.field private mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

.field private mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

.field private mVisibleWindowLowerBound:I

.field private mVisibleWindowUpperBound:I

.field private mWorkerQueue:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, sCachedRemoteViewsCaches:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callback"    # Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    .prologue
    const/4 v1, 0x0

    .line 871
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 87
    iput-boolean v1, p0, mNotifyDataSetChangedAfterOnServiceConnected:Z

    .line 118
    iput-boolean v1, p0, mDataReady:Z

    .line 872
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 873
    iput-object p2, p0, mIntent:Landroid/content/Intent;

    .line 875
    iget-object v1, p0, mIntent:Landroid/content/Intent;

    if-nez v1, :cond_18

    .line 876
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Non-null Intent must be specified."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 879
    :cond_18
    const-string/jumbo v1, "remoteAdapterAppWidgetId"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, mAppWidgetId:I

    .line 880
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, mLayoutInflater:Landroid/view/LayoutInflater;

    .line 881
    new-instance v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    iput-object v1, p0, mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    .line 884
    const-string/jumbo v1, "remoteAdapterAppWidgetId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 885
    const-string/jumbo v1, "remoteAdapterAppWidgetId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 889
    :cond_3e
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "RemoteViewsCache-loader"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, mWorkerThread:Landroid/os/HandlerThread;

    .line 890
    iget-object v1, p0, mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 891
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, mWorkerQueue:Landroid/os/Handler;

    .line 892
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, mMainQueue:Landroid/os/Handler;

    .line 894
    sget-object v1, sCacheRemovalThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_83

    .line 895
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "RemoteViewsAdapter-cachePruner"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, sCacheRemovalThread:Landroid/os/HandlerThread;

    .line 896
    sget-object v1, sCacheRemovalThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 897
    new-instance v1, Landroid/os/Handler;

    sget-object v2, sCacheRemovalThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, sCacheRemovalQueue:Landroid/os/Handler;

    .line 901
    :cond_83
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, mCallback:Ljava/lang/ref/WeakReference;

    .line 902
    new-instance v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    iput-object v1, p0, mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    .line 904
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, mIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    iget v2, p0, mAppWidgetId:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;-><init>(Landroid/content/Intent$FilterComparison;I)V

    .line 907
    .local v0, "key":Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
    sget-object v2, sCachedRemoteViewsCaches:Ljava/util/HashMap;

    monitor-enter v2

    .line 908
    :try_start_a2
    sget-object v1, sCachedRemoteViewsCaches:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 909
    sget-object v1, sCachedRemoteViewsCaches:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    iput-object v1, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    .line 910
    iget-object v1, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    # getter for: Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->access$1200(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v3

    monitor-enter v3
    :try_end_bb
    .catchall {:try_start_a2 .. :try_end_bb} :catchall_d5

    .line 911
    :try_start_bb
    iget-object v1, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    # getter for: Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->access$1200(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v1

    iget v1, v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    if-lez v1, :cond_c8

    .line 914
    const/4 v1, 0x1

    iput-boolean v1, p0, mDataReady:Z

    .line 916
    :cond_c8
    monitor-exit v3
    :try_end_c9
    .catchall {:try_start_bb .. :try_end_c9} :catchall_d2

    .line 920
    :goto_c9
    :try_start_c9
    iget-boolean v1, p0, mDataReady:Z

    if-nez v1, :cond_d0

    .line 921
    invoke-direct {p0}, requestBindService()Z

    .line 923
    :cond_d0
    monitor-exit v2
    :try_end_d1
    .catchall {:try_start_c9 .. :try_end_d1} :catchall_d5

    .line 924
    return-void

    .line 916
    :catchall_d2
    move-exception v1

    :try_start_d3
    monitor-exit v3
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    :try_start_d4
    throw v1

    .line 923
    :catchall_d5
    move-exception v1

    monitor-exit v2
    :try_end_d7
    .catchall {:try_start_d4 .. :try_end_d7} :catchall_d5

    throw v1

    .line 918
    :cond_d8
    :try_start_d8
    new-instance v1, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    const/16 v3, 0x28

    invoke-direct {v1, v3}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;-><init>(I)V

    iput-object v1, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    :try_end_e1
    .catchall {:try_start_d8 .. :try_end_e1} :catchall_d5

    goto :goto_c9
.end method

.method static synthetic access$000(Landroid/widget/RemoteViewsAdapter;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter;

    .prologue
    .line 56
    iget-boolean v0, p0, mNotifyDataSetChangedAfterOnServiceConnected:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/RemoteViewsAdapter;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter;

    .prologue
    .line 56
    invoke-direct {p0}, onNotifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter;

    .prologue
    .line 56
    iget-object v0, p0, mWorkerQueue:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViews$OnClickHandler;
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter;

    .prologue
    .line 56
    iget-object v0, p0, mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 56
    sget-object v0, sCachedRemoteViewsCaches:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 56
    sget-object v0, sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/RemoteViewsAdapter;IZ)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, updateRemoteViews(IZ)V

    return-void
.end method

.method static synthetic access$1700(Landroid/widget/RemoteViewsAdapter;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter;

    .prologue
    .line 56
    invoke-direct {p0}, loadNextIndexInBackground()V

    return-void
.end method

.method static synthetic access$1800(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter;

    .prologue
    .line 56
    iget-object v0, p0, mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter;

    .prologue
    .line 56
    iget-object v0, p0, mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/RemoteViewsAdapter;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter;

    .prologue
    .line 56
    invoke-direct {p0}, updateTemporaryMetaData()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter;

    .prologue
    .line 56
    iget-object v0, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/RemoteViewsAdapter;)Ljava/lang/ref/WeakReference;
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter;

    .prologue
    .line 56
    iget-object v0, p0, mCallback:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter;

    .prologue
    .line 56
    iget-object v0, p0, mMainQueue:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/RemoteViewsAdapter;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter;

    .prologue
    .line 56
    invoke-direct {p0}, enqueueDeferredUnbindServiceMessage()V

    return-void
.end method

.method private enqueueDeferredUnbindServiceMessage()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1437
    iget-object v0, p0, mMainQueue:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1438
    iget-object v0, p0, mMainQueue:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1439
    return-void
.end method

.method private getConvertViewTypeId(Landroid/view/View;)I
    .registers 5
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 1175
    const/4 v1, -0x1

    .line 1176
    .local v1, "typeId":I
    if-eqz p1, :cond_12

    .line 1177
    const v2, 0x1020046

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1178
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_12

    .line 1179
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1182
    :cond_12
    return v1
.end method

.method private getVisibleWindow(III)Ljava/util/ArrayList;
    .registers 7
    .param p1, "lower"    # I
    .param p2, "upper"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1366
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1369
    .local v1, "window":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p1, :cond_9

    if-eqz p2, :cond_d

    :cond_9
    if-ltz p1, :cond_d

    if-gez p2, :cond_e

    .line 1387
    :cond_d
    return-object v1

    .line 1373
    :cond_e
    if-gt p1, p2, :cond_1d

    .line 1374
    move v0, p1

    .local v0, "i":I
    :goto_11
    if-gt v0, p2, :cond_d

    .line 1375
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1380
    .end local v0    # "i":I
    :cond_1d
    move v0, p1

    .restart local v0    # "i":I
    :goto_1e
    if-ge v0, p3, :cond_2a

    .line 1381
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1383
    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    if-gt v0, p2, :cond_d

    .line 1384
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1383
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b
.end method

.method private loadNextIndexInBackground()V
    .registers 3

    .prologue
    .line 987
    iget-object v0, p0, mWorkerQueue:Landroid/os/Handler;

    new-instance v1, Landroid/widget/RemoteViewsAdapter$2;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViewsAdapter$2;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1010
    return-void
.end method

.method private onNotifyDataSetChanged()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 1308
    iget-object v6, p0, mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v1

    .line 1310
    .local v1, "factory":Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_7
    invoke-interface {v1}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDataSetChanged()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_48
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_a} :catch_66

    .line 1323
    iget-object v7, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v7

    .line 1324
    :try_start_d
    iget-object v6, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v6}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V

    .line 1325
    monitor-exit v7
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_84

    .line 1328
    invoke-direct {p0}, updateTemporaryMetaData()V

    .line 1331
    iget-object v6, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v6}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v7

    monitor-enter v7

    .line 1332
    :try_start_1d
    iget-object v6, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v6}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v6

    iget v4, v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 1333
    .local v4, "newCount":I
    iget v6, p0, mVisibleWindowLowerBound:I

    iget v8, p0, mVisibleWindowUpperBound:I

    invoke-direct {p0, v6, v8, v4}, getVisibleWindow(III)Ljava/util/ArrayList;

    move-result-object v5

    .line 1335
    .local v5, "visibleWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    monitor-exit v7
    :try_end_2e
    .catchall {:try_start_1d .. :try_end_2e} :catchall_87

    .line 1340
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_32
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1343
    .local v2, "i":I
    if-ge v2, v4, :cond_32

    .line 1344
    invoke-direct {p0, v2, v9}, updateRemoteViews(IZ)V

    goto :goto_32

    .line 1311
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "newCount":I
    .end local v5    # "visibleWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_48
    move-exception v0

    .line 1312
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "RemoteViewsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in updateNotifyDataSetChanged(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_65
    return-void

    .line 1317
    :catch_66
    move-exception v0

    .line 1318
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v6, "RemoteViewsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in updateNotifyDataSetChanged(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 1325
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_84
    move-exception v6

    :try_start_85
    monitor-exit v7
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v6

    .line 1335
    :catchall_87
    move-exception v6

    :try_start_88
    monitor-exit v7
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw v6

    .line 1349
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "newCount":I
    .restart local v5    # "visibleWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_8a
    iget-object v6, p0, mMainQueue:Landroid/os/Handler;

    new-instance v7, Landroid/widget/RemoteViewsAdapter$5;

    invoke-direct {v7, p0}, Landroid/widget/RemoteViewsAdapter$5;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1362
    iput-boolean v9, p0, mNotifyDataSetChangedAfterOnServiceConnected:Z

    goto :goto_65
.end method

.method private processException(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 1013
    const-string v1, "RemoteViewsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v1, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 1018
    .local v0, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 1019
    :try_start_2d
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->reset()V

    .line 1020
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_45

    .line 1021
    iget-object v2, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v2

    .line 1022
    :try_start_34
    iget-object v1, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V

    .line 1023
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_48

    .line 1024
    iget-object v1, p0, mMainQueue:Landroid/os/Handler;

    new-instance v2, Landroid/widget/RemoteViewsAdapter$3;

    invoke-direct {v2, p0}, Landroid/widget/RemoteViewsAdapter$3;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1030
    return-void

    .line 1020
    :catchall_45
    move-exception v1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v1

    .line 1023
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method private requestBindService()Z
    .registers 5

    .prologue
    .line 1443
    iget-object v0, p0, mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1444
    iget-object v0, p0, mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget v2, p0, mAppWidgetId:I

    iget-object v3, p0, mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->bind(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 1448
    :cond_13
    iget-object v0, p0, mMainQueue:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1449
    iget-object v0, p0, mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v0

    return v0
.end method

.method private updateRemoteViews(IZ)V
    .registers 17
    .param p1, "position"    # I
    .param p2, "notifyWhenLoaded"    # Z

    .prologue
    .line 1063
    iget-object v1, p0, mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v8

    .line 1066
    .local v8, "factory":Lcom/android/internal/widget/IRemoteViewsFactory;
    const/4 v3, 0x0

    .line 1067
    .local v3, "remoteViews":Landroid/widget/RemoteViews;
    const-wide/16 v4, 0x0

    .line 1069
    .local v4, "itemId":J
    :try_start_9
    invoke-interface {v8, p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 1070
    invoke-interface {v8, p1}, Lcom/android/internal/widget/IRemoteViewsFactory;->getItemId(I)J
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_3f
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_10} :catch_67

    move-result-wide v4

    .line 1082
    if-nez v3, :cond_8f

    .line 1086
    const-string v1, "RemoteViewsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error in updateRemoteViews("

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "): "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, " null RemoteViews "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v13, "returned from RemoteViewsFactory."

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :goto_3e
    return-void

    .line 1071
    :catch_3f
    move-exception v7

    .line 1072
    .local v7, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteViewsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error in updateRemoteViews("

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "): "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 1077
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_67
    move-exception v7

    .line 1078
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v1, "RemoteViewsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error in updateRemoteViews("

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "): "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 1091
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_8f
    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v9

    .line 1092
    .local v9, "layoutId":I
    iget-object v1, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v10

    .line 1095
    .local v10, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v10

    .line 1096
    :try_start_9a
    invoke-virtual {v10, v9}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->isViewTypeInRange(I)Z

    move-result v12

    .line 1097
    .local v12, "viewTypeInRange":Z
    iget-object v1, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    # getter for: Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->access$1200(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v1

    iget v0, v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 1098
    .local v0, "cacheCount":I
    monitor-exit v10
    :try_end_a7
    .catchall {:try_start_9a .. :try_end_a7} :catchall_e9

    .line 1099
    iget-object v13, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v13

    .line 1100
    if-eqz v12, :cond_ec

    .line 1101
    :try_start_ac
    iget v1, p0, mVisibleWindowLowerBound:I

    iget v2, p0, mVisibleWindowUpperBound:I

    invoke-direct {p0, v1, v2, v0}, getVisibleWindow(III)Ljava/util/ArrayList;

    move-result-object v6

    .line 1104
    .local v6, "visibleWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->insert(ILandroid/widget/RemoteViews;JLjava/util/ArrayList;)V

    .line 1108
    move-object v11, v3

    .line 1109
    .local v11, "rv":Landroid/widget/RemoteViews;
    if-eqz p2, :cond_c7

    .line 1110
    iget-object v1, p0, mMainQueue:Landroid/os/Handler;

    new-instance v2, Landroid/widget/RemoteViewsAdapter$4;

    invoke-direct {v2, p0, p1, v11}, Landroid/widget/RemoteViewsAdapter$4;-><init>(Landroid/widget/RemoteViewsAdapter;ILandroid/widget/RemoteViews;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1125
    .end local v6    # "visibleWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "rv":Landroid/widget/RemoteViews;
    :cond_c7
    :goto_c7
    monitor-exit v13
    :try_end_c8
    .catchall {:try_start_ac .. :try_end_c8} :catchall_f4

    .line 1126
    const-string v1, "ViewSystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateRemoteViews("

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ") has done."

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e

    .line 1098
    .end local v0    # "cacheCount":I
    .end local v12    # "viewTypeInRange":Z
    :catchall_e9
    move-exception v1

    :try_start_ea
    monitor-exit v10
    :try_end_eb
    .catchall {:try_start_ea .. :try_end_eb} :catchall_e9

    throw v1

    .line 1122
    .restart local v0    # "cacheCount":I
    .restart local v12    # "viewTypeInRange":Z
    :cond_ec
    :try_start_ec
    const-string v1, "RemoteViewsAdapter"

    const-string v2, "Error: widget\'s RemoteViewsFactory returns more view types than  indicated by getViewTypeCount() "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    .line 1125
    :catchall_f4
    move-exception v1

    monitor-exit v13
    :try_end_f6
    .catchall {:try_start_ec .. :try_end_f6} :catchall_f4

    throw v1
.end method

.method private updateTemporaryMetaData()V
    .registers 11

    .prologue
    .line 1033
    iget-object v8, p0, mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v8}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v2

    .line 1038
    .local v2, "factory":Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_6
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->hasStableIds()Z

    move-result v4

    .line 1039
    .local v4, "hasStableIds":Z
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewTypeCount()I

    move-result v7

    .line 1040
    .local v7, "viewTypeCount":I
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getCount()I

    move-result v0

    .line 1041
    .local v0, "count":I
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v5

    .line 1042
    .local v5, "loadingView":Landroid/widget/RemoteViews;
    const/4 v3, 0x0

    .line 1043
    .local v3, "firstView":Landroid/widget/RemoteViews;
    if-lez v0, :cond_20

    if-nez v5, :cond_20

    .line 1044
    const/4 v8, 0x0

    invoke-interface {v2, v8}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 1046
    :cond_20
    iget-object v8, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v8}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v6

    .line 1047
    .local v6, "tmpMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v6
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_27} :catch_3f
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_27} :catch_47

    .line 1048
    :try_start_27
    iput-boolean v4, v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    .line 1050
    add-int/lit8 v8, v7, 0x1

    iput v8, v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    .line 1051
    iput v0, v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 1052
    invoke-virtual {v6, v5, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->setLoadingViewTemplates(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 1053
    monitor-exit v6
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_3c

    .line 1059
    .end local v0    # "count":I
    .end local v3    # "firstView":Landroid/widget/RemoteViews;
    .end local v4    # "hasStableIds":Z
    .end local v5    # "loadingView":Landroid/widget/RemoteViews;
    .end local v6    # "tmpMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .end local v7    # "viewTypeCount":I
    :goto_33
    const-string v8, "ViewSystem"

    const-string/jumbo v9, "updateTemporaryMetaData() has done."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    return-void

    .line 1053
    .restart local v0    # "count":I
    .restart local v3    # "firstView":Landroid/widget/RemoteViews;
    .restart local v4    # "hasStableIds":Z
    .restart local v5    # "loadingView":Landroid/widget/RemoteViews;
    .restart local v6    # "tmpMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .restart local v7    # "viewTypeCount":I
    :catchall_3c
    move-exception v8

    :try_start_3d
    monitor-exit v6
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw v8
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_3f} :catch_3f
    .catch Ljava/lang/RuntimeException; {:try_start_3e .. :try_end_3f} :catch_47

    .line 1054
    .end local v0    # "count":I
    .end local v3    # "firstView":Landroid/widget/RemoteViews;
    .end local v4    # "hasStableIds":Z
    .end local v5    # "loadingView":Landroid/widget/RemoteViews;
    .end local v6    # "tmpMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .end local v7    # "viewTypeCount":I
    :catch_3f
    move-exception v1

    .line 1055
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "updateMetaData"

    invoke-direct {p0, v8, v1}, processException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_33

    .line 1056
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_47
    move-exception v1

    .line 1057
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v8, "updateMetaData"

    invoke-direct {p0, v8, v1}, processException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_33
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 929
    :try_start_0
    iget-object v0, p0, mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_9

    .line 930
    iget-object v0, p0, mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 933
    :cond_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 935
    return-void

    .line 933
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 1134
    iget-object v1, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 1135
    .local v0, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 1136
    :try_start_7
    iget v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    monitor-exit v0

    return v1

    .line 1137
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 1142
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 1146
    iget-object v2, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v2

    .line 1147
    :try_start_3
    iget-object v0, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1148
    iget-object v0, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v0

    iget-wide v0, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->itemId:J

    monitor-exit v2

    .line 1150
    :goto_14
    return-wide v0

    :cond_15
    const-wide/16 v0, 0x0

    monitor-exit v2

    goto :goto_14

    .line 1151
    :catchall_19
    move-exception v0

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public getItemViewType(I)I
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 1155
    const/4 v1, 0x0

    .line 1156
    .local v1, "typeId":I
    iget-object v3, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v3

    .line 1157
    :try_start_4
    iget-object v2, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1158
    iget-object v2, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v2

    iget v1, v2, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    .line 1162
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_25

    .line 1164
    iget-object v2, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 1165
    .local v0, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 1166
    :try_start_1c
    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->getMappedViewType(I)I

    move-result v2

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_28

    .end local v0    # "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    :goto_21
    return v2

    .line 1160
    :cond_22
    const/4 v2, 0x0

    :try_start_23
    monitor-exit v3

    goto :goto_21

    .line 1162
    :catchall_25
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v2

    .line 1167
    .restart local v0    # "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2
.end method

.method public getRemoteViewsServiceIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 1130
    iget-object v0, p0, mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 28
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1198
    move-object/from16 v0, p0

    iget-object v0, v0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 1199
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsRemoteViewAt(I)Z

    move-result v16

    .line 1200
    .local v16, "isInCache":Z
    move-object/from16 v0, p0

    iget-object v3, v0, mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v15

    .line 1201
    .local v15, "isConnected":Z
    const/4 v13, 0x0

    .line 1203
    .local v13, "hasNewItems":Z
    if-eqz p2, :cond_2e

    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    if-eqz v3, :cond_2e

    .line 1204
    move-object/from16 v0, p0

    iget-object v4, v0, mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    move-object/from16 v0, p2

    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-object v3, v0

    invoke-virtual {v4, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->removeView(Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V

    .line 1207
    :cond_2e
    if-nez v16, :cond_8a

    if-nez v15, :cond_8a

    .line 1210
    invoke-direct/range {p0 .. p0}, requestBindService()Z

    .line 1216
    :goto_35
    if-eqz v16, :cond_131

    .line 1217
    const/4 v10, 0x0

    .line 1218
    .local v10, "convertViewChild":Landroid/view/View;
    const/4 v11, 0x0

    .line 1219
    .local v11, "convertViewTypeId":I
    const/16 v17, 0x0

    .line 1221
    .local v17, "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    if-eqz v3, :cond_177

    .line 1222
    move-object/from16 v0, p2

    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-object/from16 v17, v0

    .line 1223
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1224
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, getConvertViewTypeId(Landroid/view/View;)I

    move-result v11

    move-object/from16 v18, v17

    .line 1229
    .end local v17    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .local v18, "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :goto_56
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 1230
    .local v9, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v3, v0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getRemoteViewsAt(I)Landroid/widget/RemoteViews;

    move-result-object v21

    .line 1231
    .local v21, "rv":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v3, v0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v14

    .line 1232
    .local v14, "indexMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    iget v0, v14, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I

    move/from16 v22, v0
    :try_end_72
    .catchall {:try_start_7 .. :try_end_72} :catchall_124

    .line 1236
    .local v22, "typeId":I
    if-eqz v18, :cond_c5

    .line 1237
    move/from16 v0, v22

    if-ne v11, v0, :cond_95

    .line 1238
    :try_start_78
    move-object/from16 v0, p0

    iget-object v3, v0, mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10, v3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_81} :catch_cd
    .catchall {:try_start_78 .. :try_end_81} :catchall_170

    .line 1267
    if-eqz v13, :cond_86

    :try_start_83
    invoke-direct/range {p0 .. p0}, loadNextIndexInBackground()V

    :cond_86
    monitor-exit v23

    move-object/from16 v19, v18

    .line 1283
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "convertViewChild":Landroid/view/View;
    .end local v11    # "convertViewTypeId":I
    .end local v14    # "indexMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v18    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v21    # "rv":Landroid/widget/RemoteViews;
    .end local v22    # "typeId":I
    :goto_89
    return-object v19

    .line 1213
    :cond_8a
    move-object/from16 v0, p0

    iget-object v3, v0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->queuePositionsToBePreloadedFromRequestedPosition(I)Z
    :try_end_93
    .catchall {:try_start_83 .. :try_end_93} :catchall_124

    move-result v13

    goto :goto_35

    .line 1241
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v10    # "convertViewChild":Landroid/view/View;
    .restart local v11    # "convertViewTypeId":I
    .restart local v14    # "indexMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .restart local v18    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v21    # "rv":Landroid/widget/RemoteViews;
    .restart local v22    # "typeId":I
    :cond_95
    :try_start_95
    invoke-virtual/range {v18 .. v18}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->removeAllViews()V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_cd
    .catchall {:try_start_95 .. :try_end_98} :catchall_170

    move-object/from16 v17, v18

    .line 1247
    .end local v18    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v17    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :goto_9a
    :try_start_9a
    move-object/from16 v0, p0

    iget-object v3, v0, mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v9, v1, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v20

    .line 1248
    .local v20, "newView":Landroid/view/View;
    const v3, 0x1020046

    new-instance v4, Ljava/lang/Integer;

    move/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 1250
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_bc} :catch_174
    .catchall {:try_start_9a .. :try_end_bc} :catchall_12a

    .line 1267
    if-eqz v13, :cond_c1

    :try_start_be
    invoke-direct/range {p0 .. p0}, loadNextIndexInBackground()V

    :cond_c1
    monitor-exit v23
    :try_end_c2
    .catchall {:try_start_be .. :try_end_c2} :catchall_124

    move-object/from16 v19, v17

    goto :goto_89

    .line 1243
    .end local v17    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v20    # "newView":Landroid/view/View;
    .restart local v18    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :cond_c5
    :try_start_c5
    new-instance v17, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;-><init>(Landroid/content/Context;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_cc} :catch_cd
    .catchall {:try_start_c5 .. :try_end_cc} :catchall_170

    .end local v18    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v17    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    goto :goto_9a

    .line 1253
    .end local v17    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v18    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :catch_cd
    move-exception v12

    move-object/from16 v17, v18

    .line 1256
    .end local v18    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .local v12, "e":Ljava/lang/Exception;
    .restart local v17    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :goto_d0
    :try_start_d0
    const-string v3, "RemoteViewsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error inflating RemoteViews at position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", using"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "loading view instead"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    const/16 v19, 0x0

    .line 1260
    .local v19, "loadingView":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v2

    .line 1261
    .local v2, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v2
    :try_end_105
    .catchall {:try_start_d0 .. :try_end_105} :catchall_12a

    .line 1262
    :try_start_105
    move-object/from16 v0, p0

    iget-object v6, v0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v0, p0

    iget-object v7, v0, mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v8, v0, mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    # invokes: Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    invoke-static/range {v2 .. v8}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->access$1900(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-result-object v19

    .line 1264
    monitor-exit v2
    :try_end_11c
    .catchall {:try_start_105 .. :try_end_11c} :catchall_127

    .line 1267
    if-eqz v13, :cond_121

    :try_start_11e
    invoke-direct/range {p0 .. p0}, loadNextIndexInBackground()V

    :cond_121
    monitor-exit v23

    goto/16 :goto_89

    .line 1285
    .end local v2    # "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "convertViewChild":Landroid/view/View;
    .end local v11    # "convertViewTypeId":I
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "hasNewItems":Z
    .end local v14    # "indexMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v15    # "isConnected":Z
    .end local v16    # "isInCache":Z
    .end local v17    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v19    # "loadingView":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v21    # "rv":Landroid/widget/RemoteViews;
    .end local v22    # "typeId":I
    :catchall_124
    move-exception v3

    monitor-exit v23
    :try_end_126
    .catchall {:try_start_11e .. :try_end_126} :catchall_124

    throw v3

    .line 1264
    .restart local v2    # "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v10    # "convertViewChild":Landroid/view/View;
    .restart local v11    # "convertViewTypeId":I
    .restart local v12    # "e":Ljava/lang/Exception;
    .restart local v13    # "hasNewItems":Z
    .restart local v14    # "indexMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .restart local v15    # "isConnected":Z
    .restart local v16    # "isInCache":Z
    .restart local v17    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v19    # "loadingView":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v21    # "rv":Landroid/widget/RemoteViews;
    .restart local v22    # "typeId":I
    :catchall_127
    move-exception v3

    :try_start_128
    monitor-exit v2
    :try_end_129
    .catchall {:try_start_128 .. :try_end_129} :catchall_127

    :try_start_129
    throw v3
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_12a

    .line 1267
    .end local v2    # "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v19    # "loadingView":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    :catchall_12a
    move-exception v3

    :goto_12b
    if-eqz v13, :cond_130

    :try_start_12d
    invoke-direct/range {p0 .. p0}, loadNextIndexInBackground()V

    :cond_130
    throw v3

    .line 1272
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "convertViewChild":Landroid/view/View;
    .end local v11    # "convertViewTypeId":I
    .end local v14    # "indexMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v17    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .end local v21    # "rv":Landroid/widget/RemoteViews;
    .end local v22    # "typeId":I
    :cond_131
    const/16 v19, 0x0

    .line 1273
    .restart local v19    # "loadingView":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    move-object/from16 v0, p0

    iget-object v3, v0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v2

    .line 1274
    .restart local v2    # "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v2
    :try_end_13c
    .catchall {:try_start_12d .. :try_end_13c} :catchall_124

    .line 1275
    :try_start_13c
    move-object/from16 v0, p0

    iget-object v6, v0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v0, p0

    iget-object v7, v0, mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v8, v0, mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    # invokes: Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    invoke-static/range {v2 .. v8}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->access$1900(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-result-object v19

    .line 1277
    monitor-exit v2
    :try_end_153
    .catchall {:try_start_13c .. :try_end_153} :catchall_16d

    .line 1279
    :try_start_153
    move-object/from16 v0, p0

    iget-object v3, v0, mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    move/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->add(ILandroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V

    .line 1280
    move-object/from16 v0, p0

    iget-object v3, v0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->queueRequestedPositionToLoad(I)V

    .line 1281
    invoke-direct/range {p0 .. p0}, loadNextIndexInBackground()V

    .line 1283
    monitor-exit v23
    :try_end_16b
    .catchall {:try_start_153 .. :try_end_16b} :catchall_124

    goto/16 :goto_89

    .line 1277
    :catchall_16d
    move-exception v3

    :try_start_16e
    monitor-exit v2
    :try_end_16f
    .catchall {:try_start_16e .. :try_end_16f} :catchall_16d

    :try_start_16f
    throw v3
    :try_end_170
    .catchall {:try_start_16f .. :try_end_170} :catchall_124

    .line 1267
    .end local v2    # "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .end local v19    # "loadingView":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v10    # "convertViewChild":Landroid/view/View;
    .restart local v11    # "convertViewTypeId":I
    .restart local v14    # "indexMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .restart local v18    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v21    # "rv":Landroid/widget/RemoteViews;
    .restart local v22    # "typeId":I
    :catchall_170
    move-exception v3

    move-object/from16 v17, v18

    .end local v18    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v17    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    goto :goto_12b

    .line 1253
    :catch_174
    move-exception v12

    goto/16 :goto_d0

    .end local v9    # "context":Landroid/content/Context;
    .end local v14    # "indexMetaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;
    .end local v21    # "rv":Landroid/widget/RemoteViews;
    .end local v22    # "typeId":I
    :cond_177
    move-object/from16 v18, v17

    .end local v17    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .restart local v18    # "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    goto/16 :goto_56
.end method

.method public getViewTypeCount()I
    .registers 3

    .prologue
    .line 1289
    iget-object v1, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 1290
    .local v0, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 1291
    :try_start_7
    iget v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    monitor-exit v0

    return v1

    .line 1292
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1421
    const/4 v0, 0x0

    .line 1422
    .local v0, "result":Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1c

    .line 1432
    :goto_6
    return v0

    .line 1424
    :pswitch_7
    iget-object v1, p0, mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1425
    iget-object v1, p0, mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget v3, p0, mAppWidgetId:I

    iget-object v4, p0, mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->unbind(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 1427
    :cond_1a
    const/4 v0, 0x1

    .line 1428
    goto :goto_6

    .line 1422
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method public hasStableIds()Z
    .registers 3

    .prologue
    .line 1296
    iget-object v1, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    .line 1297
    .local v0, "metaData":Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    monitor-enter v0

    .line 1298
    :try_start_7
    iget-boolean v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    monitor-exit v0

    return v1

    .line 1299
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isDataReady()Z
    .registers 2

    .prologue
    .line 938
    iget-boolean v0, p0, mDataReady:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1303
    invoke-virtual {p0}, getCount()I

    move-result v0

    if-gtz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public notifyDataSetChanged()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1392
    iget-object v0, p0, mMainQueue:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1396
    iget-object v0, p0, mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1397
    iput-boolean v1, p0, mNotifyDataSetChangedAfterOnServiceConnected:Z

    .line 1398
    invoke-direct {p0}, requestBindService()Z

    .line 1408
    :goto_13
    return-void

    .line 1402
    :cond_14
    iget-object v0, p0, mWorkerQueue:Landroid/os/Handler;

    new-instance v1, Landroid/widget/RemoteViewsAdapter$6;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViewsAdapter$6;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_13
.end method

.method public saveRemoteViewsCache()V
    .registers 9

    .prologue
    .line 946
    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    new-instance v4, Landroid/content/Intent$FilterComparison;

    iget-object v5, p0, mIntent:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    iget v5, p0, mAppWidgetId:I

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;-><init>(Landroid/content/Intent$FilterComparison;I)V

    .line 949
    .local v0, "key":Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;
    sget-object v5, sCachedRemoteViewsCaches:Ljava/util/HashMap;

    monitor-enter v5

    .line 951
    :try_start_11
    sget-object v4, sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 952
    sget-object v6, sCacheRemovalQueue:Landroid/os/Handler;

    sget-object v4, sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 953
    sget-object v4, sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    :cond_2b
    const/4 v1, 0x0

    .line 957
    .local v1, "metaDataCount":I
    const/4 v2, 0x0

    .line 958
    .local v2, "numRemoteViewsCached":I
    iget-object v4, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    # getter for: Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    invoke-static {v4}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->access$1200(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v6

    monitor-enter v6
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_6c

    .line 959
    :try_start_34
    iget-object v4, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    # getter for: Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mMetaData:Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    invoke-static {v4}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->access$1200(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v4

    iget v1, v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 960
    monitor-exit v6
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_69

    .line 961
    :try_start_3d
    iget-object v6, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v6
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_6c

    .line 962
    :try_start_40
    iget-object v4, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    # getter for: Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->mIndexRemoteViews:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->access$1300(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 963
    monitor-exit v6
    :try_end_4b
    .catchall {:try_start_40 .. :try_end_4b} :catchall_6f

    .line 964
    if-lez v1, :cond_56

    if-lez v2, :cond_56

    .line 965
    :try_start_4f
    sget-object v4, sCachedRemoteViewsCaches:Ljava/util/HashMap;

    iget-object v6, p0, mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    :cond_56
    new-instance v3, Landroid/widget/RemoteViewsAdapter$1;

    invoke-direct {v3, p0, v0}, Landroid/widget/RemoteViewsAdapter$1;-><init>(Landroid/widget/RemoteViewsAdapter;Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;)V

    .line 981
    .local v3, "r":Ljava/lang/Runnable;
    sget-object v4, sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    sget-object v4, sCacheRemovalQueue:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 983
    monitor-exit v5
    :try_end_68
    .catchall {:try_start_4f .. :try_end_68} :catchall_6c

    .line 984
    return-void

    .line 960
    .end local v3    # "r":Ljava/lang/Runnable;
    :catchall_69
    move-exception v4

    :try_start_6a
    monitor-exit v6
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    :try_start_6b
    throw v4

    .line 983
    .end local v1    # "metaDataCount":I
    .end local v2    # "numRemoteViewsCached":I
    :catchall_6c
    move-exception v4

    monitor-exit v5
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6c

    throw v4

    .line 963
    .restart local v1    # "metaDataCount":I
    .restart local v2    # "numRemoteViewsCached":I
    :catchall_6f
    move-exception v4

    :try_start_70
    monitor-exit v6
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    :try_start_71
    throw v4
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_6c
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 2
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 942
    iput-object p1, p0, mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 943
    return-void
.end method

.method public setVisibleRangeHint(II)V
    .registers 3
    .param p1, "lowerBound"    # I
    .param p2, "upperBound"    # I

    .prologue
    .line 1191
    iput p1, p0, mVisibleWindowLowerBound:I

    .line 1192
    iput p2, p0, mVisibleWindowUpperBound:I

    .line 1193
    return-void
.end method

.method superNotifyDataSetChanged()V
    .registers 1

    .prologue
    .line 1411
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1412
    return-void
.end method

.method public twSuperNotifyDataSetChanged()V
    .registers 1

    .prologue
    .line 1416
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1417
    return-void
.end method
