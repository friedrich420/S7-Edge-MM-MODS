.class public Lcom/android/settings/net/DataUsageAppRestrict;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DataUsageAppRestrict.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/net/DataUsageAppRestrict$AppListLoader;,
        Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;,
        Lcom/android/settings/net/DataUsageAppRestrict$AppItem;
    }
.end annotation


# static fields
.field private static loadingDialog:Landroid/app/ProgressDialog;

.field private static mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# instance fields
.field private divider:Landroid/graphics/drawable/Drawable;

.field private handler_loading:Landroid/os/Handler;

.field private mAdapter:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

.field private mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private final mAppListCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/net/DataUsageAppRestrict$AppItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppLoadingQue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBackGroundDataMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackgroundDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackgroundDataCallbacksExceptional:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mDataEnd:J

.field private mDataStart:J

.field private mDataTemplate:Landroid/net/NetworkTemplate;

.field private mExceptionalPackageNum:I

.field private mExceptionalPackages:[[Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mLoaderNum:I

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mShowWifi:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mSubscriberId:Ljava/lang/String;

.field private mTextDataWifi:Landroid/widget/TextView;

.field private mTextDescription:Landroid/widget/TextView;

.field private mTextDescription2:Landroid/widget/TextView;

.field private final mWifiCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 122
    sput-object v0, Lcom/android/settings/net/DataUsageAppRestrict;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 145
    sput-object v0, Lcom/android/settings/net/DataUsageAppRestrict;->loadingDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 143
    iput v3, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mExceptionalPackageNum:I

    .line 144
    iput v3, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mLoaderNum:I

    .line 160
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mBackGroundDataMap:Ljava/util/LinkedHashMap;

    .line 167
    new-array v0, v4, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.samsung.android.email.ui"

    aput-object v2, v1, v3

    const-string v2, "com.samsung.android.email.sync"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mExceptionalPackages:[[Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAppLoadingQue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 275
    new-instance v0, Lcom/android/settings/net/DataUsageAppRestrict$1;

    invoke-direct {v0, p0}, Lcom/android/settings/net/DataUsageAppRestrict$1;-><init>(Lcom/android/settings/net/DataUsageAppRestrict;)V

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 383
    new-instance v0, Lcom/android/settings/net/DataUsageAppRestrict$3;

    invoke-direct {v0, p0}, Lcom/android/settings/net/DataUsageAppRestrict$3;-><init>(Lcom/android/settings/net/DataUsageAppRestrict;)V

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->handler_loading:Landroid/os/Handler;

    .line 430
    new-instance v0, Lcom/android/settings/net/DataUsageAppRestrict$4;

    invoke-direct {v0, p0}, Lcom/android/settings/net/DataUsageAppRestrict$4;-><init>(Lcom/android/settings/net/DataUsageAppRestrict;)V

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 451
    new-instance v0, Lcom/android/settings/net/DataUsageAppRestrict$5;

    invoke-direct {v0, p0}, Lcom/android/settings/net/DataUsageAppRestrict$5;-><init>(Lcom/android/settings/net/DataUsageAppRestrict;)V

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mWifiCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 476
    new-instance v0, Lcom/android/settings/net/DataUsageAppRestrict$6;

    invoke-direct {v0, p0}, Lcom/android/settings/net/DataUsageAppRestrict$6;-><init>(Lcom/android/settings/net/DataUsageAppRestrict;)V

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mBackgroundDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 511
    new-instance v0, Lcom/android/settings/net/DataUsageAppRestrict$7;

    invoke-direct {v0, p0}, Lcom/android/settings/net/DataUsageAppRestrict$7;-><init>(Lcom/android/settings/net/DataUsageAppRestrict;)V

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mBackgroundDataCallbacksExceptional:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 637
    new-instance v0, Lcom/android/settings/net/DataUsageAppRestrict$8;

    invoke-direct {v0, p0}, Lcom/android/settings/net/DataUsageAppRestrict$8;-><init>(Lcom/android/settings/net/DataUsageAppRestrict;)V

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mHandler:Landroid/os/Handler;

    .line 657
    new-instance v0, Lcom/android/settings/net/DataUsageAppRestrict$9;

    invoke-direct {v0, p0}, Lcom/android/settings/net/DataUsageAppRestrict$9;-><init>(Lcom/android/settings/net/DataUsageAppRestrict;)V

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 668
    new-instance v0, Lcom/android/settings/net/DataUsageAppRestrict$10;

    invoke-direct {v0, p0}, Lcom/android/settings/net/DataUsageAppRestrict$10;-><init>(Lcom/android/settings/net/DataUsageAppRestrict;)V

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    .line 1068
    new-instance v0, Lcom/android/settings/net/DataUsageAppRestrict$11;

    invoke-direct {v0, p0}, Lcom/android/settings/net/DataUsageAppRestrict$11;-><init>(Lcom/android/settings/net/DataUsageAppRestrict;)V

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAppListCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method private DestroyLoader(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mLoaderManager:Landroid/app/LoaderManager;

    invoke-virtual {v0, p1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 655
    return-void
.end method

.method private UpdateExceptionalCase(I)V
    .locals 9
    .param p1, "category"    # I

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 594
    .local v5, "mPm":Landroid/content/pm/PackageManager;
    iget-object v6, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAppLoadingQue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 596
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mExceptionalPackages:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v4, v6, :cond_2

    .line 599
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mExceptionalPackages:[[Ljava/lang/String;

    aget-object v6, v6, v4

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 600
    .local v1, "AppInfo_exist":Landroid/content/pm/ApplicationInfo;
    iget-object v6, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mExceptionalPackages:[[Ljava/lang/String;

    aget-object v6, v6, v4

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 602
    .local v0, "AppInfo_additional":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 603
    .local v2, "args":Landroid/os/Bundle;
    const/4 v6, -0x1

    if-ne p1, v6, :cond_1

    .line 604
    const-string v6, "template"

    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 608
    :cond_0
    :goto_1
    const-string v6, "uid"

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 609
    const-string v6, "uid_exist"

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 610
    const-string v6, "fields"

    const/16 v7, 0xa

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 611
    iget-object v6, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAppLoadingQue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 612
    iget-object v6, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mLoaderManager:Landroid/app/LoaderManager;

    add-int/lit8 v7, v4, 0x3

    iget-object v8, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mBackgroundDataCallbacksExceptional:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v6, v7, v2, v8}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 596
    .end local v0    # "AppInfo_additional":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "AppInfo_exist":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "args":Landroid/os/Bundle;
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 605
    .restart local v0    # "AppInfo_additional":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "AppInfo_exist":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "args":Landroid/os/Bundle;
    :cond_1
    const/4 v6, -0x2

    if-ne p1, v6, :cond_0

    .line 606
    const-string v6, "template"

    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mWifiTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 614
    .end local v0    # "AppInfo_additional":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "AppInfo_exist":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "args":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    .line 615
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 618
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAppLoadingQue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 619
    iget-object v6, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mExceptionalPackages:[[Ljava/lang/String;

    array-length v6, v6

    iput v6, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mExceptionalPackageNum:I

    .line 620
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/net/DataUsageAppRestrict;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/net/DataUsageAppRestrict;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/NetworkPolicyManager;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/net/NetworkPolicyManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 108
    invoke-static {p0, p1, p2}, Lcom/android/settings/net/DataUsageAppRestrict;->setAppRestrictBackground(Landroid/net/NetworkPolicyManager;IZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/net/DataUsageAppRestrict;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/net/DataUsageAppRestrict;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAppLoadingQue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/net/DataUsageAppRestrict;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/net/DataUsageAppRestrict;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->checkLoadedExceptionalAppNum()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/net/DataUsageAppRestrict;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/net/DataUsageAppRestrict;

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mShowWifi:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/net/NetworkPolicyManager;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/NetworkPolicyManager;
    .param p1, "x1"    # I

    .prologue
    .line 108
    invoke-static {p0, p1}, Lcom/android/settings/net/DataUsageAppRestrict;->getAppRestrictBackground(Landroid/net/NetworkPolicyManager;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings/net/DataUsageAppRestrict;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/net/DataUsageAppRestrict;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/net/DataUsageAppRestrict;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/net/DataUsageAppRestrict;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->divider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/net/DataUsageAppRestrict;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/net/DataUsageAppRestrict;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/net/DataUsageAppRestrict;)Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/net/DataUsageAppRestrict;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/net/DataUsageAppRestrict;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/net/DataUsageAppRestrict;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->handler_loading:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/settings/net/DataUsageAppRestrict;->loadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/ProgressDialog;

    .prologue
    .line 108
    sput-object p0, Lcom/android/settings/net/DataUsageAppRestrict;->loadingDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$500()Lcom/android/settings/widget/SwitchBar;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/settings/net/DataUsageAppRestrict;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/net/DataUsageAppRestrict;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/net/DataUsageAppRestrict;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/net/DataUsageAppRestrict;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/net/DataUsageAppRestrict;
    .param p1, "x1"    # I

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/settings/net/DataUsageAppRestrict;->DestroyLoader(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/net/DataUsageAppRestrict;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/net/DataUsageAppRestrict;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mBackGroundDataMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/net/DataUsageAppRestrict;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/net/DataUsageAppRestrict;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->checkLoadedAppNum()V

    return-void
.end method

.method private checkLoadedAppNum()V
    .locals 3

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 402
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAppLoadingQue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 404
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mBackGroundDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->bindBackgroundDataStats(Ljava/util/LinkedHashMap;I)V

    .line 409
    invoke-direct {p0, v0}, Lcom/android/settings/net/DataUsageAppRestrict;->UpdateExceptionalCase(I)V

    .line 412
    :cond_1
    return-void
.end method

.method private checkLoadedExceptionalAppNum()V
    .locals 3

    .prologue
    .line 414
    monitor-enter p0

    .line 415
    :try_start_0
    iget v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mExceptionalPackageNum:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mExceptionalPackageNum:I

    .line 416
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    iget v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mExceptionalPackageNum:I

    if-nez v1, :cond_0

    .line 421
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAppLoadingQue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 422
    .local v0, "value":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 423
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 428
    .end local v0    # "value":I
    :cond_0
    :goto_0
    return-void

    .line 416
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 424
    .restart local v0    # "value":I
    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private static getAppRestrictBackground(Landroid/net/NetworkPolicyManager;I)Z
    .locals 3
    .param p0, "PolicyManager"    # Landroid/net/NetworkPolicyManager;
    .param p1, "uid"    # I

    .prologue
    .line 623
    const-string v1, "DataUsageAppRestrict"

    const-string v2, "getAppRestrictBackground()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-virtual {p0, p1}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v0

    .line 626
    .local v0, "uidPolicy":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static setAppRestrictBackground(Landroid/net/NetworkPolicyManager;IZ)V
    .locals 2
    .param p0, "PolicyManager"    # Landroid/net/NetworkPolicyManager;
    .param p1, "uid"    # I
    .param p2, "restrictBackground"    # Z

    .prologue
    .line 630
    const-string v0, "DataUsageAppRestrict"

    const-string v1, "setAppRestrictBackground()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 635
    return-void

    .line 632
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public UpdateNetworkHistoricalBackgroundData(Landroid/net/NetworkStats;I)V
    .locals 10
    .param p1, "data"    # Landroid/net/NetworkStats;
    .param p2, "category"    # I

    .prologue
    .line 551
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 552
    .local v0, "DataEntryMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Landroid/net/NetworkStats$Entry;>;"
    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    invoke-virtual {v7, p2}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->DataResetPreviousData(I)V

    .line 554
    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mBackGroundDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->clear()V

    .line 555
    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAppLoadingQue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 557
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v4

    .line 558
    .local v4, "size":I
    :goto_0
    const/4 v6, 0x0

    .line 560
    .local v6, "uidNum":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_4

    .line 561
    const/4 v2, 0x0

    .line 562
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual {p1, v3, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    .line 563
    iget v5, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 564
    .local v5, "uid":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 565
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    invoke-virtual {v7, v5}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->checkNeededUid(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 567
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 568
    .local v1, "args":Landroid/os/Bundle;
    const/4 v7, -0x1

    if-ne p2, v7, :cond_3

    .line 569
    const-string v7, "template"

    iget-object v8, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 573
    :cond_0
    :goto_2
    const-string v7, "uid"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 574
    const-string v7, "fields"

    const/16 v8, 0xa

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 576
    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mLoaderManager:Landroid/app/LoaderManager;

    add-int/lit8 v8, v6, 0x3

    iget-object v9, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mBackgroundDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v7, v8, v1, v9}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 578
    add-int/lit8 v6, v6, 0x1

    .line 579
    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAppLoadingQue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 560
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 557
    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v3    # "i":I
    .end local v4    # "size":I
    .end local v5    # "uid":I
    .end local v6    # "uidNum":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 570
    .restart local v1    # "args":Landroid/os/Bundle;
    .restart local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v3    # "i":I
    .restart local v4    # "size":I
    .restart local v5    # "uid":I
    .restart local v6    # "uidNum":I
    :cond_3
    const/4 v7, -0x2

    if-ne p2, v7, :cond_0

    .line 571
    const-string v7, "template"

    iget-object v8, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mWifiTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_2

    .line 583
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v5    # "uid":I
    :cond_4
    add-int/lit8 v7, v6, 0x3

    iput v7, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mLoaderNum:I

    .line 585
    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAppLoadingQue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v7}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 586
    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAppLoadingQue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 590
    return-void
.end method

.method public UpdateNetworkHistoricalData(I)V
    .locals 8
    .param p1, "category"    # I

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 539
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mSubscriberId:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataTemplate:Landroid/net/NetworkTemplate;

    .line 540
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mWifiTemplate:Landroid/net/NetworkTemplate;

    .line 541
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 542
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataTemplate:Landroid/net/NetworkTemplate;

    iget-wide v4, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataStart:J

    iget-wide v6, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataEnd:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/settings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    const/4 v1, -0x2

    if-ne p1, v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mWifiTemplate:Landroid/net/NetworkTemplate;

    iget-wide v4, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataStart:J

    iget-wide v6, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataEnd:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/settings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mWifiCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 164
    const/16 v0, 0x25

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 296
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    sput-object v1, Lcom/android/settings/net/DataUsageAppRestrict;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 297
    sget-object v1, Lcom/android/settings/net/DataUsageAppRestrict;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 298
    sget-object v1, Lcom/android/settings/net/DataUsageAppRestrict;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 300
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 173
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 175
    .local v2, "context":Landroid/content/Context;
    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 177
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 179
    const-string v5, "netstats"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mStatsService:Landroid/net/INetworkStatsService;

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mLoaderManager:Landroid/app/LoaderManager;

    .line 184
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v5}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 185
    const-string v5, "DataUsageAppRestrict"

    const-string v6, "No bandwidth control; leaving"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v5}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 199
    .local v1, "args":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 200
    const-string v5, "extra_data_start"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataStart:J

    .line 201
    const-string v5, "extra_data_end"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataEnd:J

    .line 202
    const-string v5, "extra_subscriberid"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mSubscriberId:Ljava/lang/String;

    .line 203
    const-string v5, "extra_show_wifi"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mShowWifi:Z

    .line 205
    :cond_1
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 206
    .local v4, "intFltr":Landroid/content/IntentFilter;
    const-string v5, "android.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    iget-object v5, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5, v4, v8, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 209
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 210
    .local v0, "allowFilter":Landroid/content/IntentFilter;
    const-string v5, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    iget-object v5, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    const-string v6, "android.permission.MANAGE_NETWORK_POLICY"

    invoke-virtual {v2, v5, v0, v6, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 213
    return-void

    .line 188
    .end local v0    # "allowFilter":Landroid/content/IntentFilter;
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v4    # "intFltr":Landroid/content/IntentFilter;
    :catch_0
    move-exception v3

    .line 189
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "DataUsageAppRestrict"

    const-string v6, "No bandwidth control; leaving"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 195
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 196
    .restart local v3    # "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 218
    const/4 v10, 0x0

    .line 219
    .local v10, "view":Landroid/view/View;
    const/4 v11, 0x0

    .line 220
    .local v11, "view_header":Landroid/view/View;
    const v1, 0x7f04002b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 222
    const v1, 0x7f04002c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 223
    const v1, 0x7f0d00ad

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mTextDescription:Landroid/widget/TextView;

    .line 224
    const v1, 0x7f0d00ae

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mTextDescription2:Landroid/widget/TextView;

    .line 225
    const v1, 0x7f0d00af

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mTextDataWifi:Landroid/widget/TextView;

    .line 226
    const v1, 0x7f0d00b1

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mProgressBar:Landroid/widget/ProgressBar;

    .line 227
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 230
    invoke-static {}, Lcom/android/settings/Utils;->getAppDataRestrictionType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 231
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mTextDescription:Landroid/widget/TextView;

    const v2, 0x7f0e166f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 232
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mTextDescription2:Landroid/widget/TextView;

    const v2, 0x7f0e1670

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 240
    :cond_0
    :goto_0
    const v1, 0x102000a

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mListView:Landroid/widget/ListView;

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 242
    .local v8, "mPm":Landroid/content/pm/PackageManager;
    new-instance v1, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    iget-boolean v2, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mShowWifi:Z

    iget-object v3, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v1, v8, v2, v3}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;-><init>(Landroid/content/pm/PackageManager;ZLandroid/net/NetworkPolicyManager;)V

    iput-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    .line 243
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    iget-wide v2, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataStart:J

    iget-wide v6, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataEnd:J

    invoke-virtual {v1, v2, v3, v6, v7}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->setCycle(JJ)V

    .line 244
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v11, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 250
    .local v9, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0c00a2

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0c00b0

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    const v2, 0x7f0c00ac

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int v4, v1, v2

    .line 253
    .local v4, "divider_inset_size":I
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 254
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 256
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 263
    :goto_1
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->divider:Landroid/graphics/drawable/Drawable;

    .line 264
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 266
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAppListCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v3, v5}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 268
    iget-boolean v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mShowWifi:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 270
    :cond_1
    const-string v1, "DataUsageAppRestrict"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-object v10

    .line 234
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v4    # "divider_inset_size":I
    .end local v8    # "mPm":Landroid/content/pm/PackageManager;
    .end local v9    # "resources":Landroid/content/res/Resources;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mTextDescription2:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    iget-boolean v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mShowWifi:Z

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mTextDescription:Landroid/widget/TextView;

    const v2, 0x7f0e166a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 237
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mTextDataWifi:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 258
    .restart local v4    # "divider_inset_size":I
    .restart local v8    # "mPm":Landroid/content/pm/PackageManager;
    .restart local v9    # "resources":Landroid/content/res/Resources;
    :cond_3
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 260
    .restart local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 334
    sget-object v0, Lcom/android/settings/net/DataUsageAppRestrict;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 335
    sget-object v0, Lcom/android/settings/net/DataUsageAppRestrict;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    sget-object v0, Lcom/android/settings/net/DataUsageAppRestrict;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 337
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/net/DataUsageAppRestrict;->loadingDialog:Landroid/app/ProgressDialog;

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 343
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 344
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 327
    sget-object v0, Lcom/android/settings/net/DataUsageAppRestrict;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 328
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 329
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 315
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 316
    sget-object v0, Lcom/android/settings/net/DataUsageAppRestrict;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 317
    sget-object v0, Lcom/android/settings/net/DataUsageAppRestrict;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 318
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 303
    const-string v0, "DataUsageAppRestrict"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 306
    sget-object v1, Lcom/android/settings/net/DataUsageAppRestrict;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 307
    sget-object v0, Lcom/android/settings/net/DataUsageAppRestrict;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 309
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    invoke-virtual {v0}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/net/DataUsageAppRestrict;->UpdateNetworkHistoricalData(I)V

    .line 311
    :cond_0
    return-void

    .line 306
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 322
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 323
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 348
    sget-object v0, Lcom/android/settings/net/DataUsageAppRestrict;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 351
    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/net/DataUsageAppRestrict;->setRestrictBackground(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setRestrictBackground(Z)V
    .locals 9
    .param p1, "restrictBackground"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 357
    .local v0, "context":Landroid/content/Context;
    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 360
    .local v1, "mPhone":Landroid/telephony/TelephonyManager;
    move v2, p1

    .line 361
    .local v2, "mRestrictBackground":Z
    iget-object v4, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v4}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v4

    if-eq v4, v2, :cond_3

    .line 362
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticLGTModel()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 363
    const-string v7, "persist.sys.restrict_background"

    if-eqz p1, :cond_1

    const-string v4, "true"

    :goto_0
    invoke-static {v7, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_0
    const-string v4, ""

    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0160

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v4, v7, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    sput-object v4, Lcom/android/settings/net/DataUsageAppRestrict;->loadingDialog:Landroid/app/ProgressDialog;

    .line 366
    sget-object v4, Lcom/android/settings/net/DataUsageAppRestrict;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 367
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "data_powersaving_mode"

    if-eqz v2, :cond_2

    move v4, v5

    :goto_1
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 368
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/settings/net/DataUsageAppRestrict$2;

    invoke-direct {v4, p0, v2, v0}, Lcom/android/settings/net/DataUsageAppRestrict$2;-><init>(Lcom/android/settings/net/DataUsageAppRestrict;ZLandroid/content/Context;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 377
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 381
    .end local v3    # "thread":Ljava/lang/Thread;
    :goto_2
    return-void

    .line 363
    :cond_1
    const-string v4, "false"

    goto :goto_0

    :cond_2
    move v4, v6

    .line 367
    goto :goto_1

    .line 379
    :cond_3
    iget-object v4, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    sget-object v5, Lcom/android/settings/net/DataUsageAppRestrict;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->setEnabled(Z)V

    goto :goto_2
.end method
