.class public Lcom/android/settings/lockappshortcut/AppShortcutList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppShortcutList.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;,
        Lcom/android/settings/lockappshortcut/AppShortcutList$AlphaComparator;,
        Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;,
        Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;
    }
.end annotation


# instance fields
.field private grid_view:Landroid/widget/GridView;

.field handler:Landroid/os/Handler;

.field private isStatus:Z

.field private mAppListAdapter:Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

.field protected mDirection:Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;

.field private mLoadAppListTask:Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;

.field private mLoading:Landroid/view/ViewGroup;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private pressed_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 132
    new-instance v0, Lcom/android/settings/lockappshortcut/AppShortcutList$1;

    invoke-direct {v0, p0}, Lcom/android/settings/lockappshortcut/AppShortcutList$1;-><init>(Lcom/android/settings/lockappshortcut/AppShortcutList;)V

    iput-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->handler:Landroid/os/Handler;

    .line 380
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/lockappshortcut/AppShortcutList;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mLoadAppListTask:Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/widget/SwitchBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/lockappshortcut/AppShortcutList;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/lockappshortcut/AppShortcutList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/lockappshortcut/AppShortcutList;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->stopLoading()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/lockappshortcut/AppShortcutList;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mAppListAdapter:Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/lockappshortcut/AppShortcutList;Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;)Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/lockappshortcut/AppShortcutList;
    .param p1, "x1"    # Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mAppListAdapter:Lcom/android/settings/lockappshortcut/AppShortcutList$AppListAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/lockappshortcut/AppShortcutList;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/lockappshortcut/AppShortcutList;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->grid_view:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/lockappshortcut/AppShortcutList;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/lockappshortcut/AppShortcutList;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->startLoading()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/lockappshortcut/AppShortcutList;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/lockappshortcut/AppShortcutList;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->getAppListAdapter()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private doAppLoading(Z)V
    .locals 5
    .param p1, "loading"    # Z

    .prologue
    const/4 v4, 0x1

    .line 119
    if-nez p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mLoadAppListTask:Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;

    invoke-virtual {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->clear()V

    .line 130
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mLoadAppListTask:Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;

    invoke-virtual {v0}, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mLoadAppListTask:Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->startLoading()V

    .line 127
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private getAppListAdapter()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v12, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v14

    .line 325
    .local v14, "context":Landroid/content/Context;
    if-nez v14, :cond_0

    .line 377
    :goto_0
    return-object v12

    .line 327
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mDirection:Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;

    iget v4, v4, Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;->name_idx:I

    invoke-static {v14, v4}, Lcom/android/settings/lockappshortcut/AppShortcutInfo;->getApplicationInfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    .line 328
    .local v13, "app_name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mDirection:Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;

    iget v4, v4, Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;->opposite_name_idx:I

    invoke-static {v14, v4}, Lcom/android/settings/lockappshortcut/AppShortcutInfo;->getApplicationInfo(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v17

    .line 330
    .local v17, "opposite_app_name":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mPm:Landroid/content/pm/PackageManager;

    .line 332
    new-instance v9, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v9, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v9, "LauncherIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v9, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const/16 v15, 0x200

    .line 335
    .local v15, "filter":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v9, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 337
    .local v8, "LauncherApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 338
    .local v11, "app":Landroid/content/pm/ResolveInfo;
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v4, :cond_1

    .line 342
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_1

    iget-boolean v4, v11, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v4, :cond_1

    .line 343
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 344
    .local v2, "pkg_name":Ljava/lang/String;
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, "activity_name":Ljava/lang/String;
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x1

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v6, v7, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 348
    .local v5, "activity_icon":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 351
    .local v1, "appListitem":Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 355
    .end local v1    # "appListitem":Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;
    .end local v2    # "pkg_name":Ljava/lang/String;
    .end local v3    # "activity_name":Ljava/lang/String;
    .end local v5    # "activity_icon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "app":Landroid/content/pm/ResolveInfo;
    :cond_2
    const/16 v15, 0x80

    .line 356
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v9, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 358
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 359
    .restart local v11    # "app":Landroid/content/pm/ResolveInfo;
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 360
    .restart local v2    # "pkg_name":Ljava/lang/String;
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    .restart local v3    # "activity_name":Ljava/lang/String;
    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x1

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v6, v7, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 363
    .restart local v5    # "activity_icon":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    iget-object v4, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 367
    .restart local v1    # "appListitem":Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 369
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mIsActive:Z

    .line 371
    :cond_4
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 374
    .end local v1    # "appListitem":Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;
    .end local v2    # "pkg_name":Ljava/lang/String;
    .end local v3    # "activity_name":Ljava/lang/String;
    .end local v5    # "activity_icon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "app":Landroid/content/pm/ResolveInfo;
    :cond_5
    new-instance v10, Lcom/android/settings/lockappshortcut/AppShortcutList$AlphaComparator;

    invoke-direct {v10}, Lcom/android/settings/lockappshortcut/AppShortcutList$AlphaComparator;-><init>()V

    .line 375
    .local v10, "alphaComparator":Lcom/android/settings/lockappshortcut/AppShortcutList$AlphaComparator;
    invoke-static {v12, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_0
.end method

.method private startLoading()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 94
    :cond_0
    return-void
.end method

.method private stopLoading()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 100
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 318
    const/16 v0, 0xc4

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 168
    .local v1, "mActivity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 169
    iget-object v2, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "pressed_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->pressed_type:Ljava/lang/String;

    .line 172
    new-instance v2, Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;

    iget-object v3, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->pressed_type:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;-><init>(Lcom/android/settings/lockappshortcut/AppShortcutList;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mDirection:Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d032c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->grid_view:Landroid/widget/GridView;

    .line 176
    iget-object v2, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->grid_view:Landroid/widget/GridView;

    new-instance v3, Lcom/android/settings/lockappshortcut/AppShortcutList$2;

    invoke-direct {v3, p0}, Lcom/android/settings/lockappshortcut/AppShortcutList$2;-><init>(Lcom/android/settings/lockappshortcut/AppShortcutList;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d032a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 189
    .local v0, "emptyView":Landroid/widget/TextView;
    const v2, 0x7f0e1688

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 191
    iget-object v2, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->grid_view:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mDirection:Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;

    iget v3, v3, Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;->status_idx:I

    invoke-static {v2, v3}, Lcom/android/settings/lockappshortcut/AppShortcutInfo;->getShortcutStatus(Landroid/content/Context;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->isStatus:Z

    .line 195
    new-instance v2, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;-><init>(Lcom/android/settings/lockappshortcut/AppShortcutList;Lcom/android/settings/lockappshortcut/AppShortcutList$1;)V

    iput-object v2, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mLoadAppListTask:Lcom/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;

    .line 197
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    const v0, 0x7f040129

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 203
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mLoading:Landroid/view/ViewGroup;

    .line 210
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    .line 148
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 149
    sget-boolean v2, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v2, :cond_0

    .line 150
    iget-boolean v2, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->isStatus:Z

    iget-object v3, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 151
    const-string v2, "left"

    iget-object v3, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.settings"

    const-string v4, "ASLS"

    iget-object v5, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_0
    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 158
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 161
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 152
    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.android.settings"

    const-string v4, "ASRS"

    iget-object v5, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 109
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 110
    iget-object v1, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mDirection:Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;

    iget v2, v2, Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;->status_idx:I

    invoke-static {v1, v2}, Lcom/android/settings/lockappshortcut/AppShortcutInfo;->getShortcutStatus(Landroid/content/Context;I)Z

    move-result v0

    .line 112
    .local v0, "check":Z
    iget-object v1, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 113
    iget-object v1, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 114
    invoke-direct {p0, v0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->doAppLoading(Z)V

    .line 116
    .end local v0    # "check":Z
    :cond_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 215
    if-nez p2, :cond_0

    const-string v0, "0"

    .line 216
    .local v0, "v":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mDirection:Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;

    iget v2, v2, Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;->status_idx:I

    invoke-static {v1, v2, v0}, Lcom/android/settings/lockappshortcut/AppShortcutInfo;->saveApplicationData(Landroid/content/Context;ILjava/lang/String;)V

    .line 217
    invoke-direct {p0, p2}, Lcom/android/settings/lockappshortcut/AppShortcutList;->doAppLoading(Z)V

    .line 218
    return-void

    .line 215
    .end local v0    # "v":Ljava/lang/String;
    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method

.method protected saveApplicationData(Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;)V
    .locals 4
    .param p1, "appItemInfo"    # Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;

    .prologue
    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/settings/lockappshortcut/AppShortcutInfo$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "app":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->mDirection:Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;

    iget v2, v2, Lcom/android/settings/lockappshortcut/AppShortcutList$Direction;->name_idx:I

    invoke-static {v1, v2, v0}, Lcom/android/settings/lockappshortcut/AppShortcutInfo;->saveApplicationData(Landroid/content/Context;ILjava/lang/String;)V

    .line 290
    sget-boolean v1, Lcom/android/settings/Utils;->isEnabledSurveyMode:Z

    if-eqz v1, :cond_0

    .line 291
    const-string v1, "left"

    iget-object v2, p0, Lcom/android/settings/lockappshortcut/AppShortcutList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.settings"

    const-string v3, "ASLP"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    .line 298
    return-void

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/lockappshortcut/AppShortcutList;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.settings"

    const-string v3, "ASRP"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
