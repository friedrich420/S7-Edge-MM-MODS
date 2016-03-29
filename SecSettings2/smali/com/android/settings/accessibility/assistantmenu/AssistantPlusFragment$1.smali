.class Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$1;
.super Landroid/os/Handler;
.source "AssistantPlusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$1;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 83
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$1;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    # setter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mLoadComplete:Z
    invoke-static {v0, v3}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$002(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;Z)Z

    .line 85
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$1;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$100(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 86
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[c] Oncreate :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$1;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I
    invoke-static {v2}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$200(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "aplication status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$1;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appsWithEAM:I
    invoke-static {v2}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$300(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$1;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I
    invoke-static {v0}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$200(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$1;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appsWithEAM:I
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$300(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$1;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkboxPref:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$400(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$1;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I
    invoke-static {v0}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$200(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$1;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appsWithEAM:I
    invoke-static {v1}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$300(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$1;->this$0:Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    # getter for: Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkboxPref:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->access$400(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method
