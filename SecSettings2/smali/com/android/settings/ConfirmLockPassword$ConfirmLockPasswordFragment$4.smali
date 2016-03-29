.class Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;
.super Landroid/os/AsyncTask;
.source "ConfirmLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private verifyPIN(Ljava/lang/String;)I
    .locals 11
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 643
    const/4 v4, -0x1

    .line 644
    .local v4, "ret":I
    const/4 v3, -0x1

    .line 645
    .local v3, "remainCnt":I
    const-string v1, "com.sec.smartcard.manager:com.samsung.ucs.agent.baiMobile"

    .line 646
    .local v1, "csName":Ljava/lang/String;
    const-string v9, "com.samsung.ucs.ucsservice"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/enterprise/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v6

    .line 647
    .local v6, "ucsService":Lcom/sec/enterprise/knox/ucm/core/IUcmService;
    if-nez v6, :cond_1

    .line 675
    :cond_0
    :goto_0
    return v8

    .line 650
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 652
    :try_start_0
    const-string v9, ""

    invoke-static {v1, v9}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 653
    .local v7, "uri":Ljava/lang/String;
    invoke-interface {v6, v7, p1}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->verifyPin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 654
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 657
    const-string v9, "state"

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 658
    .local v5, "state":I
    const-string v9, "remainCnt"

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 659
    const/16 v8, 0x83

    if-ne v5, v8, :cond_3

    .line 660
    const/4 v4, 0x0

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "state":I
    .end local v7    # "uri":Ljava/lang/String;
    :cond_2
    :goto_1
    move v8, v4

    .line 675
    goto :goto_0

    .line 661
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "state":I
    .restart local v7    # "uri":Ljava/lang/String;
    :cond_3
    const/16 v8, 0x84

    if-ne v5, v8, :cond_4

    .line 662
    const/4 v4, 0x1

    goto :goto_1

    .line 663
    :cond_4
    const/16 v8, 0x85

    if-ne v5, v8, :cond_5

    .line 664
    const/4 v4, 0x2

    goto :goto_1

    .line 665
    :cond_5
    const/16 v8, 0x86

    if-ne v5, v8, :cond_6

    .line 666
    const/4 v4, 0x4

    goto :goto_1

    .line 667
    :cond_6
    const/16 v8, 0x87

    if-ne v5, v8, :cond_2

    .line 668
    const/16 v4, 0x8

    goto :goto_1

    .line 670
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "state":I
    .end local v7    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 671
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "cacpin"    # [Ljava/lang/String;

    .prologue
    .line 639
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {p0, v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->verifyPIN(Ljava/lang/String;)I

    move-result v0

    .line 640
    .local v0, "result":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 623
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 680
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1400(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 681
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1400(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 683
    :cond_0
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # invokes: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->resetState()V
    invoke-static {v3}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$800(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    .line 684
    const/4 v2, 0x0

    .line 686
    .local v2, "res":Z
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 718
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v4, 0x7f0e1183

    # invokes: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V
    invoke-static {v3, v4}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1700(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V

    .line 720
    :goto_0
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v3}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mOrientation:I
    invoke-static {v4}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1200(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 724
    .end local v2    # "res":Z
    :goto_1
    return-void

    .line 688
    .restart local v2    # "res":Z
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 689
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "hw_auth_token"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 690
    const-string v3, "ConfirmLockPasswordFragment"

    const-string v4, "VERIFY_PIN_SUCCESS"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I
    invoke-static {v6}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1500(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)I

    move-result v6

    # invokes: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->onPasswordChecked(ZLandroid/content/Intent;II)V
    invoke-static {v3, v4, v1, v5, v6}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1600(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;ZLandroid/content/Intent;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 721
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "res":Z
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 694
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "res":Z
    :pswitch_2
    :try_start_1
    const-string v3, "ConfirmLockPasswordFragment"

    const-string v4, "VERIFY_PIN_FAIL"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v4, 0x7f0e1186

    # invokes: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V
    invoke-static {v3, v4}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1700(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V

    goto :goto_0

    .line 698
    :pswitch_3
    const-string v3, "ConfirmLockPasswordFragment"

    const-string v4, "VERIFY_PIN_CARDLOCKED"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v4, 0x7f0e1187

    # invokes: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V
    invoke-static {v3, v4}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1700(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V

    goto :goto_0

    .line 702
    :pswitch_4
    const-string v3, "ConfirmLockPasswordFragment"

    const-string v4, "VERIFY_PIN_CARDEXPIRED"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v4, 0x7f0e1189

    # invokes: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V
    invoke-static {v3, v4}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1700(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V

    goto :goto_0

    .line 706
    :pswitch_5
    const-string v3, "ConfirmLockPasswordFragment"

    const-string v4, "VERIFY_PIN_CONNECTIONERROR"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v4, 0x7f0e1185

    # invokes: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V
    invoke-static {v3, v4}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1700(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V

    goto :goto_0

    .line 710
    :pswitch_6
    const-string v3, "ConfirmLockPasswordFragment"

    const-string v4, "VERIFY_PIN_CARDASSOCIATEERROR"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v4, 0x7f0e1184

    # invokes: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V
    invoke-static {v3, v4}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1700(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V

    goto/16 :goto_0

    .line 714
    :pswitch_7
    const-string v3, "ConfirmLockPasswordFragment"

    const-string v4, "VERIFY_PIN_CARDERROR"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const v4, 0x7f0e1188

    # invokes: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(I)V
    invoke-static {v3, v4}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1700(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 686
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 623
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 626
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$400(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 627
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1100(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/internal/widget/TextViewInputDisabler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 628
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    # setter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mOrientation:I
    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1202(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;I)I

    .line 629
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # invokes: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDeviceOrientation()I
    invoke-static {v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1300(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 630
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1400(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e1181

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1400(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e1182

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 632
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1400(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 633
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1400(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 634
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1400(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 635
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    # getter for: Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->access$1400(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 636
    return-void
.end method
