.class public Lcom/android/settings/AppPicker$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/AppPicker$MyApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mPackageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/AppPicker$MyApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/AppPicker;


# direct methods
.method public constructor <init>(Lcom/android/settings/AppPicker;Landroid/content/Context;)V
    .locals 15
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/settings/AppPicker$AppListAdapter;->this$0:Lcom/android/settings/AppPicker;

    .line 96
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 92
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/android/settings/AppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    .line 97
    const-string v12, "layout_inflater"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    iput-object v12, p0, Lcom/android/settings/AppPicker$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v9

    .line 99
    .local v9, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_6

    .line 100
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 101
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    iget v12, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v13, 0x3e8

    if-ne v12, v13, :cond_1

    .line 99
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    :cond_1
    # getter for: Lcom/android/settings/AppPicker;->mDebuggableOnly:Z
    invoke-static/range {p1 .. p1}, Lcom/android/settings/AppPicker;->access$000(Lcom/android/settings/AppPicker;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 110
    iget v12, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_2

    const-string v12, "user"

    sget-object v13, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 117
    :cond_2
    # getter for: Lcom/android/settings/AppPicker;->mPermissionName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/AppPicker;->access$100(Lcom/android/settings/AppPicker;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 118
    const/4 v11, 0x0

    .line 120
    .local v11, "requestsPermission":Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/AppPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    iget-object v13, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v14, 0x1000

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 122
    .local v8, "pi":Landroid/content/pm/PackageInfo;
    iget-object v12, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 125
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v7, :cond_3

    aget-object v10, v2, v5

    .line 126
    .local v10, "requestedPermission":Ljava/lang/String;
    # getter for: Lcom/android/settings/AppPicker;->mPermissionName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/AppPicker;->access$100(Lcom/android/settings/AppPicker;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-eqz v12, :cond_5

    .line 127
    const/4 v11, 0x1

    .line 131
    .end local v10    # "requestedPermission":Ljava/lang/String;
    :cond_3
    if-eqz v11, :cond_0

    .line 139
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "pi":Landroid/content/pm/PackageInfo;
    .end local v11    # "requestsPermission":Z
    :cond_4
    new-instance v6, Lcom/android/settings/AppPicker$MyApplicationInfo;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/android/settings/AppPicker$MyApplicationInfo;-><init>(Lcom/android/settings/AppPicker;)V

    .line 140
    .local v6, "info":Lcom/android/settings/AppPicker$MyApplicationInfo;
    iput-object v1, v6, Lcom/android/settings/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    .line 141
    iget-object v12, v6, Lcom/android/settings/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/AppPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v6, Lcom/android/settings/AppPicker$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    .line 142
    iget-object v12, p0, Lcom/android/settings/AppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 125
    .end local v6    # "info":Lcom/android/settings/AppPicker$MyApplicationInfo;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v10    # "requestedPermission":Ljava/lang/String;
    .restart local v11    # "requestsPermission":Z
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 134
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "pi":Landroid/content/pm/PackageInfo;
    .end local v10    # "requestedPermission":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 135
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 144
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "requestsPermission":Z
    :cond_6
    iget-object v12, p0, Lcom/android/settings/AppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    # getter for: Lcom/android/settings/AppPicker;->sDisplayNameComparator:Ljava/util/Comparator;
    invoke-static {}, Lcom/android/settings/AppPicker;->access$200()Ljava/util/Comparator;

    move-result-object v13

    invoke-static {v12, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 145
    new-instance v6, Lcom/android/settings/AppPicker$MyApplicationInfo;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/android/settings/AppPicker$MyApplicationInfo;-><init>(Lcom/android/settings/AppPicker;)V

    .line 146
    .restart local v6    # "info":Lcom/android/settings/AppPicker$MyApplicationInfo;
    const v12, 0x7f0e0c20

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v6, Lcom/android/settings/AppPicker$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    .line 147
    iget-object v12, p0, Lcom/android/settings/AppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 148
    iget-object v12, p0, Lcom/android/settings/AppPicker$AppListAdapter;->mPackageInfoList:Ljava/util/List;

    invoke-virtual {p0, v12}, Lcom/android/settings/AppPicker$AppListAdapter;->addAll(Ljava/util/Collection;)V

    .line 149
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 155
    iget-object v2, p0, Lcom/android/settings/AppPicker$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v2, p2}, Lcom/android/settings/applications/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/applications/AppViewHolder;

    move-result-object v0

    .line 156
    .local v0, "holder":Lcom/android/settings/applications/AppViewHolder;
    iget-object p2, v0, Lcom/android/settings/applications/AppViewHolder;->rootView:Landroid/view/View;

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/settings/AppPicker$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/AppPicker$MyApplicationInfo;

    .line 158
    .local v1, "info":Lcom/android/settings/AppPicker$MyApplicationInfo;
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/settings/AppPicker$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v2, v1, Lcom/android/settings/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 160
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/android/settings/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/settings/AppPicker$AppListAdapter;->this$0:Lcom/android/settings/AppPicker;

    invoke-virtual {v4}, Lcom/android/settings/AppPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/settings/AppPicker$MyApplicationInfo;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :goto_0
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    return-object p2

    .line 163
    :cond_0
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
