.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1$1;
.super Ljava/lang/Object;
.source "CenterBarWindowService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;->noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1$1;->this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;

    iput-object p2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 144
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1$1;->val$intent:Landroid/content/Intent;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1$1;->val$intent:Landroid/content/Intent;

    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 147
    :try_start_0
    const-string v5, "CenterBarWindowService"

    const-string v6, "mUsageStatsWatcher : Home resumed"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1$1;->this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;

    iget-object v5, v5, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 149
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1$1;->this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;

    iget-object v5, v5, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideButtonsPopupWindow(Z)V

    .line 150
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1$1;->this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;

    iget-object v5, v5, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideDragAndDropHelpDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1$1;->this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;

    iget-object v5, v5, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getArrangeState()I

    move-result v0

    .line 159
    .local v0, "arrangeState":I
    const-string v5, "CenterBarWindowService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "noteResumeComponent  /arrangeState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-ne v0, v8, :cond_0

    .line 162
    const/4 v1, 0x0

    .line 164
    .local v1, "forceHideCenterBar":Z
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1$1;->this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;

    iget-object v5, v5, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object v4

    .line 168
    .local v4, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 169
    .local v3, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-ne v5, v8, :cond_2

    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v6, 0x2000000

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/high16 v6, 0x4000000

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 172
    :cond_3
    const/4 v1, 0x1

    .line 176
    .end local v3    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4
    const-string v5, "CenterBarWindowService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MultiWindowFacade.ARRANGE_SPLITED / forceHideCenterBar : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-nez v1, :cond_0

    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1$1;->this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;

    iget-object v5, v5, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mLastMultiWindowTypeArray:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$300(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Landroid/util/SparseArray;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1$1;->this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;

    iget-object v6, v6, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mUserId:I
    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$200(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 179
    const-string v5, "CenterBarWindowService"

    const-string v6, "initCenterBarButtonAnim()"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1$1;->this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;

    iget-object v5, v5, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    invoke-virtual {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->initCenterBarButtonAnim()V

    .line 181
    iget-object v5, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1$1;->this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;

    iget-object v5, v5, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mLastMultiWindowTypeArray:Landroid/util/SparseArray;
    invoke-static {v5}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$300(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Landroid/util/SparseArray;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1$1;->this$1:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;

    iget-object v6, v6, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mUserId:I
    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$200(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)I

    move-result v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 152
    .end local v0    # "arrangeState":I
    .end local v1    # "forceHideCenterBar":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method
