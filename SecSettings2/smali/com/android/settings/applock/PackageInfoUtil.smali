.class public Lcom/android/settings/applock/PackageInfoUtil;
.super Ljava/lang/Object;
.source "PackageInfoUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applock/PackageInfoUtil$2;,
        Lcom/android/settings/applock/PackageInfoUtil$PackageUtilHolder;,
        Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;,
        Lcom/android/settings/applock/PackageInfoUtil$State;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final EMPTY_FOLDER_NAME:Ljava/lang/String;

.field public final LOCKED_CLASSES:Ljava/lang/String;

.field public final LOCKED_FOLDERS:Ljava/lang/String;

.field public final LOCKED_PACKAGE:Ljava/lang/String;

.field public final MARK_PREF_NAME:Ljava/lang/String;

.field public final PACKAGE_ADD:Ljava/lang/String;

.field public final PACKAGE_REMOVE:Ljava/lang/String;

.field public final PREF_NAME:Ljava/lang/String;

.field public final PREF_PACKAGE_ONLY:Ljava/lang/String;

.field private appList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applock/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLockedAppCount:I

.field private mLockedClasses:Ljava/lang/StringBuilder;

.field private mLockedPackages:Ljava/lang/StringBuilder;

.field private mWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/settings/applock/PackageInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applock/PackageInfoUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "com.samsung.applock.appInfo"

    iput-object v0, p0, Lcom/android/settings/applock/PackageInfoUtil;->PREF_NAME:Ljava/lang/String;

    .line 27
    const-string v0, "com.samsung.applock.pakcgeInfo"

    iput-object v0, p0, Lcom/android/settings/applock/PackageInfoUtil;->PREF_PACKAGE_ONLY:Ljava/lang/String;

    .line 28
    const-string v0, "com.samsung.applock.mark"

    iput-object v0, p0, Lcom/android/settings/applock/PackageInfoUtil;->MARK_PREF_NAME:Ljava/lang/String;

    .line 29
    const-string v0, "package_remove"

    iput-object v0, p0, Lcom/android/settings/applock/PackageInfoUtil;->PACKAGE_REMOVE:Ljava/lang/String;

    .line 30
    const-string v0, "package_add"

    iput-object v0, p0, Lcom/android/settings/applock/PackageInfoUtil;->PACKAGE_ADD:Ljava/lang/String;

    .line 31
    const-string v0, "smartmanager_locked_apps_packages"

    iput-object v0, p0, Lcom/android/settings/applock/PackageInfoUtil;->LOCKED_PACKAGE:Ljava/lang/String;

    .line 32
    const-string v0, "smartmanager_locked_apps_classes"

    iput-object v0, p0, Lcom/android/settings/applock/PackageInfoUtil;->LOCKED_CLASSES:Ljava/lang/String;

    .line 33
    const-string v0, "smartmanager_locked_apps_folders"

    iput-object v0, p0, Lcom/android/settings/applock/PackageInfoUtil;->LOCKED_FOLDERS:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/applock/PackageInfoUtil;->EMPTY_FOLDER_NAME:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applock/PackageInfoUtil;->appList:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applock/PackageInfoUtil;->mWhiteList:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applock/PackageInfoUtil;->mFolderList:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedPackages:Ljava/lang/StringBuilder;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedClasses:Ljava/lang/StringBuilder;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applock/PackageInfoUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/applock/PackageInfoUtil$1;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/settings/applock/PackageInfoUtil;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/settings/applock/PackageInfoUtil;
    .locals 1

    .prologue
    .line 53
    # getter for: Lcom/android/settings/applock/PackageInfoUtil$PackageUtilHolder;->INSTANCE:Lcom/android/settings/applock/PackageInfoUtil;
    invoke-static {}, Lcom/android/settings/applock/PackageInfoUtil$PackageUtilHolder;->access$000()Lcom/android/settings/applock/PackageInfoUtil;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public countLockedApps(Landroid/content/Context;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    const-string v5, "com.samsung.applock.appInfo"

    invoke-virtual {p0, p1, v5}, Lcom/android/settings/applock/PackageInfoUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 180
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 181
    .local v2, "keys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedAppCount:I

    .line 182
    invoke-virtual {p0, p1}, Lcom/android/settings/applock/PackageInfoUtil;->getMasterValue(Landroid/content/Context;)Z

    move-result v3

    .line 183
    .local v3, "mMasterSwitch":Z
    if-eqz v3, :cond_1

    .line 185
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 186
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 187
    iget v5, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedAppCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedAppCount:I

    goto :goto_0

    .line 191
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget v5, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedAppCount:I

    return v5
.end method

.method public getAppList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applock/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/settings/applock/PackageInfoUtil;->sortList()V

    .line 100
    iget-object v0, p0, Lcom/android/settings/applock/PackageInfoUtil;->appList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEditor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pref"    # Ljava/lang/String;

    .prologue
    .line 327
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 329
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    return-object v1
.end method

.method public getFolderInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storedName"    # Ljava/lang/String;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/settings/applock/PackageInfoUtil;->mFolderList:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLauncherApps(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applock/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 63
    iget-object v7, p0, Lcom/android/settings/applock/PackageInfoUtil;->appList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/settings/applock/PackageInfoUtil;->getWhiteList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/applock/PackageInfoUtil;->mWhiteList:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 66
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {v4, v3, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 70
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 71
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 72
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    new-instance v6, Lcom/android/settings/applock/AppInfo;

    invoke-direct {v6}, Lcom/android/settings/applock/AppInfo;-><init>()V

    .line 73
    .local v6, "tmpInfo":Lcom/android/settings/applock/AppInfo;
    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/applock/AppInfo;->appName:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v4, v8, v8}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/applock/AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 75
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/settings/applock/AppInfo;->packageName:Ljava/lang/String;

    .line 76
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/settings/applock/AppInfo;->mainActivity:Ljava/lang/String;

    .line 77
    iget-object v7, v6, Lcom/android/settings/applock/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v7}, Lcom/android/settings/applock/PackageInfoUtil;->isPkgLocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    :goto_1
    iput v7, v6, Lcom/android/settings/applock/AppInfo;->locked:I

    .line 78
    iget-object v7, v6, Lcom/android/settings/applock/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/settings/applock/PackageInfoUtil;->isWhiteList(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 81
    iget-object v7, p0, Lcom/android/settings/applock/PackageInfoUtil;->appList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v7, v9

    .line 77
    goto :goto_1

    .line 84
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "tmpInfo":Lcom/android/settings/applock/AppInfo;
    :cond_2
    sget-object v7, Lcom/android/settings/applock/PackageInfoUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appList.size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/applock/PackageInfoUtil;->appList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v7, p0, Lcom/android/settings/applock/PackageInfoUtil;->appList:Ljava/util/ArrayList;

    return-object v7
.end method

.method public getLockedAppsCount()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedAppCount:I

    return v0
.end method

.method public getMasterValue(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 395
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "app_lock_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 396
    .local v0, "value":I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public getSamePkgInfo(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/applock/PackageInfoUtil$State;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "states"    # Lcom/android/settings/applock/PackageInfoUtil$State;

    .prologue
    .line 273
    const-string v5, "com.samsung.applock.appInfo"

    invoke-virtual {p0, p1, v5}, Lcom/android/settings/applock/PackageInfoUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 274
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 275
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, ""

    .line 276
    .local v4, "storedName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/applock/PackageInfoUtil;->appList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applock/AppInfo;

    .line 277
    .local v0, "appInfo":Lcom/android/settings/applock/AppInfo;
    iget-object v5, v0, Lcom/android/settings/applock/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 278
    invoke-virtual {p0, v0}, Lcom/android/settings/applock/PackageInfoUtil;->getStoredName(Lcom/android/settings/applock/AppInfo;)Ljava/lang/String;

    move-result-object v4

    .line 280
    sget-object v5, Lcom/android/settings/applock/PackageInfoUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSamePkgInfo: pkgName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", storedName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    sget-object v5, Lcom/android/settings/applock/PackageInfoUtil$2;->$SwitchMap$com$android$settings$applock$PackageInfoUtil$State:[I

    invoke-virtual {p3}, Lcom/android/settings/applock/PackageInfoUtil$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 286
    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 289
    :pswitch_0
    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 294
    .end local v0    # "appInfo":Lcom/android/settings/applock/AppInfo;
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 295
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 296
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p0, p1, p2, v5}, Lcom/android/settings/applock/PackageInfoUtil;->removePackageState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 298
    :cond_2
    return-void

    .line 283
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pref"    # Ljava/lang/String;

    .prologue
    .line 321
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 323
    .local v0, "sp":Landroid/content/SharedPreferences;
    return-object v0
.end method

.method public getStoredName(Lcom/android/settings/applock/AppInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "appInfo"    # Lcom/android/settings/applock/AppInfo;

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p1, Lcom/android/settings/applock/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-object v1, p1, Lcom/android/settings/applock/AppInfo;->mainActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getWhiteList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 317
    .local v0, "whiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v0
.end method

.method public isFolderLocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storedName"    # Ljava/lang/String;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/settings/applock/PackageInfoUtil;->mFolderList:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPkgLocked(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 454
    const-string v4, "com.samsung.applock.pakcgeInfo"

    invoke-virtual {p0, p1, v4}, Lcom/android/settings/applock/PackageInfoUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 455
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1, p2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 456
    .local v0, "locked":I
    if-ne v0, v2, :cond_0

    .line 459
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public isWhiteList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v2, p0, Lcom/android/settings/applock/PackageInfoUtil;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    .local v1, "whitePkg":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    const/4 v2, 0x1

    .line 95
    .end local v1    # "whitePkg":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public loadDBState(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "smartmanager_locked_apps_packages"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "lockedPackages":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "smartmanager_locked_apps_classes"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "lockedClasses":[Ljava/lang/String;
    sget-object v6, Lcom/android/settings/applock/PackageInfoUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadDBState: getlockedPackages="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\ngetlockedClasses="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-string v6, "com.samsung.applock.pakcgeInfo"

    invoke-virtual {p0, p1, v6}, Lcom/android/settings/applock/PackageInfoUtil;->getEditor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 219
    .local v0, "editor1":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 220
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 221
    const-string v6, "com.samsung.applock.appInfo"

    invoke-virtual {p0, p1, v6}, Lcom/android/settings/applock/PackageInfoUtil;->getEditor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 222
    .local v1, "editor2":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 223
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v5, "storedName":Ljava/lang/StringBuilder;
    array-length v6, v4

    if-lez v6, :cond_1

    .line 226
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_1

    .line 227
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 228
    array-length v6, v3

    if-ge v2, v6, :cond_0

    .line 229
    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_0
    aget-object v6, v4, v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/settings/applock/PackageInfoUtil;->storePackageState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public loadFolderInfo(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 410
    iget-object v7, p0, Lcom/android/settings/applock/PackageInfoUtil;->mFolderList:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 411
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "smartmanager_locked_apps_folders"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "folderInfo1":Ljava/lang/String;
    sget-object v7, Lcom/android/settings/applock/PackageInfoUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "folderInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 416
    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 417
    .local v2, "folderInfo":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v0, v4

    .line 418
    .local v6, "str":Ljava/lang/String;
    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "folder":[Ljava/lang/String;
    array-length v7, v1

    if-ne v7, v11, :cond_0

    .line 420
    iget-object v7, p0, Lcom/android/settings/applock/PackageInfoUtil;->mFolderList:Ljava/util/HashMap;

    aget-object v8, v1, v10

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 422
    :cond_0
    iget-object v7, p0, Lcom/android/settings/applock/PackageInfoUtil;->mFolderList:Ljava/util/HashMap;

    aget-object v8, v1, v10

    aget-object v9, v1, v11

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 426
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "folder":[Ljava/lang/String;
    .end local v2    # "folderInfo":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "str":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public mark(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "markTag"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 354
    const-string v2, "com.samsung.applock.mark"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 356
    .local v1, "sp2":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 357
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 358
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 359
    return-void
.end method

.method public removeFolderInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storedName"    # Ljava/lang/String;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/settings/applock/PackageInfoUtil;->mFolderList:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/settings/applock/PackageInfoUtil;->mFolderList:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;->FOLDER_CHANGE:Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/applock/PackageInfoUtil;->sendMsgToLauncher(Landroid/content/Context;Ljava/lang/Object;Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;)V

    .line 471
    :cond_0
    return-void
.end method

.method public removePackageState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "withSamePkgInfo"    # Ljava/lang/Boolean;

    .prologue
    .line 255
    const-string v1, "com.samsung.applock.pakcgeInfo"

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/applock/PackageInfoUtil;->getEditor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 256
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 257
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    sget-object v1, Lcom/android/settings/applock/PackageInfoUtil$State;->REMOVE:Lcom/android/settings/applock/PackageInfoUtil$State;

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/settings/applock/PackageInfoUtil;->getSamePkgInfo(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/applock/PackageInfoUtil$State;)V

    .line 261
    :cond_0
    return-void
.end method

.method public removePkgWithClass(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storedName"    # Ljava/lang/String;

    .prologue
    .line 264
    const-string v1, "com.samsung.applock.appInfo"

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/applock/PackageInfoUtil;->getEditor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 265
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 266
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 267
    return-void
.end method

.method public saveDBValue(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smartmanager_locked_apps_packages"

    iget-object v4, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedPackages:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smartmanager_locked_apps_classes"

    iget-object v4, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedClasses:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smartmanager_locked_apps_packages"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "getlockedPackages":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smartmanager_locked_apps_classes"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "getlockedClasses":Ljava/lang/String;
    sget-object v2, Lcom/android/settings/applock/PackageInfoUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveDBValue: LOCKED_PACKAGE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n LOCKED_CLASSES="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "locked_app_count"

    invoke-virtual {p0}, Lcom/android/settings/applock/PackageInfoUtil;->getLockedAppsCount()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 176
    return-void
.end method

.method public saveLockState(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isRemovePackage"    # Ljava/lang/Boolean;
    .param p3, "PackageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 131
    iget-object v7, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedPackages:Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedPackages:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v7, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 132
    iget-object v7, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedClasses:Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedClasses:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v7, v9, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 133
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v6, "storedName":Ljava/lang/StringBuilder;
    const-string v7, "com.samsung.applock.appInfo"

    invoke-virtual {p0, p1, v7}, Lcom/android/settings/applock/PackageInfoUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 135
    .local v5, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 136
    .local v3, "keys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-virtual {p0, p1}, Lcom/android/settings/applock/PackageInfoUtil;->getMasterValue(Landroid/content/Context;)Z

    move-result v4

    .line 137
    .local v4, "masterSwitch":Z
    if-eqz v4, :cond_3

    .line 138
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 139
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v10, :cond_0

    .line 140
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "info":[Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v10, :cond_1

    aget-object v7, v2, v9

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 142
    aget-object v7, v2, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p1, v7}, Lcom/android/settings/applock/PackageInfoUtil;->removePkgWithClass(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v7, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedPackages:Ljava/lang/StringBuilder;

    aget-object v8, v2, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v7, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedPackages:Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v7, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedClasses:Ljava/lang/StringBuilder;

    aget-object v8, v2, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v7, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedClasses:Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 152
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2    # "info":[Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedPackages:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 153
    iget-object v7, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedPackages:Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedPackages:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedPackages:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 155
    iget-object v7, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedClasses:Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedClasses:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iget-object v9, p0, Lcom/android/settings/applock/PackageInfoUtil;->mLockedClasses:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 159
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public sendMsgToLauncher(Landroid/content/Context;Ljava/lang/Object;Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subjectInfo"    # Ljava/lang/Object;
    .param p3, "type"    # Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;

    .prologue
    .line 429
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 430
    .local v0, "bundle":Landroid/os/Bundle;
    sget-object v1, Lcom/android/settings/applock/PackageInfoUtil$2;->$SwitchMap$com$android$settings$applock$PackageInfoUtil$BoardcastType:[I

    invoke-virtual {p3}, Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 442
    .end local p2    # "subjectInfo":Ljava/lang/Object;
    :goto_0
    return-void

    .line 432
    .restart local p2    # "subjectInfo":Ljava/lang/Object;
    :pswitch_0
    const-string v1, "android.intent.extra.SUBJECT"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "subjectInfo":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 433
    const-string v1, "com.samsung.applock.intent.action.APPLOCK_ENABLE_CHANGED"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/applock/PackageInfoUtil;->sendStatusBroadcast(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 436
    .restart local p2    # "subjectInfo":Ljava/lang/Object;
    :pswitch_1
    const-string v1, "android.intent.extra.SUBJECT"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "subjectInfo":Ljava/lang/Object;
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v1, "com.sec.android.launcher.intent.action.FOLDERLOCK_CHANGED"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/applock/PackageInfoUtil;->sendStatusBroadcast(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendStatusBroadcast(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "destination"    # Ljava/lang/String;

    .prologue
    .line 445
    sget-object v1, Lcom/android/settings/applock/PackageInfoUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendStatusBroadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 447
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 448
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 450
    :cond_0
    const-string v1, "com.samsung.applock.permission.STATUSCHANGED"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public setMasterValue(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # Z

    .prologue
    const/4 v3, 0x0

    .line 400
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "app_lock_enabled"

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 401
    const-string v2, "com.samsung.applock.mark"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 403
    .local v1, "sp2":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 404
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "master_switch"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 405
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 406
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;->MASTER_ENABLE:Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/settings/applock/PackageInfoUtil;->sendMsgToLauncher(Landroid/content/Context;Ljava/lang/Object;Lcom/android/settings/applock/PackageInfoUtil$BoardcastType;)V

    .line 407
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp2":Landroid/content/SharedPreferences;
    :cond_0
    move v2, v3

    .line 400
    goto :goto_0
.end method

.method public sortList()V
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 105
    .local v0, "collator":Ljava/text/Collator;
    new-instance v1, Lcom/android/settings/applock/PackageInfoUtil$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/applock/PackageInfoUtil$1;-><init>(Lcom/android/settings/applock/PackageInfoUtil;Ljava/text/Collator;)V

    .line 123
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings/applock/AppInfo;>;"
    iget-object v2, p0, Lcom/android/settings/applock/PackageInfoUtil;->appList:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 124
    return-void
.end method

.method public storePackageState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "storedName"    # Ljava/lang/String;

    .prologue
    .line 244
    const-string v1, "com.samsung.applock.pakcgeInfo"

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/applock/PackageInfoUtil;->getEditor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 245
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 246
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 247
    sget-object v1, Lcom/android/settings/applock/PackageInfoUtil$State;->ADD:Lcom/android/settings/applock/PackageInfoUtil$State;

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/settings/applock/PackageInfoUtil;->getSamePkgInfo(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/applock/PackageInfoUtil$State;)V

    .line 248
    return-void
.end method

.method public updateDB(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isRemovePackage"    # Ljava/lang/Boolean;
    .param p3, "PackageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 196
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 197
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/settings/applock/PackageInfoUtil;->saveLockState(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 201
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applock/PackageInfoUtil;->saveDBValue(Landroid/content/Context;)V

    .line 202
    return-void

    .line 199
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/applock/PackageInfoUtil;->saveLockState(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updatePackageChanged(Landroid/content/Context;ILandroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "status"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 342
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "intentInfo":[Ljava/lang/String;
    aget-object v1, v0, v4

    .line 344
    .local v1, "packageInfo":Ljava/lang/String;
    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    .line 345
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/settings/applock/PackageInfoUtil;->updateDB(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 346
    const-string v2, "package_remove"

    invoke-virtual {p0, p1, v2, v4}, Lcom/android/settings/applock/PackageInfoUtil;->mark(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    .line 349
    const-string v2, "package_add"

    invoke-virtual {p0, p1, v2, v4}, Lcom/android/settings/applock/PackageInfoUtil;->mark(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method
