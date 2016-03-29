.class public Lcom/android/settings/activekey/AppList;
.super Landroid/app/ListActivity;
.source "AppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/activekey/AppList$1;,
        Lcom/android/settings/activekey/AppList$AlphaComparator;,
        Lcom/android/settings/activekey/AppList$AppListAdapter;,
        Lcom/android/settings/activekey/AppList$AppListItem;
    }
.end annotation


# instance fields
.field private mAppListAdapter:Lcom/android/settings/activekey/AppList$AppListAdapter;

.field private mPm:Landroid/content/pm/PackageManager;

.field private pressed_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 210
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 34
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/activekey/AppList;->setResult(I)V

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/activekey/AppList;->getIntent()Landroid/content/Intent;

    move-result-object v30

    .line 85
    .local v30, "intent":Landroid/content/Intent;
    const-string v2, "pressed_type"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/activekey/AppList;->pressed_type:Ljava/lang/String;

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/activekey/AppList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/activekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    .line 88
    new-instance v23, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v23, "LauncherIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/activekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x20

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v22

    .line 92
    .local v22, "LauncherApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v13, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/activekey/AppList$AppListItem;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/ResolveInfo;

    .line 95
    .local v26, "app":Landroid/content/pm/ResolveInfo;
    new-instance v27, Lcom/android/settings/activekey/AppList$AppListItem;

    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/activekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/activekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/android/settings/activekey/AppList$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 98
    .local v27, "appListitem":Lcom/android/settings/activekey/AppList$AppListItem;
    move-object/from16 v0, v27

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 102
    .end local v26    # "app":Landroid/content/pm/ResolveInfo;
    .end local v27    # "appListitem":Lcom/android/settings/activekey/AppList$AppListItem;
    :cond_0
    new-instance v25, Lcom/android/settings/activekey/AppList$AlphaComparator;

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Lcom/android/settings/activekey/AppList$AlphaComparator;-><init>(Lcom/android/settings/activekey/AppList$1;)V

    .line 103
    .local v25, "alphaComparator":Lcom/android/settings/activekey/AppList$AlphaComparator;
    move-object/from16 v0, v25

    invoke-static {v13, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 106
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v7, "xcoverAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/activekey/AppList$AppListItem;>;"
    new-instance v28, Lcom/android/settings/activekey/AppList$AppListItem;

    const-string v2, "noaction"

    const-string v3, "noaction"

    const v4, 0x7f0e00a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/activekey/AppList;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/settings/activekey/AppList$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 110
    .local v28, "donothing":Lcom/android/settings/activekey/AppList$AppListItem;
    move-object/from16 v0, v28

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v33, Lcom/android/settings/activekey/AppList$AppListItem;

    const-string v2, "torch"

    const-string v3, "torch"

    const v4, 0x7f0e00a4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/activekey/AppList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/activekey/AppList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020396

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/settings/activekey/AppList$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 114
    .local v33, "torch":Lcom/android/settings/activekey/AppList$AppListItem;
    move-object/from16 v0, v33

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v7, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 116
    new-instance v2, Lcom/android/settings/activekey/AppList$AppListAdapter;

    const v5, 0x7f04012b

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/activekey/AppList$AppListAdapter;-><init>(Lcom/android/settings/activekey/AppList;Landroid/content/Context;IILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/activekey/AppList;->mAppListAdapter:Lcom/android/settings/activekey/AppList$AppListAdapter;

    .line 123
    .end local v7    # "xcoverAppList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/activekey/AppList$AppListItem;>;"
    .end local v28    # "donothing":Lcom/android/settings/activekey/AppList$AppListItem;
    .end local v33    # "torch":Lcom/android/settings/activekey/AppList$AppListItem;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/activekey/AppList;->getListView()Landroid/widget/ListView;

    move-result-object v31

    .line 124
    .local v31, "list_view":Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/activekey/AppList;->mAppListAdapter:Lcom/android/settings/activekey/AppList$AppListAdapter;

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/activekey/AppList;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    .line 129
    .local v32, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0c00a2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0c00ac

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v18, v2, v3

    .line 131
    .local v18, "divider_inset_size":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/activekey/AppList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 132
    new-instance v14, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/activekey/AppList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 133
    .local v14, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/activekey/AppList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 140
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/activekey/AppList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v24

    .line 141
    .local v24, "actionBar":Landroid/app/ActionBar;
    if-eqz v24, :cond_1

    .line 142
    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 144
    :cond_1
    return-void

    .line 119
    .end local v14    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    .end local v18    # "divider_inset_size":I
    .end local v24    # "actionBar":Landroid/app/ActionBar;
    .end local v31    # "list_view":Landroid/widget/ListView;
    .end local v32    # "resources":Landroid/content/res/Resources;
    :cond_2
    new-instance v8, Lcom/android/settings/activekey/AppList$AppListAdapter;

    const v11, 0x7f04012b

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/activekey/AppList$AppListAdapter;-><init>(Lcom/android/settings/activekey/AppList;Landroid/content/Context;IILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/settings/activekey/AppList;->mAppListAdapter:Lcom/android/settings/activekey/AppList$AppListAdapter;

    goto :goto_1

    .line 135
    .restart local v18    # "divider_inset_size":I
    .restart local v31    # "list_view":Landroid/widget/ListView;
    .restart local v32    # "resources":Landroid/content/res/Resources;
    :cond_3
    new-instance v14, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/activekey/AppList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v14

    invoke-direct/range {v16 .. v21}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 136
    .restart local v14    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/activekey/AppList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 160
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v1, "result_intent":Landroid/content/Intent;
    const-string v3, "ActiveKeyAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " app selected : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings/activekey/AppList;->mAppListAdapter:Lcom/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/activekey/AppList$AppListItem;

    iget-object v2, v2, Lcom/android/settings/activekey/AppList$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v3, "ActiveKeyAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " app title : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings/activekey/AppList;->mAppListAdapter:Lcom/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/activekey/AppList$AppListItem;

    iget-object v2, v2, Lcom/android/settings/activekey/AppList$AppListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v3, "selected_app"

    iget-object v2, p0, Lcom/android/settings/activekey/AppList;->mAppListAdapter:Lcom/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/activekey/AppList$AppListItem;

    iget-object v2, v2, Lcom/android/settings/activekey/AppList$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v3, "selected_app_title"

    iget-object v2, p0, Lcom/android/settings/activekey/AppList;->mAppListAdapter:Lcom/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/activekey/AppList$AppListItem;

    iget-object v2, v2, Lcom/android/settings/activekey/AppList$AppListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/activekey/AppList;->mAppListAdapter:Lcom/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/activekey/AppList$AppListItem;

    iget-object v2, v2, Lcom/android/settings/activekey/AppList$AppListItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/settings/activekey/AppList;->mAppListAdapter:Lcom/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/activekey/AppList$AppListItem;

    iget-object v2, v2, Lcom/android/settings/activekey/AppList$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "app":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const-string v2, "noaction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    const-string v0, ""

    .line 174
    :cond_0
    const-string v2, "short"

    iget-object v3, p0, Lcom/android/settings/activekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/activekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "short_press_app"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 184
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/activekey/AppList;->finish()V

    .line 185
    return-void

    .line 176
    :cond_2
    const-string v2, "long"

    iget-object v3, p0, Lcom/android/settings/activekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/activekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "short_press_app_battery_conserve"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 180
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/activekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "long_press_app"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 155
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 151
    :pswitch_0
    const-string v0, "ActiveKeyAppList"

    const-string v1, "onOptionsItemSelected() up button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/activekey/AppList;->finish()V

    .line 153
    const/4 v0, 0x1

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
