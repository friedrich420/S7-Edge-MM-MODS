.class Lcom/samsung/android/personalpage/service/PrivateModeManagerService$5;
.super Ljava/lang/Object;
.source "PrivateModeManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->showPrivateModeNormalDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

.field final synthetic val$status:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;Z)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$5;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    iput-boolean p2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$5;->val$status:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x1

    .line 603
    const-string v1, "PrivateModeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NormalModePopup: onCancel, mIsMountedPrivateStorage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z
    invoke-static {}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->access$900()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-boolean v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$5;->val$status:Z

    if-eqz v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$5;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-virtual {v1, v4}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->notifyEventToClient(I)V

    .line 608
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$5;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    # getter for: Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;
    invoke-static {v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->access$400(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)Lcom/samsung/android/personalpage/service/PersonalPageService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getLevelPrivatemode()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 609
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$5;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    # getter for: Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;
    invoke-static {v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->access$400(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)Lcom/samsung/android/personalpage/service/PersonalPageService;

    move-result-object v1

    const-string v2, "pref_pp_normal_on_disclaimer_noti"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->setPreferences(Ljava/lang/String;Z)V

    .line 612
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$5;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$5;->this$0:Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    # getter for: Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;
    invoke-static {v2}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->access$400(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)Lcom/samsung/android/personalpage/service/PersonalPageService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    # invokes: Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V
    invoke-static {v1, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->access$700(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;I)V

    .line 613
    return-void

    .line 612
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
