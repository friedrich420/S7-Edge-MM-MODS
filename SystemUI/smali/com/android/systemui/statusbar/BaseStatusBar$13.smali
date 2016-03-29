.class Lcom/android/systemui/statusbar/BaseStatusBar$13;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$LongPressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    .prologue
    .line 1827
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/View;II)Z
    .locals 20
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups()V

    .line 1832
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 1833
    const/16 v18, 0x0

    .line 1891
    :goto_0
    return v18

    .line 1835
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v18

    if-nez v18, :cond_1

    .line 1836
    const-string v18, "StatusBar"

    const-string v19, "Trying to show notification guts, but not attached to window"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    const/16 v18, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v14, p1

    .line 1840
    check-cast v14, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1842
    .local v14, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->mLongPressBlockNotification:Z

    if-eqz v18, :cond_3

    .line 1843
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v15

    .line 1844
    .local v15, "sbn":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v18, v0

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1846
    .local v12, "pmUser":Landroid/content/pm/PackageManager;
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1847
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 1848
    .local v11, "pkg":Ljava/lang/String;
    const/4 v5, -0x1

    .line 1850
    .local v5, "appUid":I
    const/16 v18, 0x2200

    :try_start_0
    move/from16 v0, v18

    invoke-virtual {v12, v11, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 1853
    .local v10, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v10, :cond_2

    .line 1854
    iget v5, v10, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1860
    .end local v10    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar;->startAppNotificationSettingsActivity(Ljava/lang/String;I)V
    invoke-static {v0, v11, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$1200(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;I)V

    .line 1891
    .end local v5    # "appUid":I
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v12    # "pmUser":Landroid/content/pm/PackageManager;
    .end local v15    # "sbn":Landroid/service/notification/StatusBarNotification;
    :goto_2
    const/16 v18, 0x1

    goto :goto_0

    .line 1856
    .restart local v5    # "appUid":I
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v12    # "pmUser":Landroid/content/pm/PackageManager;
    .restart local v15    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v6

    .line 1858
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v18, "StatusBar"

    const-string v19, "cannot get ApplicationInfo : getNotificationLongClicker"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1862
    .end local v5    # "appUid":I
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v12    # "pmUser":Landroid/content/pm/PackageManager;
    .end local v15    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$1400(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1865
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v7

    .line 1866
    .local v7, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    if-nez v7, :cond_4

    .line 1868
    const/16 v18, 0x0

    goto :goto_0

    .line 1872
    :cond_4
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationGuts;->getVisibility()I

    move-result v18

    if-nez v18, :cond_5

    .line 1873
    const-string v18, "StatusBar"

    const-string v19, "Trying to show notification guts, but already visible"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 1877
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0xcc

    invoke-static/range {v18 .. v19}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1878
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    .line 1879
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationGuts;->getWidth()I

    move-result v18

    sub-int v18, v18, p2

    move/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    int-to-double v8, v0

    .line 1880
    .local v8, "horz":D
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NotificationGuts;->getActualHeight()I

    move-result v18

    sub-int v18, v18, p3

    move/from16 v0, v18

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 1881
    .local v16, "vert":D
    move-wide/from16 v0, v16

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v13, v0

    .line 1882
    .local v13, "r":F
    const/16 v18, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, v18

    invoke-static {v7, v0, v1, v2, v13}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v4

    .line 1884
    .local v4, "a":Landroid/animation/Animator;
    const-wide/16 v18, 0x190

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$1500(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/animation/TimeInterpolator;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1886
    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$13;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    # setter for: Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;
    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$1602(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;

    goto/16 :goto_2
.end method
