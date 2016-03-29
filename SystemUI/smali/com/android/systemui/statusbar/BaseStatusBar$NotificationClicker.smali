.class final Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NotificationClicker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    .prologue
    .line 2900
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/BaseStatusBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/BaseStatusBar$1;

    .prologue
    .line 2900
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2902
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v1, :cond_0

    .line 2903
    const-string v1, "StatusBar"

    const-string v2, "NotificationClicker called on a view that is not a notification row."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    :goto_0
    return-void

    :cond_0
    move-object/from16 v5, p1

    .line 2907
    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 2908
    .local v5, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v16

    .line 2909
    .local v16, "sbn":Landroid/service/notification/StatusBarNotification;
    if-nez v16, :cond_1

    .line 2910
    const-string v1, "StatusBar"

    const-string v2, "NotificationClicker called on an unclickable notification,"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2914
    :cond_1
    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v8, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2915
    .local v8, "intent":Landroid/app/PendingIntent;
    invoke-virtual/range {v16 .. v16}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 2918
    .local v3, "notificationKey":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setJustClicked(Z)V

    .line 2919
    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 2927
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Clicked on content of "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v6

    .line 2930
    .local v6, "keyguardShowing":Z
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v10, v10, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-static {v1, v2, v10}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v7, 0x1

    .line 2934
    .local v7, "afterKeyguardGone":Z
    :goto_1
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 2935
    .local v9, "userId":I
    :goto_2
    if-eqz v8, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar;->knoxContainerInLockMode(I)Z
    invoke-static {v1, v9}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$1700(Lcom/android/systemui/statusbar/BaseStatusBar;I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v4, 0x1

    .line 2938
    .local v4, "isForLockedKnoxContainer":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 2940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldUnlock(Z)V

    .line 2941
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v2, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v1, v2, v10, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZZ)V

    .line 2951
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;Ljava/lang/String;ZLcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/app/PendingIntent;I)V

    const/4 v12, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v11, v1

    move v13, v7

    invoke-virtual/range {v10 .. v15}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Ljava/lang/Runnable;ZZZ)V

    goto/16 :goto_0

    .line 2930
    .end local v4    # "isForLockedKnoxContainer":Z
    .end local v7    # "afterKeyguardGone":Z
    .end local v9    # "userId":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 2934
    .restart local v7    # "afterKeyguardGone":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 2935
    .restart local v9    # "userId":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 2940
    .restart local v4    # "isForLockedKnoxContainer":Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    .line 2943
    :cond_7
    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mActivated:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mBlockDoubleTabOnNotification:Z

    if-nez v1, :cond_2

    .line 2945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCoveredState()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    :goto_6
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldUnlock(Z)V

    .line 2947
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v2, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v1, v2, v10, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZZ)V

    goto :goto_5

    .line 2945
    :cond_8
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public register(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 3078
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3079
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 3080
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3084
    :goto_0
    return-void

    .line 3082
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
