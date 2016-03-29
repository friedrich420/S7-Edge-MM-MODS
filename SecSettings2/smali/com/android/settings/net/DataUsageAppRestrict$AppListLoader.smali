.class Lcom/android/settings/net/DataUsageAppRestrict$AppListLoader;
.super Landroid/content/AsyncTaskLoader;
.source "DataUsageAppRestrict.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/net/DataUsageAppRestrict;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppListLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/settings/net/DataUsageAppRestrict$AppItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 1003
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 1004
    iput-object p2, p0, Lcom/android/settings/net/DataUsageAppRestrict$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    .line 1005
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1000
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict$AppListLoader;->loadInBackground()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/net/DataUsageAppRestrict$AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 1015
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    .line 1017
    .local v11, "mItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/net/DataUsageAppRestrict$AppItem;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1018
    .local v2, "LauncherIntent":Landroid/content/Intent;
    const-string v12, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1020
    iget-object v12, p0, Lcom/android/settings/net/DataUsageAppRestrict$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v2, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 1022
    .local v10, "mAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_2

    .line 1023
    iget-object v13, p0, Lcom/android/settings/net/DataUsageAppRestrict$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    const-string v14, "android.permission.INTERNET"

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14, v12}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1027
    .local v1, "DataPerm":I
    :try_start_0
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v7, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1028
    .local v7, "info":Landroid/content/pm/ActivityInfo;
    iget-object v12, p0, Lcom/android/settings/net/DataUsageAppRestrict$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    iget-object v13, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1030
    .local v0, "AppInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1031
    .local v3, "appid":I
    iget-object v12, p0, Lcom/android/settings/net/DataUsageAppRestrict$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1032
    .local v9, "label":Ljava/lang/CharSequence;
    iget-object v12, p0, Lcom/android/settings/net/DataUsageAppRestrict$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v7, v12, v13, v14}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1034
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v12, p0, Lcom/android/settings/net/DataUsageAppRestrict$AppListLoader;->mPm:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_1

    .line 1022
    .end local v0    # "AppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appid":I
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "info":Landroid/content/pm/ActivityInfo;
    .end local v9    # "label":Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1036
    .restart local v0    # "AppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "appid":I
    .restart local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v9    # "label":Ljava/lang/CharSequence;
    :cond_1
    const/16 v12, 0x2710

    if-lt v3, v12, :cond_0

    const/16 v12, 0x4e1f

    if-gt v3, v12, :cond_0

    .line 1037
    const-string v13, "DataUsageAppRestrict"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "DataUsageRestrictAdapter : package Name : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, "  name : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " Uid : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    new-instance v8, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;

    iget-object v12, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v8, v3, v6, v9, v12}, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1041
    .local v8, "item":Lcom/android/settings/net/DataUsageAppRestrict$AppItem;
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1043
    .end local v0    # "AppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "appid":I
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "info":Landroid/content/pm/ActivityInfo;
    .end local v8    # "item":Lcom/android/settings/net/DataUsageAppRestrict$AppItem;
    .end local v9    # "label":Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    .line 1044
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1048
    .end local v1    # "DataPerm":I
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    const-string v12, "DataUsageAppRestrict"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mItems.size() : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    return-object v11
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 1062
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 1063
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict$AppListLoader;->cancelLoad()Z

    .line 1064
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 1009
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    .line 1010
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict$AppListLoader;->forceLoad()V

    .line 1011
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 1057
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    .line 1058
    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict$AppListLoader;->cancelLoad()Z

    .line 1059
    return-void
.end method
