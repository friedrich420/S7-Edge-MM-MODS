.class public Lcom/android/settings/notification/BlockNotificationList;
.super Lcom/android/settings/PinnedHeaderListFragment;
.source "BlockNotificationList.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/BlockNotificationList$AppRow;,
        Lcom/android/settings/notification/BlockNotificationList$Row;,
        Lcom/android/settings/notification/BlockNotificationList$ClickListener;,
        Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;,
        Lcom/android/settings/notification/BlockNotificationList$ViewHolder;
    }
.end annotation


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/notification/BlockNotificationList$AppRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private excludeKnoxApp:[Ljava/lang/String;

.field private hide_app_list:Ljava/lang/String;

.field private hide_app_notification_list:[Ljava/lang/String;

.field private mAdapter:Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;

.field private final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

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
            "Lcom/android/settings/notification/BlockNotificationList$AppRow;",
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
            "Lcom/android/settings/notification/BlockNotificationList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    const-string v0, "BlockNotificationList"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/BlockNotificationList;->DEBUG:Z

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/BlockNotificationList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 539
    new-instance v0, Lcom/android/settings/notification/BlockNotificationList$3;

    invoke-direct {v0}, Lcom/android/settings/notification/BlockNotificationList$3;-><init>()V

    sput-object v0, Lcom/android/settings/notification/BlockNotificationList;->mRowComparator:Ljava/util/Comparator;

    .line 565
    new-instance v0, Lcom/android/settings/notification/BlockNotificationList$4;

    invoke-direct {v0}, Lcom/android/settings/notification/BlockNotificationList$4;-><init>()V

    sput-object v0, Lcom/android/settings/notification/BlockNotificationList;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Lcom/android/settings/PinnedHeaderListFragment;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mRows:Landroid/util/ArrayMap;

    .line 92
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 96
    iput-boolean v2, p0, Lcom/android/settings/notification/BlockNotificationList;->mHideApp:Z

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mSections:Ljava/util/ArrayList;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->hide_app_list:Ljava/lang/String;

    .line 100
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

    iput-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->excludeKnoxApp:[Ljava/lang/String;

    .line 208
    new-instance v0, Lcom/android/settings/notification/BlockNotificationList$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/BlockNotificationList$1;-><init>(Lcom/android/settings/notification/BlockNotificationList;)V

    iput-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    .line 314
    new-instance v0, Lcom/android/settings/notification/BlockNotificationList$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/BlockNotificationList$2;-><init>(Lcom/android/settings/notification/BlockNotificationList;)V

    iput-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    .line 527
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/BlockNotificationList;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/android/settings/notification/BlockNotificationList;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1000()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/settings/notification/BlockNotificationList;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/notification/BlockNotificationList;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/BlockNotificationList;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/notification/BlockNotificationList;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/BlockNotificationList;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/notification/BlockNotificationList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/BlockNotificationList;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings/notification/BlockNotificationList;->refreshDisplayedItems()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/notification/BlockNotificationList;)Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/BlockNotificationList;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mAdapter:Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/notification/BlockNotificationList;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/BlockNotificationList;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/notification/BlockNotificationList;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/BlockNotificationList;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/BlockNotificationList;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/BlockNotificationList;)Landroid/content/pm/LauncherApps;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/BlockNotificationList;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/PackageManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 79
    invoke-static {p0, p1, p2}, Lcom/android/settings/notification/BlockNotificationList;->findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notification/BlockNotificationList;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/BlockNotificationList;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/BlockNotificationList;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/BlockNotificationList;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->excludeKnoxApp:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/notification/BlockNotificationList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/BlockNotificationList;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mHideApp:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/notification/BlockNotificationList;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/BlockNotificationList;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->hide_app_notification_list:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/notification/BlockNotificationList;)Lcom/android/settings/notification/NotificationBackend;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/BlockNotificationList;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mBackend:Lcom/android/settings/notification/NotificationBackend;

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
            "Lcom/android/settings/notification/BlockNotificationList$AppRow;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings/notification/BlockNotificationList$AppRow;>;"
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v5, Lcom/android/settings/notification/BlockNotificationList;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v6, "BlockNotificationList"

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

    .line 400
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

    .line 401
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 402
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 403
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/notification/BlockNotificationList$AppRow;

    .line 404
    .local v4, "row":Lcom/android/settings/notification/BlockNotificationList$AppRow;
    if-nez v4, :cond_2

    .line 405
    const-string v5, "BlockNotificationList"

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

    .line 398
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/settings/notification/BlockNotificationList$AppRow;
    :cond_1
    const-string v5, ""

    goto :goto_0

    .line 410
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "row":Lcom/android/settings/notification/BlockNotificationList$AppRow;
    :cond_2
    iget-object v5, v4, Lcom/android/settings/notification/BlockNotificationList$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    .line 411
    const-string v5, "BlockNotificationList"

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

    .line 416
    :cond_3
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/android/settings/notification/BlockNotificationList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings/notification/BlockNotificationList$AppRow;->settingsIntent:Landroid/content/Intent;

    goto :goto_1

    .line 419
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v4    # "row":Lcom/android/settings/notification/BlockNotificationList$AppRow;
    :cond_4
    return-void
.end method

.method private callAdvancedAppNotifications()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 163
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v0, "classname"

    const-string v1, "com.android.settings.Settings$NotificationAppListActivity"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const v5, 0x7f0e1653

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method private static findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 548
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 549
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 550
    array-length v0, v4

    .line 551
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 552
    aget-object v3, v4, v2

    .line 553
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 555
    const/16 v5, 0x40

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 562
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 556
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "p":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 557
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "BlockNotificationList"

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

    .line 551
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 562
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/notification/NotificationBackend;)Lcom/android/settings/notification/BlockNotificationList$AppRow;
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backend"    # Lcom/android/settings/notification/NotificationBackend;

    .prologue
    const/4 v5, 0x1

    .line 361
    new-instance v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;

    invoke-direct {v0}, Lcom/android/settings/notification/BlockNotificationList$AppRow;-><init>()V

    .line 362
    .local v0, "row":Lcom/android/settings/notification/BlockNotificationList$AppRow;
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    .line 363
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    .line 365
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_0
    invoke-virtual {p1, p0, v5, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 371
    iget-object v2, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->banned:Z

    .line 372
    iget-object v2, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getHighPriority(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->priority:Z

    .line 373
    iget-object v2, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/notification/NotificationBackend;->getSensitive(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->sensitive:Z

    .line 374
    return-object v0

    .line 366
    :catch_0
    move-exception v1

    .line 367
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "BlockNotificationList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 368
    iget-object v2, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/notification/BlockNotificationList$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private loadAppsList()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 206
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
    .line 378
    sget-boolean v1, Lcom/android/settings/notification/BlockNotificationList;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BlockNotificationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/notification/BlockNotificationList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    sget-object v1, Lcom/android/settings/notification/BlockNotificationList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 384
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object v0
.end method

.method private refreshDisplayedItems()V
    .locals 9

    .prologue
    .line 326
    sget-boolean v6, Lcom/android/settings/notification/BlockNotificationList;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "BlockNotificationList"

    const-string v7, "Refreshing apps..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_0
    iget-object v6, p0, Lcom/android/settings/notification/BlockNotificationList;->mAdapter:Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;

    invoke-virtual {v6}, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->clear()V

    .line 328
    iget-object v7, p0, Lcom/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    monitor-enter v7

    .line 329
    const/4 v5, 0x0

    .line 330
    .local v5, "section":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 331
    .local v0, "N":I
    const/4 v2, 0x1

    .line 332
    .local v2, "first":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 333
    iget-object v6, p0, Lcom/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/notification/BlockNotificationList$AppRow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    .local v4, "row":Lcom/android/settings/notification/BlockNotificationList$AppRow;
    :try_start_1
    iput-boolean v2, v4, Lcom/android/settings/notification/BlockNotificationList$AppRow;->first:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/android/settings/notification/BlockNotificationList;->mAdapter:Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;

    invoke-virtual {v6, v4}, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;->add(Ljava/lang/Object;)V

    .line 348
    const/4 v2, 0x0

    .line 332
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 344
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 350
    .end local v0    # "N":I
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v2    # "first":Z
    .end local v3    # "i":I
    .end local v4    # "row":Lcom/android/settings/notification/BlockNotificationList$AppRow;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v0    # "N":I
    .restart local v2    # "first":Z
    .restart local v3    # "i":I
    :cond_1
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 351
    iget-object v6, p0, Lcom/android/settings/notification/BlockNotificationList;->mListViewState:Landroid/os/Parcelable;

    if-eqz v6, :cond_3

    .line 352
    sget-boolean v6, Lcom/android/settings/notification/BlockNotificationList;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "BlockNotificationList"

    const-string v7, "Restoring listView state"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/BlockNotificationList;->getListView()Landroid/widget/ListView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/notification/BlockNotificationList;->mListViewState:Landroid/os/Parcelable;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 354
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/settings/notification/BlockNotificationList;->mListViewState:Landroid/os/Parcelable;

    .line 356
    :cond_3
    sget-boolean v6, Lcom/android/settings/notification/BlockNotificationList;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "BlockNotificationList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Refreshed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " displayed items"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_4
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/android/settings/PinnedHeaderListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/notification/BlockNotificationList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/BlockNotificationList;->mAdapter:Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/notification/BlockNotificationList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 183
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 116
    invoke-super {p0, p1}, Lcom/android/settings/PinnedHeaderListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mPM:Landroid/content/pm/PackageManager;

    .line 120
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mInflater:Landroid/view/LayoutInflater;

    .line 122
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 123
    new-instance v0, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;

    iget-object v1, p0, Lcom/android/settings/notification/BlockNotificationList;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;-><init>(Lcom/android/settings/notification/BlockNotificationList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mAdapter:Lcom/android/settings/notification/BlockNotificationList$NotificationAppAdapter;

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e05c1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 129
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->hide_app_list:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->hide_app_list:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->hide_app_list:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iput-boolean v2, p0, Lcom/android/settings/notification/BlockNotificationList;->mHideApp:Z

    .line 132
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->hide_app_list:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->hide_app_notification_list:[Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->hide_app_notification_list:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 134
    const-string v0, "BlockNotificationList"

    const-string v1, "Hide app notification list is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mHideApp:Z

    .line 138
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/BlockNotificationList;->setHasOptionsMenu(Z)V

    .line 140
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 145
    const/4 v1, 0x2

    const v2, 0x7f0e0b7a

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 146
    .local v0, "item":Landroid/view/MenuItem;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 148
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 172
    const v1, 0x7f040043

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 173
    .local v0, "view":Landroid/view/View;
    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/notification/BlockNotificationList;->mTextView:Landroid/widget/TextView;

    .line 174
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Lcom/android/settings/PinnedHeaderListFragment;->onDestroyView()V

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mListViewState:Landroid/os/Parcelable;

    .line 195
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 152
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/PinnedHeaderListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 154
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/notification/BlockNotificationList;->callAdvancedAppNotifications()V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Lcom/android/settings/PinnedHeaderListFragment;->onPause()V

    .line 200
    sget-boolean v0, Lcom/android/settings/notification/BlockNotificationList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BlockNotificationList"

    const-string v1, "Saving listView state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/BlockNotificationList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/BlockNotificationList;->mListViewState:Landroid/os/Parcelable;

    .line 202
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 187
    invoke-super {p0}, Lcom/android/settings/PinnedHeaderListFragment;->onResume()V

    .line 188
    invoke-direct {p0}, Lcom/android/settings/notification/BlockNotificationList;->loadAppsList()V

    .line 189
    return-void
.end method
