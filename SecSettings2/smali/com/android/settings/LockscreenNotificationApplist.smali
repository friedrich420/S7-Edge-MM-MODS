.class public Lcom/android/settings/LockscreenNotificationApplist;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockscreenNotificationApplist.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LockscreenNotificationApplist$Backend;,
        Lcom/android/settings/LockscreenNotificationApplist$AppData;,
        Lcom/android/settings/LockscreenNotificationApplist$AppRow;,
        Lcom/android/settings/LockscreenNotificationApplist$Row;
    }
.end annotation


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mAppArray:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/LockscreenNotificationApplist$AppData;",
            ">;"
        }
    .end annotation
.end field

.field public static mBackend:Lcom/android/settings/LockscreenNotificationApplist$Backend;

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/LockscreenNotificationApplist$AppRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field edit:Landroid/content/SharedPreferences$Editor;

.field private hide_app_list:Ljava/lang/String;

.field private hide_app_notification_list:[Ljava/lang/String;

.field private mAllApps:Landroid/preference/SwitchPreference;

.field mAppPreference:Landroid/preference/SwitchPreference;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHideApp:Z

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mListViewState:Landroid/os/Parcelable;

.field private mLockscreen:Lcom/android/settings/DropDownPreference;

.field private mLockscreenSelectedValue:I

.field private mPM:Landroid/content/pm/PackageManager;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/LockscreenNotificationApplist$AppRow;",
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

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/LockscreenNotificationApplist$AppRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "LockNotificationApplist"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/LockscreenNotificationApplist;->DEBUG:Z

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/LockscreenNotificationApplist;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    .line 97
    new-instance v0, Lcom/android/settings/LockscreenNotificationApplist$Backend;

    invoke-direct {v0}, Lcom/android/settings/LockscreenNotificationApplist$Backend;-><init>()V

    sput-object v0, Lcom/android/settings/LockscreenNotificationApplist;->mBackend:Lcom/android/settings/LockscreenNotificationApplist$Backend;

    .line 118
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/settings/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    .line 345
    new-instance v0, Lcom/android/settings/LockscreenNotificationApplist$3;

    invoke-direct {v0}, Lcom/android/settings/LockscreenNotificationApplist$3;-><init>()V

    sput-object v0, Lcom/android/settings/LockscreenNotificationApplist;->mRowComparator:Ljava/util/Comparator;

    .line 747
    new-instance v0, Lcom/android/settings/LockscreenNotificationApplist$6;

    invoke-direct {v0}, Lcom/android/settings/LockscreenNotificationApplist$6;-><init>()V

    sput-object v0, Lcom/android/settings/LockscreenNotificationApplist;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mRows:Landroid/util/ArrayMap;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSections:Ljava/util/ArrayList;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mHideApp:Z

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    .line 420
    new-instance v0, Lcom/android/settings/LockscreenNotificationApplist$4;

    invoke-direct {v0, p0}, Lcom/android/settings/LockscreenNotificationApplist$4;-><init>(Lcom/android/settings/LockscreenNotificationApplist;)V

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mCollectAppsRunnable:Ljava/lang/Runnable;

    .line 594
    new-instance v0, Lcom/android/settings/LockscreenNotificationApplist$5;

    invoke-direct {v0, p0}, Lcom/android/settings/LockscreenNotificationApplist$5;-><init>(Lcom/android/settings/LockscreenNotificationApplist;)V

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    .line 602
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LockscreenNotificationApplist;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenNotificationApplist;

    .prologue
    .line 74
    iget v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreenSelectedValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/LockscreenNotificationApplist;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LockscreenNotificationApplist;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreenSelectedValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/LockscreenNotificationApplist;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenNotificationApplist;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/LockscreenNotificationApplist;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenNotificationApplist;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/LockscreenNotificationApplist;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenNotificationApplist;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/LockscreenNotificationApplist;->getSection(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/LockscreenNotificationApplist;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenNotificationApplist;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenNotificationApplist;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/LockscreenNotificationApplist;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LockscreenNotificationApplist;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->refreshDisplayedItems()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenNotificationApplist;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/settings/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/LockscreenNotificationApplist;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenNotificationApplist;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/LockscreenNotificationApplist;->getVisibilityString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenNotificationApplist;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenNotificationApplist;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/settings/LockscreenNotificationApplist;->DEBUG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/LockscreenNotificationApplist;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenNotificationApplist;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/LockscreenNotificationApplist;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getEnabledItemCount()I
    .locals 7

    .prologue
    .line 720
    const/4 v0, 0x0

    .line 721
    .local v0, "cnt":I
    iget-object v4, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    .line 722
    .local v2, "r":Lcom/android/settings/LockscreenNotificationApplist$AppRow;
    sget-object v4, Lcom/android/settings/LockscreenNotificationApplist;->mBackend:Lcom/android/settings/LockscreenNotificationApplist$Backend;

    iget-object v5, v2, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v6, v2, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/LockscreenNotificationApplist$Backend;->getShowonSharedeLocked(Ljava/lang/String;I)Z

    move-result v3

    .line 723
    .local v3, "state":Z
    if-nez v3, :cond_0

    .line 724
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    .end local v2    # "r":Lcom/android/settings/LockscreenNotificationApplist$AppRow;
    .end local v3    # "state":Z
    :cond_1
    return v0
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getSection(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 321
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "*"

    .line 325
    :goto_0
    return-object v1

    .line 322
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 323
    .local v0, "c":C
    const/16 v1, 0x41

    if-ge v0, v1, :cond_2

    const-string v1, "*"

    goto :goto_0

    .line 324
    :cond_2
    const/16 v1, 0x5a

    if-le v0, v1, :cond_3

    const-string v1, "**"

    goto :goto_0

    .line 325
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getVisibilityString(I)Ljava/lang/String;
    .locals 2
    .param p1, "val"    # I

    .prologue
    .line 732
    packed-switch p1, :pswitch_data_0

    .line 735
    const-string v1, "show_content"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 738
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_0
    const-string v1, "hide_contents"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 739
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 741
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_1
    const-string v1, "do_not_show_notifications"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 732
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/LockscreenNotificationApplist$Backend;)Lcom/android/settings/LockscreenNotificationApplist$AppRow;
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "backend"    # Lcom/android/settings/LockscreenNotificationApplist$Backend;

    .prologue
    .line 364
    new-instance v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    invoke-direct {v0}, Lcom/android/settings/LockscreenNotificationApplist$AppRow;-><init>()V

    .line 365
    .local v0, "row":Lcom/android/settings/LockscreenNotificationApplist$AppRow;
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    .line 366
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->uid:I

    .line 368
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 374
    iget-object v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/LockscreenNotificationApplist$Backend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->banned:Z

    .line 375
    iget-object v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/LockscreenNotificationApplist$Backend;->getHighPriority(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->priority:Z

    .line 376
    iget-object v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/LockscreenNotificationApplist$Backend;->getSensitive(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->sensitive:Z

    .line 377
    iget-object v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {p2, v2, v3}, Lcom/android/settings/LockscreenNotificationApplist$Backend;->getShowonSharedeLocked(Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->show:Z

    .line 378
    return-object v0

    .line 369
    :catch_0
    move-exception v1

    .line 370
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "LockNotificationApplist"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    iget-object v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private loadAppsList()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 318
    return-void
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "original"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 787
    new-instance v1, Lcom/android/settings/IconResizer;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    .line 788
    .local v1, "mIconResizer":Lcom/android/settings/IconResizer;
    const v2, 0x7f0c00ac

    invoke-virtual {v1, v2}, Lcom/android/settings/IconResizer;->setIconSize(I)V

    .line 789
    const/4 v0, 0x0

    .line 790
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 791
    invoke-virtual {v1, p1}, Lcom/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 793
    :cond_0
    return-object v0
.end method

.method private refreshDisplayedItems()V
    .locals 14

    .prologue
    .line 529
    sget-boolean v9, Lcom/android/settings/LockscreenNotificationApplist;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "LockNotificationApplist"

    const-string v10, "Refreshing apps..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_0
    iget-object v10, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    monitor-enter v10

    .line 532
    const/4 v8, 0x0

    .line 533
    .local v8, "section":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    sget-object v11, Lcom/android/settings/LockscreenNotificationApplist;->mRowComparator:Ljava/util/Comparator;

    invoke-static {v9, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 534
    iget-object v9, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 535
    .local v0, "N":I
    const/4 v3, 0x1

    .line 536
    .local v3, "first":Z
    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v5

    .line 538
    .local v5, "isEnabled":Z
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    new-instance v11, Landroid/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/settings/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 540
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_5

    .line 541
    iget-object v9, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    .line 542
    .local v7, "row":Lcom/android/settings/LockscreenNotificationApplist$AppRow;
    iget-object v9, v7, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->section:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 543
    iget-object v8, v7, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->section:Ljava/lang/String;

    .line 544
    const/4 v3, 0x1

    .line 546
    :cond_1
    iput-boolean v3, v7, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->first:Z

    .line 547
    const/4 v3, 0x0

    .line 549
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-nez v9, :cond_3

    .line 550
    monitor-exit v10

    .line 587
    .end local v7    # "row":Lcom/android/settings/LockscreenNotificationApplist$AppRow;
    :cond_2
    :goto_1
    return-void

    .line 552
    .restart local v7    # "row":Lcom/android/settings/LockscreenNotificationApplist$AppRow;
    :cond_3
    new-instance v9, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    const/4 v6, 0x0

    .line 556
    .local v6, "pkgIcon":Landroid/graphics/drawable/Drawable;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-object v9, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    iget-object v9, v9, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-virtual {v11, v9, v12}, Landroid/content/pm/PackageManager;->getApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 561
    :goto_2
    :try_start_2
    iget-object v11, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    iget-object v9, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    iget-object v9, v9, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v11, v9}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v9, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v6}, Lcom/android/settings/LockscreenNotificationApplist;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 563
    iget-object v9, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 564
    iget-object v9, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 565
    iget-object v11, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    sget-object v12, Lcom/android/settings/LockscreenNotificationApplist;->mBackend:Lcom/android/settings/LockscreenNotificationApplist$Backend;

    iget-object v9, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    iget-object v13, v9, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    iget v9, v9, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->uid:I

    invoke-virtual {v12, v13, v9}, Lcom/android/settings/LockscreenNotificationApplist$Backend;->getShowonSharedeLocked(Ljava/lang/String;I)Z

    move-result v9

    invoke-virtual {v11, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 566
    iget-boolean v9, v7, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->banned:Z

    if-eqz v9, :cond_4

    .line 567
    iget-object v9, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0e14d8

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v9, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 571
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v11, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 573
    new-instance v1, Lcom/android/settings/LockscreenNotificationApplist$AppData;

    invoke-direct {v1}, Lcom/android/settings/LockscreenNotificationApplist$AppData;-><init>()V

    .line 574
    .local v1, "data":Lcom/android/settings/LockscreenNotificationApplist$AppData;
    iget-object v9, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    iget-object v9, v9, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->pkg:Ljava/lang/String;

    iput-object v9, v1, Lcom/android/settings/LockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    .line 575
    iget-object v9, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/LockscreenNotificationApplist$AppRow;

    iget v9, v9, Lcom/android/settings/LockscreenNotificationApplist$AppRow;->uid:I

    iput v9, v1, Lcom/android/settings/LockscreenNotificationApplist$AppData;->uid:I

    .line 577
    sget-object v9, Lcom/android/settings/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    iget-object v11, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAppPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v11}, Landroid/preference/SwitchPreference;->getOrder()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 557
    .end local v1    # "data":Lcom/android/settings/LockscreenNotificationApplist$AppData;
    :catch_0
    move-exception v2

    .line 558
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 579
    .end local v0    # "N":I
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "first":Z
    .end local v4    # "i":I
    .end local v5    # "isEnabled":Z
    .end local v6    # "pkgIcon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "row":Lcom/android/settings/LockscreenNotificationApplist$AppRow;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .restart local v0    # "N":I
    .restart local v3    # "first":Z
    .restart local v4    # "i":I
    .restart local v5    # "isEnabled":Z
    :cond_5
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 581
    iget-object v9, p0, Lcom/android/settings/LockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    if-eqz v9, :cond_7

    .line 582
    sget-boolean v9, Lcom/android/settings/LockscreenNotificationApplist;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string v9, "LockNotificationApplist"

    const-string v10, "Restoring listView state"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/LockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 584
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/LockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    .line 586
    :cond_7
    sget-boolean v9, Lcom/android/settings/LockscreenNotificationApplist;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "LockNotificationApplist"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Refreshed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " displayed items"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private updateAllAppsPreference()V
    .locals 4

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 274
    iget-object v1, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "lock_notification_all_apps"

    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->isAllAppsCheckedState()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 275
    .local v0, "allAppsValue":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings/LockscreenNotificationApplist;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockscreenNotificationApplist;->edit:Landroid/content/SharedPreferences$Editor;

    .line 277
    const-string v1, "notification_all_apps"

    invoke-virtual {p0, v1}, Lcom/android/settings/LockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    .line 278
    iget-object v1, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 279
    iget-object v1, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 280
    iget-object v1, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings/LockscreenNotificationApplist$2;

    invoke-direct {v2, p0}, Lcom/android/settings/LockscreenNotificationApplist$2;-><init>(Lcom/android/settings/LockscreenNotificationApplist;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 303
    iget-object v1, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 304
    return-void
.end method

.method private updateDropdownList()V
    .locals 5

    .prologue
    const v4, 0x7f0e0e26

    const v3, 0x7f0e0e25

    const v2, 0x7f0e0e24

    .line 169
    const-string v0, "set_visibility"

    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenNotificationApplist;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings/DropDownPreference;

    .line 170
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings/DropDownPreference;

    if-nez v0, :cond_0

    .line 171
    const-string v0, "LockNotificationApplist"

    const-string v1, "Preference not found: set_visibility"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings/DropDownPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/DropDownPreference;->setTwSummaryColorToColorPrimaryDark(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings/DropDownPreference;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings/DropDownPreference;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings/DropDownPreference;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/android/settings/DropDownPreference;->addItem(ILjava/lang/Object;)V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->updateLockscreenNotifications()V

    .line 184
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings/DropDownPreference;

    new-instance v1, Lcom/android/settings/LockscreenNotificationApplist$1;

    invoke-direct {v1, p0}, Lcom/android/settings/LockscreenNotificationApplist$1;-><init>(Lcom/android/settings/LockscreenNotificationApplist;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/DropDownPreference;->setCallback(Lcom/android/settings/DropDownPreference$Callback;)V

    goto :goto_0
.end method

.method private updateLockscreenNotifications()V
    .locals 4

    .prologue
    .line 229
    iget-object v2, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings/DropDownPreference;

    if-nez v2, :cond_0

    .line 238
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 233
    .local v1, "enabled":Z
    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    .line 234
    .local v0, "allowPrivate":Z
    if-nez v1, :cond_1

    const v2, 0x7f0e0e26

    :goto_1
    iput v2, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreenSelectedValue:I

    .line 237
    iget-object v2, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreen:Lcom/android/settings/DropDownPreference;

    iget v3, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLockscreenSelectedValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 234
    :cond_1
    if-eqz v0, :cond_2

    const v2, 0x7f0e0e24

    goto :goto_1

    :cond_2
    const v2, 0x7f0e0e25

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 122
    const/16 v0, 0x57

    return v0
.end method

.method public isAllAppsCheckedState()Z
    .locals 7

    .prologue
    .line 798
    const/4 v3, 0x0

    .line 799
    .local v3, "offCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 801
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_2

    .line 802
    sget-object v4, Lcom/android/settings/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/Preference;->getOrder()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 799
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 804
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    .line 805
    .local v2, "mCurrentPreference":Landroid/preference/SwitchPreference;
    sget-object v4, Lcom/android/settings/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->getOrder()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/LockscreenNotificationApplist$AppData;

    .line 807
    .local v0, "data":Lcom/android/settings/LockscreenNotificationApplist$AppData;
    sget-object v4, Lcom/android/settings/LockscreenNotificationApplist;->mBackend:Lcom/android/settings/LockscreenNotificationApplist$Backend;

    iget-object v5, v0, Lcom/android/settings/LockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    iget v6, v0, Lcom/android/settings/LockscreenNotificationApplist$AppData;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/LockscreenNotificationApplist$Backend;->getShowonSharedeLocked(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 808
    add-int/lit8 v3, v3, 0x1

    .line 811
    .end local v0    # "data":Lcom/android/settings/LockscreenNotificationApplist$AppData;
    .end local v2    # "mCurrentPreference":Landroid/preference/SwitchPreference;
    :cond_2
    if-lez v3, :cond_0

    .line 812
    const/4 v4, 0x0

    .line 815
    :goto_1
    return v4

    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 157
    .local v12, "resources":Landroid/content/res/Resources;
    const v0, 0x7f0c00a2

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0c00b0

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x7f0c00ac

    invoke-virtual {v12, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int v4, v0, v1

    .line 161
    .local v4, "divider_inset_size":I
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object v11, v0

    .line 163
    .local v11, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 165
    return-void

    .line 161
    .end local v11    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    :cond_0
    new-instance v5, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move v7, v4

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    move-object v11, v5

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    const v0, 0x7f08006e

    invoke-virtual {p0, v0}, Lcom/android/settings/LockscreenNotificationApplist;->addPreferencesFromResource(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    .line 133
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mPM:Landroid/content/pm/PackageManager;

    .line 134
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 136
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mHideApp:Z

    .line 139
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->hide_app_list:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->hide_app_notification_list:[Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->hide_app_notification_list:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 141
    const-string v0, "LockNotificationApplist"

    const-string v1, "Hide app notification list is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mHideApp:Z

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->updateDropdownList()V

    .line 147
    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->updateAllAppsPreference()V

    .line 149
    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->loadAppsList()V

    .line 150
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 712
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 713
    sget-boolean v0, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string v1, "com.android.settings"

    const-string v2, "LDST"

    invoke-direct {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getEnabledItemCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    .line 261
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 253
    sget-boolean v0, Lcom/android/settings/LockscreenNotificationApplist;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LockNotificationApplist"

    const-string v1, "Saving listView state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mListViewState:Landroid/os/Parcelable;

    .line 255
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 769
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .local v1, "desiredState":Z
    move-object v2, p1

    .line 770
    check-cast v2, Landroid/preference/SwitchPreference;

    .line 772
    .local v2, "mCurrentPreference":Landroid/preference/SwitchPreference;
    sget-object v3, Lcom/android/settings/LockscreenNotificationApplist;->mAppArray:Ljava/util/Hashtable;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->getOrder()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/LockscreenNotificationApplist$AppData;

    .line 774
    .local v0, "data":Lcom/android/settings/LockscreenNotificationApplist$AppData;
    sget-object v3, Lcom/android/settings/LockscreenNotificationApplist;->mBackend:Lcom/android/settings/LockscreenNotificationApplist$Backend;

    iget-object v4, v0, Lcom/android/settings/LockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    iget v5, v0, Lcom/android/settings/LockscreenNotificationApplist$AppData;->uid:I

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/settings/LockscreenNotificationApplist$Backend;->setShowonSharedeLocked(Ljava/lang/String;IZ)Z

    .line 775
    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 777
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->isAllAppsCheckedState()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/LockscreenNotificationApplist;->setStatusPreference(Z)V

    .line 779
    sget-boolean v3, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 780
    iget-object v3, p0, Lcom/android/settings/LockscreenNotificationApplist;->mContext:Landroid/content/Context;

    const-string v4, "com.android.settings"

    const-string v5, "NFST"

    iget-object v6, v0, Lcom/android/settings/LockscreenNotificationApplist$AppData;->pkg:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 265
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/LockscreenNotificationApplist;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 269
    return-void
.end method

.method public setStatusPreference(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "lock_notification_all_apps"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 308
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 309
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 310
    return-void
.end method
