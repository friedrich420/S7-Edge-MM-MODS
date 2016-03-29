.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->makeButtonPopupLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0

    .prologue
    .line 1667
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1669
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideButtonsPopupWindow(Z)V

    .line 1671
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->forceHideInputMethod()V
    invoke-static {v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$2300(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V

    .line 1672
    const/4 v1, 0x0

    .line 1673
    .local v1, "targetTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v4

    const/16 v5, 0x64

    const/16 v6, 0x12

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object v3

    .line 1674
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1675
    .local v2, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mFocusZoneInfo:I
    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$1900(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1677
    move-object v1, v2

    .line 1681
    .end local v2    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    if-eqz v1, :cond_2

    .line 1682
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_3

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.android.snote"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1684
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$600(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v4

    iget v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->exitByCloseBtn(I)V

    .line 1692
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    iget-object v4, v4, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mTimerHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15$1;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15;)V

    const-wide/16 v6, 0x190

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1698
    return-void

    .line 1686
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$3800(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/app/ActivityManager;

    move-result-object v4

    iget v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    const/16 v6, 0x10

    invoke-virtual {v4, v5, v6}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 1687
    iget-object v4, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$15;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "SPLW"

    const-string v6, "CLOSE"

    invoke-static {v4, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
