.class Lcom/android/settings/UCSCryptKeeperTask$4;
.super Ljava/lang/Object;
.source "UCSCryptKeeperTask.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UCSCryptKeeperTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UCSCryptKeeperTask;


# direct methods
.method constructor <init>(Lcom/android/settings/UCSCryptKeeperTask;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/settings/UCSCryptKeeperTask$4;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 643
    if-eqz p2, :cond_0

    const/4 v3, 0x6

    if-ne p2, v3, :cond_5

    .line 645
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 678
    .end local v0    # "password":Ljava/lang/String;
    :goto_0
    return v1

    .line 652
    .restart local v0    # "password":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask$4;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v3, v3, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    invoke-virtual {v3}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 653
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    :cond_2
    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask$4;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z
    invoke-static {v3}, Lcom/android/settings/UCSCryptKeeperTask;->access$600(Lcom/android/settings/UCSCryptKeeperTask;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 657
    const-string v3, ""

    # setter for: Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/UCSCryptKeeperTask;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 658
    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask$4;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/settings/UCSCryptKeeperTask;->access$400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 659
    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask$4;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;
    invoke-static {v3}, Lcom/android/settings/UCSCryptKeeperTask;->access$800(Lcom/android/settings/UCSCryptKeeperTask;)Lcom/android/settings/CryptKeeper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 661
    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask$4;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z
    invoke-static {v3}, Lcom/android/settings/UCSCryptKeeperTask;->access$900(Lcom/android/settings/UCSCryptKeeperTask;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 662
    new-instance v3, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;

    iget-object v4, p0, Lcom/android/settings/UCSCryptKeeperTask$4;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-direct {v3, v4, v5}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;-><init>(Lcom/android/settings/UCSCryptKeeperTask;Lcom/android/settings/UCSCryptKeeperTask$1;)V

    new-array v4, v1, [Ljava/lang/String;

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 664
    :cond_3
    new-instance v3, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;

    iget-object v4, p0, Lcom/android/settings/UCSCryptKeeperTask$4;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-direct {v3, v4, v5}, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;-><init>(Lcom/android/settings/UCSCryptKeeperTask;Lcom/android/settings/UCSCryptKeeperTask$1;)V

    new-array v4, v1, [Ljava/lang/String;

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 674
    :cond_4
    # setter for: Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 675
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$4;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v1, v1, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    invoke-virtual {v1}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->next()V

    .end local v0    # "password":Ljava/lang/String;
    :cond_5
    move v1, v2

    .line 678
    goto :goto_0
.end method
