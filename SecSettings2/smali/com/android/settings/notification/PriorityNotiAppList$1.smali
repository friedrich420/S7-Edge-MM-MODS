.class Lcom/android/settings/notification/PriorityNotiAppList$1;
.super Ljava/lang/Object;
.source "PriorityNotiAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/PriorityNotiAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/PriorityNotiAppList;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/PriorityNotiAppList;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/PriorityNotiAppList;->access$000(Lcom/android/settings/notification/PriorityNotiAppList;)Landroid/util/ArrayMap;

    move-result-object v24

    monitor-enter v24

    .line 162
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 163
    .local v22, "start":J
    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/PriorityNotiAppList;->access$100()Z

    move-result v21

    if-eqz v21, :cond_0

    const-string v21, "PriorityNotiAppList"

    const-string v25, "Collecting apps..."

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/PriorityNotiAppList;->access$000(Lcom/android/settings/notification/PriorityNotiAppList;)Landroid/util/ArrayMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->clear()V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/PriorityNotiAppList;->access$200(Lcom/android/settings/notification/PriorityNotiAppList;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 168
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v5, "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/notification/PriorityNotiAppList;->getActivity()Landroid/app/Activity;

    move-result-object v21

    if-nez v21, :cond_1

    monitor-exit v24

    .line 244
    :goto_0
    return-void

    .line 170
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/notification/PriorityNotiAppList;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 171
    .local v17, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/PriorityNotiAppList;->access$300(Lcom/android/settings/notification/PriorityNotiAppList;)Landroid/content/pm/LauncherApps;

    move-result-object v21

    const/16 v25, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v14

    .line 174
    .local v14, "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/PriorityNotiAppList;->access$100()Z

    move-result v21

    if-eqz v21, :cond_2

    const-string v21, "PriorityNotiAppList"

    const-string v25, "  launchable activities:"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_2
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/LauncherActivityInfo;

    .line 176
    .local v13, "lai":Landroid/content/pm/LauncherActivityInfo;
    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/PriorityNotiAppList;->access$100()Z

    move-result v21

    if-eqz v21, :cond_3

    const-string v21, "PriorityNotiAppList"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v13}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_3
    invoke-virtual {v13}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 178
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v25

    # invokes: Lcom/android/settings/notification/PriorityNotiAppList;->findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/PriorityNotiAppList;->access$400(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 179
    .local v11, "info":Landroid/content/pm/PackageInfo;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 243
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "info":Landroid/content/pm/PackageInfo;
    .end local v13    # "lai":Landroid/content/pm/LauncherActivityInfo;
    .end local v14    # "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .end local v17    # "pm":Landroid/content/pm/PackageManager;
    .end local v22    # "start":J
    :catchall_0
    move-exception v21

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v21

    .line 182
    .restart local v5    # "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v14    # "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .restart local v17    # "pm":Landroid/content/pm/PackageManager;
    .restart local v22    # "start":J
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/PriorityNotiAppList;->access$500(Lcom/android/settings/notification/PriorityNotiAppList;)Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/PriorityNotiAppList;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v18

    .line 184
    .local v18, "resolvedConfigActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/PriorityNotiAppList;->access$100()Z

    move-result v21

    if-eqz v21, :cond_5

    const-string v21, "PriorityNotiAppList"

    const-string v25, "  config activities:"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ResolveInfo;

    .line 186
    .local v19, "ri":Landroid/content/pm/ResolveInfo;
    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/PriorityNotiAppList;->access$100()Z

    move-result v21

    if-eqz v21, :cond_6

    const-string v21, "PriorityNotiAppList"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "    "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_6
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 189
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v25

    # invokes: Lcom/android/settings/notification/PriorityNotiAppList;->findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/PriorityNotiAppList;->access$400(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 190
    .restart local v11    # "info":Landroid/content/pm/PackageInfo;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 194
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "info":Landroid/content/pm/PackageInfo;
    .end local v19    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_7
    const/4 v7, 0x0

    .end local v10    # "i$":Ljava/util/Iterator;
    .local v7, "i":I
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_c

    .line 195
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 196
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->excludeKnoxApp:[Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/PriorityNotiAppList;->access$600(Lcom/android/settings/notification/PriorityNotiAppList;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "arr$":[Ljava/lang/String;
    array-length v15, v6

    .local v15, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_4
    if-ge v10, v15, :cond_8

    aget-object v16, v6, v10

    .line 197
    .local v16, "packageName":Ljava/lang/String;
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 198
    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 199
    add-int/lit8 v7, v7, -0x1

    .line 204
    .end local v16    # "packageName":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mHideApp:Z
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/PriorityNotiAppList;->access$700(Lcom/android/settings/notification/PriorityNotiAppList;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->hide_app_notification_list:[Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/PriorityNotiAppList;->access$800(Lcom/android/settings/notification/PriorityNotiAppList;)[Ljava/lang/String;

    move-result-object v6

    array-length v15, v6

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v15, :cond_9

    aget-object v16, v6, v10

    .line 206
    .restart local v16    # "packageName":Ljava/lang/String;
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 207
    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 208
    add-int/lit8 v7, v7, -0x1

    .line 194
    .end local v16    # "packageName":Ljava/lang/String;
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 196
    .restart local v16    # "packageName":Ljava/lang/String;
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 205
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 215
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v15    # "len$":I
    .end local v16    # "packageName":Ljava/lang/String;
    :cond_c
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 216
    .local v11, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v12, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 217
    .local v12, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/PriorityNotiAppList;->access$000(Lcom/android/settings/notification/PriorityNotiAppList;)Landroid/util/ArrayMap;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_d

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/PriorityNotiAppList;->access$500(Lcom/android/settings/notification/PriorityNotiAppList;)Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v25, v0

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mBackend:Lcom/android/settings/notification/NotificationBackend;
    invoke-static/range {v25 .. v25}, Lcom/android/settings/notification/PriorityNotiAppList;->access$900(Lcom/android/settings/notification/PriorityNotiAppList;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v11, v1}, Lcom/android/settings/notification/PriorityNotiAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/notification/NotificationBackend;)Lcom/android/settings/notification/PriorityNotiAppList$AppRow;

    move-result-object v20

    .line 223
    .local v20, "row":Lcom/android/settings/notification/PriorityNotiAppList$AppRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/PriorityNotiAppList;->access$000(Lcom/android/settings/notification/PriorityNotiAppList;)Landroid/util/ArrayMap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 226
    .end local v11    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "key":Ljava/lang/String;
    .end local v20    # "row":Lcom/android/settings/notification/PriorityNotiAppList$AppRow;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/PriorityNotiAppList;->access$500(Lcom/android/settings/notification/PriorityNotiAppList;)Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v25, v0

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v25 .. v25}, Lcom/android/settings/notification/PriorityNotiAppList;->access$000(Lcom/android/settings/notification/PriorityNotiAppList;)Landroid/util/ArrayMap;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/PriorityNotiAppList;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/PriorityNotiAppList;->access$200(Lcom/android/settings/notification/PriorityNotiAppList;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v25, v0

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v25 .. v25}, Lcom/android/settings/notification/PriorityNotiAppList;->access$000(Lcom/android/settings/notification/PriorityNotiAppList;)Landroid/util/ArrayMap;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/PriorityNotiAppList;->access$200(Lcom/android/settings/notification/PriorityNotiAppList;)Ljava/util/ArrayList;

    move-result-object v21

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mRowComparator:Ljava/util/Comparator;
    invoke-static {}, Lcom/android/settings/notification/PriorityNotiAppList;->access$1000()Ljava/util/Comparator;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/PriorityNotiAppList;->access$1200(Lcom/android/settings/notification/PriorityNotiAppList;)Landroid/os/Handler;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v25, v0

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;
    invoke-static/range {v25 .. v25}, Lcom/android/settings/notification/PriorityNotiAppList;->access$1100(Lcom/android/settings/notification/PriorityNotiAppList;)Ljava/lang/Runnable;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    sub-long v8, v26, v22

    .line 242
    .local v8, "elapsed":J
    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/PriorityNotiAppList;->access$100()Z

    move-result v21

    if-eqz v21, :cond_f

    const-string v21, "PriorityNotiAppList"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Collected "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/notification/PriorityNotiAppList;->access$000(Lcom/android/settings/notification/PriorityNotiAppList;)Landroid/util/ArrayMap;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " apps in "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "ms"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " mSortedRows.size=="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/PriorityNotiAppList$1;->this$0:Lcom/android/settings/notification/PriorityNotiAppList;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/notification/PriorityNotiAppList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/notification/PriorityNotiAppList;->access$200(Lcom/android/settings/notification/PriorityNotiAppList;)Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_f
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
