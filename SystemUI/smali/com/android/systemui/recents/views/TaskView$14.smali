.class Lcom/android/systemui/recents/views/TaskView$14;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$tv:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskView;Landroid/view/View;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskView$14;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskView$14;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1324
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_1

    .line 1330
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    .line 1332
    .local v6, "am":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$14;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewAppInfoClicked(Lcom/android/systemui/recents/views/TaskView;)V

    .line 1387
    .end local v6    # "am":Landroid/view/accessibility/AccessibilityManager;
    :cond_0
    :goto_0
    return-void

    .line 1338
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_2

    .line 1339
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    .line 1341
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "overview_task_dismissed_source"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 1343
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_3

    .line 1344
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$14;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskResize(Lcom/android/systemui/recents/views/TaskView;)V

    goto :goto_0

    .line 1348
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_7

    .line 1349
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    .line 1350
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    if-eqz v0, :cond_4

    .line 1351
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mCb:Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$14;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskView$14;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    move v5, v3

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;ZZZ)V

    .line 1353
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v10, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    .line 1355
    .local v10, "taskId":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 1356
    .local v7, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1357
    .local v9, "packageName":Ljava/lang/String;
    if-ltz v10, :cond_5

    if-eqz v7, :cond_5

    if-nez v9, :cond_6

    .line 1358
    :cond_5
    const-string v0, "Recents_TaskView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "task has unvalid elements taskId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1361
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0, v10, v7, v9}, Lcom/android/systemui/recents/views/TaskView;->handleOnClickMultiWindowBtn(ILandroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1366
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "taskId":I
    :cond_7
    sget-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableRecentsAppLock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    if-ne v0, v1, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v0, :cond_9

    .line 1368
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    .line 1369
    .local v8, "lockComponentName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    # getter for: Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/recents/views/TaskView;->access$000(Lcom/android/systemui/recents/views/TaskView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/Task;->isTaskLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1370
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLockTaskBtn(Z)V

    .line 1371
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    # getter for: Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskView;->access$000(Lcom/android/systemui/recents/views/TaskView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/recents/model/LockTaskPreference;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/LockTaskPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    # getter for: Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/recents/views/TaskView;->access$000(Lcom/android/systemui/recents/views/TaskView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/android/systemui/recents/model/LockTaskPreference;->removePreference(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1373
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLockTaskBtn(Z)V

    .line 1374
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    # getter for: Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/recents/views/TaskView;->access$000(Lcom/android/systemui/recents/views/TaskView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/recents/model/LockTaskPreference;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/LockTaskPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskView$14;->this$0:Lcom/android/systemui/recents/views/TaskView;

    # getter for: Lcom/android/systemui/recents/views/TaskView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/recents/views/TaskView;->access$000(Lcom/android/systemui/recents/views/TaskView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Lcom/android/systemui/recents/model/LockTaskPreference;->savePreference(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1377
    .end local v8    # "lockComponentName":Ljava/lang/String;
    :cond_9
    const-string v0, "Recents_TaskView"

    const-string v1, "onclick: Task has unvalid elements: baseIntent, do not lock or unlock task"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
