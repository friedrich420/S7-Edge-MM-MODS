.class Lcom/android/settings/notification/BlockNotificationList$1;
.super Ljava/lang/Object;
.source "BlockNotificationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/BlockNotificationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/BlockNotificationList;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/BlockNotificationList;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/BlockNotificationList;->access$000(Lcom/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v24

    monitor-enter v24

    .line 212
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 213
    .local v22, "start":J
    # getter for: Lcom/android/settings/notification/BlockNotificationList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/BlockNotificationList;->access$100()Z

    move-result v21

    if-eqz v21, :cond_0

    const-string v21, "BlockNotificationList"

    const-string v25, "Collecting apps..."

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/BlockNotificationList;->access$000(Lcom/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->clear()V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/BlockNotificationList;->access$200(Lcom/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 218
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v5, "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v21

    if-nez v21, :cond_1

    monitor-exit v24

    .line 303
    :goto_0
    return-void

    .line 220
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/notification/BlockNotificationList;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 221
    .local v17, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mLauncherApps:Landroid/content/pm/LauncherApps;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/BlockNotificationList;->access$300(Lcom/android/settings/notification/BlockNotificationList;)Landroid/content/pm/LauncherApps;

    move-result-object v21

    const/16 v25, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v14

    .line 224
    .local v14, "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    # getter for: Lcom/android/settings/notification/BlockNotificationList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/BlockNotificationList;->access$100()Z

    move-result v21

    if-eqz v21, :cond_2

    const-string v21, "BlockNotificationList"

    const-string v25, "  launchable activities:"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_2
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/LauncherActivityInfo;

    .line 226
    .local v13, "lai":Landroid/content/pm/LauncherActivityInfo;
    # getter for: Lcom/android/settings/notification/BlockNotificationList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/BlockNotificationList;->access$100()Z

    move-result v21

    if-eqz v21, :cond_3

    const-string v21, "BlockNotificationList"

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

    .line 227
    :cond_3
    invoke-virtual {v13}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 228
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v25

    # invokes: Lcom/android/settings/notification/BlockNotificationList;->findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/BlockNotificationList;->access$400(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 229
    .local v11, "info":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lcom/android/settings/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v21

    if-eqz v21, :cond_4

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/settings/Utils;->showBlockNotiication(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 230
    const-string v21, "XPC"

    const-string v25, "continue"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 302
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

    .line 233
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "appInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "info":Landroid/content/pm/PackageInfo;
    .restart local v13    # "lai":Landroid/content/pm/LauncherActivityInfo;
    .restart local v14    # "lais":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    .restart local v17    # "pm":Landroid/content/pm/PackageManager;
    .restart local v22    # "start":J
    :cond_4
    :try_start_1
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 236
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "info":Landroid/content/pm/PackageInfo;
    .end local v13    # "lai":Landroid/content/pm/LauncherActivityInfo;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/BlockNotificationList;->access$500(Lcom/android/settings/notification/BlockNotificationList;)Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/BlockNotificationList;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v18

    .line 238
    .local v18, "resolvedConfigActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    # getter for: Lcom/android/settings/notification/BlockNotificationList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/BlockNotificationList;->access$100()Z

    move-result v21

    if-eqz v21, :cond_6

    const-string v21, "BlockNotificationList"

    const-string v25, "  config activities:"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_6
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/ResolveInfo;

    .line 240
    .local v19, "ri":Landroid/content/pm/ResolveInfo;
    # getter for: Lcom/android/settings/notification/BlockNotificationList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/BlockNotificationList;->access$100()Z

    move-result v21

    if-eqz v21, :cond_7

    const-string v21, "BlockNotificationList"

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

    .line 242
    :cond_7
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 243
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v25

    # invokes: Lcom/android/settings/notification/BlockNotificationList;->findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/BlockNotificationList;->access$400(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 245
    .restart local v11    # "info":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lcom/android/settings/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 246
    const-string v21, "XPC"

    const-string v25, "222 continue"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 249
    :cond_8
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 253
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "info":Landroid/content/pm/PackageInfo;
    .end local v19    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_9
    const/4 v7, 0x0

    .end local v10    # "i$":Ljava/util/Iterator;
    .local v7, "i":I
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_e

    .line 254
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 255
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->excludeKnoxApp:[Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/BlockNotificationList;->access$600(Lcom/android/settings/notification/BlockNotificationList;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "arr$":[Ljava/lang/String;
    array-length v15, v6

    .local v15, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_4
    if-ge v10, v15, :cond_a

    aget-object v16, v6, v10

    .line 256
    .local v16, "packageName":Ljava/lang/String;
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 257
    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 258
    add-int/lit8 v7, v7, -0x1

    .line 263
    .end local v16    # "packageName":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mHideApp:Z
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/BlockNotificationList;->access$700(Lcom/android/settings/notification/BlockNotificationList;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->hide_app_notification_list:[Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/BlockNotificationList;->access$800(Lcom/android/settings/notification/BlockNotificationList;)[Ljava/lang/String;

    move-result-object v6

    array-length v15, v6

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v15, :cond_b

    aget-object v16, v6, v10

    .line 265
    .restart local v16    # "packageName":Ljava/lang/String;
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 266
    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 267
    add-int/lit8 v7, v7, -0x1

    .line 253
    .end local v16    # "packageName":Ljava/lang/String;
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 255
    .restart local v16    # "packageName":Ljava/lang/String;
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 264
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 274
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v15    # "len$":I
    .end local v16    # "packageName":Ljava/lang/String;
    :cond_e
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 275
    .local v11, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v12, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 276
    .local v12, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/BlockNotificationList;->access$000(Lcom/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_f

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/BlockNotificationList;->access$500(Lcom/android/settings/notification/BlockNotificationList;)Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v25, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mBackend:Lcom/android/settings/notification/NotificationBackend;
    invoke-static/range {v25 .. v25}, Lcom/android/settings/notification/BlockNotificationList;->access$900(Lcom/android/settings/notification/BlockNotificationList;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v11, v1}, Lcom/android/settings/notification/BlockNotificationList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/notification/NotificationBackend;)Lcom/android/settings/notification/BlockNotificationList$AppRow;

    move-result-object v20

    .line 282
    .local v20, "row":Lcom/android/settings/notification/BlockNotificationList$AppRow;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/BlockNotificationList;->access$000(Lcom/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 285
    .end local v11    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "key":Ljava/lang/String;
    .end local v20    # "row":Lcom/android/settings/notification/BlockNotificationList$AppRow;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mPM:Landroid/content/pm/PackageManager;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/BlockNotificationList;->access$500(Lcom/android/settings/notification/BlockNotificationList;)Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v25, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v25 .. v25}, Lcom/android/settings/notification/BlockNotificationList;->access$000(Lcom/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/BlockNotificationList;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/BlockNotificationList;->access$200(Lcom/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v25, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v25 .. v25}, Lcom/android/settings/notification/BlockNotificationList;->access$000(Lcom/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/BlockNotificationList;->access$200(Lcom/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

    move-result-object v21

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mRowComparator:Ljava/util/Comparator;
    invoke-static {}, Lcom/android/settings/notification/BlockNotificationList;->access$1000()Ljava/util/Comparator;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/notification/BlockNotificationList;->access$1200(Lcom/android/settings/notification/BlockNotificationList;)Landroid/os/Handler;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v25, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;
    invoke-static/range {v25 .. v25}, Lcom/android/settings/notification/BlockNotificationList;->access$1100(Lcom/android/settings/notification/BlockNotificationList;)Ljava/lang/Runnable;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    sub-long v8, v26, v22

    .line 301
    .local v8, "elapsed":J
    # getter for: Lcom/android/settings/notification/BlockNotificationList;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/BlockNotificationList;->access$100()Z

    move-result v21

    if-eqz v21, :cond_11

    const-string v21, "BlockNotificationList"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Collected "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mRows:Landroid/util/ArrayMap;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/notification/BlockNotificationList;->access$000(Lcom/android/settings/notification/BlockNotificationList;)Landroid/util/ArrayMap;

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

    iget-object v0, v0, Lcom/android/settings/notification/BlockNotificationList$1;->this$0:Lcom/android/settings/notification/BlockNotificationList;

    move-object/from16 v26, v0

    # getter for: Lcom/android/settings/notification/BlockNotificationList;->mSortedRows:Ljava/util/ArrayList;
    invoke-static/range {v26 .. v26}, Lcom/android/settings/notification/BlockNotificationList;->access$200(Lcom/android/settings/notification/BlockNotificationList;)Ljava/util/ArrayList;

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

    .line 302
    :cond_11
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
