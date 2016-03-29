.class final Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/RecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnClickRecentsButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recents/views/RecentsView;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/views/RecentsView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/recents/views/RecentsView;
    .param p2, "x1"    # Lcom/android/systemui/recents/views/RecentsView$1;

    .prologue
    .line 545
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v13, 0x8

    .line 548
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 610
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 550
    :pswitch_1
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    # getter for: Lcom/android/systemui/recents/views/RecentsView;->launchIntent:Landroid/util/SparseArray;
    invoke-static {v10}, Lcom/android/systemui/recents/views/RecentsView;->access$100(Lcom/android/systemui/recents/views/RecentsView;)Landroid/util/SparseArray;

    move-result-object v10

    const v11, 0x7f0e01db

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 551
    .local v8, "taskManagerIntent":Landroid/content/Intent;
    if-eqz v8, :cond_0

    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    # invokes: Lcom/android/systemui/recents/views/RecentsView;->executeApplication(Landroid/content/Intent;)Z
    invoke-static {v10, v8}, Lcom/android/systemui/recents/views/RecentsView;->access$200(Lcom/android/systemui/recents/views/RecentsView;Landroid/content/Intent;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 552
    const-string v10, "RecentsView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " package disabled in background?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 557
    .end local v8    # "taskManagerIntent":Landroid/content/Intent;
    :pswitch_2
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v10, v10, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->isCloseProcessingBtnClicked:Z

    if-eqz v10, :cond_1

    .line 558
    const-string v10, "RecentsView"

    const-string v11, "OnClickRemoveAllButton is blocked"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 561
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v10, v10, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/systemui/recents/RecentsConfiguration;->isCloseProcessingBtnClicked:Z

    .line 563
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_2

    .line 564
    const-string v10, "RecentsView"

    const-string v11, "OnClickRemoveAllButton: button is hidden. return."

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 568
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 572
    .local v0, "am":Landroid/app/ActivityManager;
    sget-boolean v10, Lcom/android/systemui/recents/Constants$Features;->EnableRecentsAppLock:Z

    if-eqz v10, :cond_5

    .line 573
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v10, v10, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    if-eqz v10, :cond_6

    .line 574
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v10, v10, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_6

    .line 575
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v10, v10, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/model/TaskStack;

    .line 576
    .local v5, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 577
    .local v9, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 578
    .local v7, "taskCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v7, :cond_4

    .line 579
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/model/Task;

    .line 580
    .local v6, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/systemui/recents/model/Task;->isTaskLocked(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 581
    iget-object v10, v6, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v10, v10, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v10}, Landroid/app/ActivityManager;->removeTask(I)Z

    .line 582
    const-string v10, "RecentsView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "remove tasks if unlocked: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v12, v12, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 574
    .end local v6    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 589
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v7    # "taskCount":I
    .end local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_5
    const/4 v10, -0x1

    invoke-virtual {v0, v10, v13}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 592
    :cond_6
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v10, v10, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    if-eqz v10, :cond_7

    sget-boolean v10, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-eqz v10, :cond_7

    .line 593
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    # getter for: Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/systemui/recents/views/RecentsView;->access$300(Lcom/android/systemui/recents/views/RecentsView;)Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0500a1

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 595
    .local v1, "animation":Landroid/view/animation/Animation;
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v10, v10, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->sineInOut90Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 596
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v10, v10, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 597
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v10, v10, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 600
    .end local v1    # "animation":Landroid/view/animation/Animation;
    :cond_7
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v10, v10, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v10, v10, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v10}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onCloseAllButtonClicked()V

    goto/16 :goto_0

    .line 603
    .end local v0    # "am":Landroid/app/ActivityManager;
    :pswitch_3
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    # getter for: Lcom/android/systemui/recents/views/RecentsView;->launchIntent:Landroid/util/SparseArray;
    invoke-static {v10}, Lcom/android/systemui/recents/views/RecentsView;->access$100(Lcom/android/systemui/recents/views/RecentsView;)Landroid/util/SparseArray;

    move-result-object v10

    const v11, 0x7f0e01dd

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 604
    .local v2, "googleLaunchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_0

    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    # invokes: Lcom/android/systemui/recents/views/RecentsView;->executeApplication(Landroid/content/Intent;)Z
    invoke-static {v10, v2}, Lcom/android/systemui/recents/views/RecentsView;->access$200(Lcom/android/systemui/recents/views/RecentsView;Landroid/content/Intent;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 605
    const-string v10, "RecentsView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " package disabled in background?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 548
    :pswitch_data_0
    .packed-switch 0x7f0e01db
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
