.class public Lcom/android/settings/notification/PriorityNotiAppList;
.super Lcom/android/settings/PinnedHeaderListFragment;
.source "PriorityNotiAppList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/PriorityNotiAppList$AppRow;,
        Lcom/android/settings/notification/PriorityNotiAppList$Row;,
        Lcom/android/settings/notification/PriorityNotiAppList$ClickListener;,
        Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;,
        Lcom/android/settings/notification/PriorityNotiAppList$ViewHolder;
    }
.end annotation


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/notification/PriorityNotiAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private excludeKnoxApp:[Ljava/lang/String;

.field private hide_app_list:Ljava/lang/String;

.field private hide_app_notification_list:[Ljava/lang/String;

.field private mAdapter:Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

.field private final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mExplanationDivider:Landroid/view/View;

.field private mExplanationTextView:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mHideApp:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mListViewState:Landroid/os/Parcelable;

.field private mPM:Landroid/content/pm/PackageManager;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/notification/PriorityNotiAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/notification/PriorityNotiAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "PriorityNotiAppList"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/PriorityNotiAppList;->DEBUG:Z

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/PriorityNotiAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 477
    new-instance v0, Lcom/android/settings/notification/PriorityNotiAppList$3;

    invoke-direct {v0}, Lcom/android/settings/notification/PriorityNotiAppList$3;-><init>()V

    sput-object v0, Lcom/android/settings/notification/PriorityNotiAppList;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/PinnedHeaderListFragment;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mSortedRows:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mRows:Landroid/util/ArrayMap;

    .line 67
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 71
    iput-boolean v2, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mHideApp:Z

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mSections:Ljava/util/ArrayList;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->hide_app_list:Ljava/lang/String;

    .line 75
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.knox.switchknoxI"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.sec.knox.switchknoxII"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.sec.knox.containeragent2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.sec.knox.shortcutsms"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sec.knox.switcher"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->excludeKnoxApp:[Ljava/lang/String;

    .line 158
    new-instance v0, Lcom/android/settings/notification/PriorityNotiAppList$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/PriorityNotiAppList$1;-><init>(Lcom/android/settings/notification/PriorityNotiAppList;)V

    iput-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    .line 255
    new-instance v0, Lcom/android/settings/notification/PriorityNotiAppList$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/PriorityNotiAppList$2;-><init>(Lcom/android/settings/notification/PriorityNotiAppList;)V

    iput-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    .line 465
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/PriorityNotiAppList;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/PriorityNotiAppList;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/android/settings/notification/PriorityNotiAppList;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/settings/notification/PriorityNotiAppList;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/notification/PriorityNotiAppList;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/PriorityNotiAppList;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/notification/PriorityNotiAppList;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/PriorityNotiAppList;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/notification/PriorityNotiAppList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/PriorityNotiAppList;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/notification/PriorityNotiAppList;->refreshDisplayedItems()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/notification/PriorityNotiAppList;)Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/PriorityNotiAppList;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mAdapter:Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/notification/PriorityNotiAppList;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/PriorityNotiAppList;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/notification/PriorityNotiAppList;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/PriorityNotiAppList;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/PriorityNotiAppList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/PriorityNotiAppList;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/PriorityNotiAppList;)Landroid/content/pm/LauncherApps;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/PriorityNotiAppList;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/PackageManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Lcom/android/settings/notification/PriorityNotiAppList;->findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/PriorityNotiAppList;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/PriorityNotiAppList;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/PriorityNotiAppList;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/PriorityNotiAppList;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->excludeKnoxApp:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/notification/PriorityNotiAppList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/PriorityNotiAppList;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mHideApp:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/notification/PriorityNotiAppList;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/PriorityNotiAppList;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->hide_app_notification_list:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/notification/PriorityNotiAppList;)Lcom/android/settings/notification/NotificationBackend;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/PriorityNotiAppList;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-object v0
.end method

.method public static applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/notification/PriorityNotiAppList$AppRow;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings/notification/PriorityNotiAppList$AppRow;>;"
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v5, Lcom/android/settings/notification/PriorityNotiAppList;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v6, "PriorityNotiAppList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " preference activities"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    const-string v5, " ;_;"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 339
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 340
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 341
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;

    .line 342
    .local v4, "row":Lcom/android/settings/notification/PriorityNotiAppList$AppRow;
    if-nez v4, :cond_2

    .line 343
    const-string v5, "PriorityNotiAppList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") for unknown package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 336
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/settings/notification/PriorityNotiAppList$AppRow;
    :cond_1
    const-string v5, ""

    goto :goto_0

    .line 348
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "row":Lcom/android/settings/notification/PriorityNotiAppList$AppRow;
    :cond_2
    iget-object v5, v4, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    .line 349
    const-string v5, "PriorityNotiAppList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 354
    :cond_3
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/android/settings/notification/PriorityNotiAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    goto :goto_1

    .line 357
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/settings/notification/PriorityNotiAppList$AppRow;
    :cond_4
    return-void
.end method

.method private static findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 486
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 488
    array-length v0, v4

    .line 489
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 490
    aget-object v3, v4, v2

    .line 491
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 493
    const/16 v5, 0x40

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 500
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 494
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "p":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 495
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "PriorityNotiAppList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 489
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 500
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/notification/NotificationBackend;)Lcom/android/settings/notification/PriorityNotiAppList$AppRow;
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backend"    # Lcom/android/settings/notification/NotificationBackend;

    .prologue
    const/4 v5, 0x1

    .line 299
    new-instance v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;

    invoke-direct {v0}, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;-><init>()V

    .line 300
    .local v0, "row":Lcom/android/settings/notification/PriorityNotiAppList$AppRow;
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->pkg:Ljava/lang/String;

    .line 301
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->uid:I

    .line 303
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    invoke-virtual {p1, p0, v5, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 309
    iget-object v2, v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->banned:Z

    .line 310
    iget-object v2, v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getHighPriority(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->priority:Z

    .line 311
    iget-object v2, v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getSensitive(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->sensitive:Z

    .line 312
    return-object v0

    .line 304
    :catch_0
    move-exception v1

    .line 305
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "PriorityNotiAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    iget-object v2, v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private loadAppsList()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 156
    return-void
.end method

.method public static queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    sget-boolean v1, Lcom/android/settings/notification/PriorityNotiAppList;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "PriorityNotiAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/notification/PriorityNotiAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    sget-object v1, Lcom/android/settings/notification/PriorityNotiAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 322
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private refreshDisplayedItems()V
    .locals 8

    .prologue
    .line 268
    sget-boolean v5, Lcom/android/settings/notification/PriorityNotiAppList;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "PriorityNotiAppList"

    const-string v6, "Refreshing apps..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    iget-object v5, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mAdapter:Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    invoke-virtual {v5}, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->clear()V

    .line 270
    iget-object v6, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mSortedRows:Ljava/util/ArrayList;

    monitor-enter v6

    .line 271
    const/4 v4, 0x0

    .line 272
    .local v4, "section":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 273
    .local v0, "N":I
    const/4 v1, 0x1

    .line 274
    .local v1, "first":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 275
    iget-object v5, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;

    .line 284
    .local v3, "row":Lcom/android/settings/notification/PriorityNotiAppList$AppRow;
    iput-boolean v1, v3, Lcom/android/settings/notification/PriorityNotiAppList$AppRow;->first:Z

    .line 285
    iget-object v5, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mAdapter:Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    invoke-virtual {v5, v3}, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;->add(Ljava/lang/Object;)V

    .line 286
    const/4 v1, 0x0

    .line 274
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    .end local v3    # "row":Lcom/android/settings/notification/PriorityNotiAppList$AppRow;
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    iget-object v5, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mListViewState:Landroid/os/Parcelable;

    if-eqz v5, :cond_3

    .line 290
    sget-boolean v5, Lcom/android/settings/notification/PriorityNotiAppList;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "PriorityNotiAppList"

    const-string v6, "Restoring listView state"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/PriorityNotiAppList;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mListViewState:Landroid/os/Parcelable;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 292
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mListViewState:Landroid/os/Parcelable;

    .line 294
    :cond_3
    sget-boolean v5, Lcom/android/settings/notification/PriorityNotiAppList;->DEBUG:Z

    if-eqz v5, :cond_4

    const-string v5, "PriorityNotiAppList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Refreshed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " displayed items"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_4
    return-void

    .line 288
    .end local v0    # "N":I
    .end local v1    # "first":Z
    .end local v2    # "i":I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/android/settings/PinnedHeaderListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/notification/PriorityNotiAppList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mAdapter:Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/notification/PriorityNotiAppList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 133
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/PinnedHeaderListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/notification/PriorityNotiAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mContext:Landroid/content/Context;

    .line 93
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mPM:Landroid/content/pm/PackageManager;

    .line 94
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 97
    new-instance v0, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    iget-object v1, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;-><init>(Lcom/android/settings/notification/PriorityNotiAppList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mAdapter:Lcom/android/settings/notification/PriorityNotiAppList$NotificationAppAdapter;

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/notification/PriorityNotiAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e0e45

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 99
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->hide_app_list:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->hide_app_list:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->hide_app_list:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iput-boolean v2, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mHideApp:Z

    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->hide_app_list:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->hide_app_notification_list:[Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->hide_app_notification_list:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 104
    const-string v0, "PriorityNotiAppList"

    const-string v1, "Hide app notification list is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mHideApp:Z

    .line 108
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/PriorityNotiAppList;->setHasOptionsMenu(Z)V

    .line 110
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    .line 116
    const v1, 0x7f040043

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "view":Landroid/view/View;
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mTextView:Landroid/widget/TextView;

    .line 118
    const v1, 0x7f0d00e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mExplanationTextView:Landroid/widget/TextView;

    .line 119
    iget-object v1, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mExplanationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    const v1, 0x7f0d00e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mExplanationDivider:Landroid/view/View;

    .line 122
    iget-object v1, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mExplanationDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 124
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/settings/PinnedHeaderListFragment;->onDestroyView()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mListViewState:Landroid/os/Parcelable;

    .line 145
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 149
    invoke-super {p0}, Lcom/android/settings/PinnedHeaderListFragment;->onPause()V

    .line 150
    sget-boolean v0, Lcom/android/settings/notification/PriorityNotiAppList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PriorityNotiAppList"

    const-string v1, "Saving listView state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/PriorityNotiAppList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/PriorityNotiAppList;->mListViewState:Landroid/os/Parcelable;

    .line 152
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 137
    invoke-super {p0}, Lcom/android/settings/PinnedHeaderListFragment;->onResume()V

    .line 138
    invoke-direct {p0}, Lcom/android/settings/notification/PriorityNotiAppList;->loadAppsList()V

    .line 139
    return-void
.end method
