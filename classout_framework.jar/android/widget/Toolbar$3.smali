.class Landroid/widget/Toolbar$3;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Toolbar;->setExpandShrinkButton(IIZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/widget/Toolbar;)V
    .registers 2

    .prologue
    .line 417
    iput-object p1, p0, this$0:Landroid/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 419
    iget-object v2, p0, this$0:Landroid/widget/Toolbar;

    invoke-virtual {v2}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 420
    .local v0, "DISPLAY_ID":I
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v2

    if-ne v0, v2, :cond_30

    .line 421
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v2}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v1

    .line 422
    .local v1, "taskInfo":Lcom/samsung/android/dualscreen/TaskInfo;
    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/TaskInfo;->isCoupled()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 423
    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskId()I

    move-result v2

    sget-object v3, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v2, v3}, Lcom/samsung/android/dualscreen/DualScreenManager;->sendShrinkRequest(ILcom/samsung/android/dualscreen/DualScreen;)V

    .line 435
    .end local v1    # "taskInfo":Lcom/samsung/android/dualscreen/TaskInfo;
    :cond_27
    :goto_27
    return-void

    .line 425
    .restart local v1    # "taskInfo":Lcom/samsung/android/dualscreen/TaskInfo;
    :cond_28
    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/dualscreen/DualScreenManager;->sendExpandRequest(I)V

    goto :goto_27

    .line 427
    .end local v1    # "taskInfo":Lcom/samsung/android/dualscreen/TaskInfo;
    :cond_30
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v2

    if-ne v0, v2, :cond_27

    .line 428
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v2}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v1

    .line 429
    .restart local v1    # "taskInfo":Lcom/samsung/android/dualscreen/TaskInfo;
    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/TaskInfo;->isCoupled()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 430
    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskId()I

    move-result v2

    sget-object v3, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v2, v3}, Lcom/samsung/android/dualscreen/DualScreenManager;->sendShrinkRequest(ILcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_27

    .line 432
    :cond_4e
    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/dualscreen/DualScreenManager;->sendExpandRequest(I)V

    goto :goto_27
.end method
