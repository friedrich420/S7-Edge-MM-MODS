.class Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog$1;
.super Landroid/os/Handler;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;)V
    .registers 2

    .prologue
    .line 7819
    iput-object p1, p0, this$1:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 7822
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_82

    .line 7847
    :cond_6
    :goto_6
    :pswitch_6
    iget-object v1, p0, this$1:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, this$1:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 7848
    iget-object v1, p0, this$1:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mUnfixDialogShow:Z

    .line 7849
    return-void

    .line 7826
    :pswitch_25
    iget-object v1, p0, this$1:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFixedTask:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_6

    .line 7827
    iget-object v1, p0, this$1:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFixedTask:Lcom/android/server/am/TaskRecord;

    .line 7828
    .local v0, "fixedTR":Lcom/android/server/am/TaskRecord;
    iget-object v1, p0, this$1:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->setFixedTask(Lcom/android/server/am/TaskRecord;)V

    .line 7829
    iget-object v1, p0, this$1:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mPendingUnfixTask:I

    packed-switch v1, :pswitch_data_8a

    .line 7842
    :cond_45
    :goto_45
    iget-object v1, p0, this$1:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, -0x1

    iput v2, v1, Lcom/android/server/am/ActivityManagerService;->mPendingUnfixTask:I

    goto :goto_6

    .line 7831
    :pswitch_4f
    iget-object v1, p0, this$1:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, this$1:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->token:Landroid/os/IBinder;

    iget-object v3, p0, this$1:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    iget v3, v3, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->resultCode:I

    iget-object v4, p0, this$1:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->resultData:Landroid/content/Intent;

    iget-object v5, p0, this$1:Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityStackSupervisor$UnfixDialog;->finishTask:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    goto :goto_45

    .line 7834
    :pswitch_69
    invoke-virtual {v0, v2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 7835
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->finishActivityAffinityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_45

    .line 7839
    :pswitch_79
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(I)Z

    goto :goto_45

    .line 7822
    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_6
        :pswitch_25
    .end packed-switch

    .line 7829
    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_4f
        :pswitch_69
        :pswitch_79
    .end packed-switch
.end method
