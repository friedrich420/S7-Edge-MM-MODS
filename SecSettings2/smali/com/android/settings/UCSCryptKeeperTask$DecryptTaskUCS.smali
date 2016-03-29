.class Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;
.super Landroid/os/AsyncTask;
.source "UCSCryptKeeperTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UCSCryptKeeperTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DecryptTaskUCS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UCSCryptKeeperTask;


# direct methods
.method private constructor <init>(Lcom/android/settings/UCSCryptKeeperTask;)V
    .locals 0

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/UCSCryptKeeperTask;Lcom/android/settings/UCSCryptKeeperTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/UCSCryptKeeperTask;
    .param p2, "x1"    # Lcom/android/settings/UCSCryptKeeperTask$1;

    .prologue
    .line 683
    invoke-direct {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 683
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->doInBackground([Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[I
    .locals 14
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v13, -0x1

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 692
    iget-object v9, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # invokes: Lcom/android/settings/UCSCryptKeeperTask;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v9}, Lcom/android/settings/UCSCryptKeeperTask;->access$1100(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/os/storage/IMountService;

    move-result-object v6

    .line 693
    .local v6, "service":Landroid/os/storage/IMountService;
    const/4 v9, 0x3

    new-array v4, v9, [I

    .line 695
    .local v4, "ret":[I
    aput v13, v4, v12

    .line 696
    aput v13, v4, v10

    .line 697
    aput v13, v4, v11

    .line 701
    if-eqz v6, :cond_6

    .line 702
    :try_start_0
    const-string v9, "UCSCryptKeeperTask"

    const-string v10, "DecryptTask isUcsOdeEnabled : true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const-string v7, ""

    .line 706
    .local v7, "uri":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mUri:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings/UCSCryptKeeperTask;->access$1200(Lcom/android/settings/UCSCryptKeeperTask;)Ljava/lang/String;

    move-result-object v7

    .line 708
    iget-object v9, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z
    invoke-static {v9}, Lcom/android/settings/UCSCryptKeeperTask;->access$600(Lcom/android/settings/UCSCryptKeeperTask;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 709
    const/4 v3, 0x0

    .line 710
    .local v3, "pukRet":[I
    iget-object v9, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v9, v9, Lcom/android/settings/UCSCryptKeeperTask;->mPukText:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v10, v10, Lcom/android/settings/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    invoke-static {v7, v9, v10}, Lcom/android/settings/UCMHelpUtils;->verifyPUK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v3

    .line 713
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v3, v10

    aput v10, v4, v9

    .line 714
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v3, v10

    aput v10, v4, v9

    .line 715
    const/4 v9, 0x2

    const/4 v10, 0x2

    aget v10, v3, v10

    aput v10, v4, v9

    .line 738
    .end local v3    # "pukRet":[I
    :goto_0
    const-string v9, "UCSCryptKeeperTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Return Values are "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v4, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget v11, v4, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget v11, v4, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/4 v9, 0x0

    aget v9, v4, v9

    if-nez v9, :cond_5

    .line 741
    const/4 v5, -0x1

    .line 744
    .local v5, "retcrypto":I
    const-string v9, "boot_test"

    invoke-interface {v6, v9}, Landroid/os/storage/IMountService;->decryptStorage(Ljava/lang/String;)I

    move-result v5

    .line 746
    const-string v9, "UCSCryptKeeperTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "decryptStorage return "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    if-eqz v5, :cond_0

    .line 750
    const/4 v9, 0x2

    const v10, 0xfffe

    aput v10, v4, v9

    .line 751
    const-string v9, "security.ucs.error_code"

    const-string v10, "NONE"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 752
    .local v1, "errorCode":Ljava/lang/String;
    const-string v9, "security.ucs.error_code"

    const-string v10, "NONE"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v9, "NONE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 754
    const/4 v9, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v4, v9

    .line 762
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v5    # "retcrypto":I
    :cond_0
    :goto_1
    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-virtual {v9}, Ljava/lang/String;->clear()V

    .line 763
    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/UCSCryptKeeperTask;->access$700()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->clear()V

    .line 770
    .end local v4    # "ret":[I
    .end local v7    # "uri":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 718
    .restart local v4    # "ret":[I
    .restart local v7    # "uri":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 719
    .local v2, "pinRet":[I
    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-static {v9, v7}, Lcom/android/settings/UCMHelpUtils;->verfiyODEPin(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v2

    .line 721
    const/4 v9, 0x0

    aget v9, v2, v9

    const/16 v10, 0x83

    if-ne v9, v10, :cond_2

    .line 722
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v4, v9

    .line 723
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v2, v10

    aput v10, v4, v9

    .line 734
    :goto_3
    const/4 v9, 0x2

    const/4 v10, 0x2

    aget v10, v2, v10

    aput v10, v4, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 767
    .end local v2    # "pinRet":[I
    .end local v7    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "UCSCryptKeeperTask"

    const-string v10, "Error while decrypting..."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 769
    aget-object v9, p1, v12

    invoke-virtual {v9}, Ljava/lang/String;->clear()V

    move-object v4, v8

    .line 770
    goto :goto_2

    .line 724
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "pinRet":[I
    .restart local v7    # "uri":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    :try_start_1
    aget v9, v2, v9

    const/16 v10, 0x84

    if-ne v9, v10, :cond_3

    .line 725
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v4, v9

    .line 726
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v2, v10

    aput v10, v4, v9

    goto :goto_3

    .line 727
    :cond_3
    const/4 v9, 0x0

    aget v9, v2, v9

    const/16 v10, 0x85

    if-ne v9, v10, :cond_4

    .line 728
    const/4 v9, 0x0

    const v10, 0xffef

    aput v10, v4, v9

    .line 729
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v2, v10

    aput v10, v4, v9

    goto :goto_3

    .line 731
    :cond_4
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v4, v9

    .line 732
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v2, v10

    aput v10, v4, v9

    goto :goto_3

    .line 759
    .end local v2    # "pinRet":[I
    :cond_5
    const-string v9, "UCSCryptKeeperTask"

    const-string v10, "DecryptTask Not able to verify Pin, no use of decrypt op"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v7    # "uri":Ljava/lang/String;
    :cond_6
    move-object v4, v8

    .line 766
    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 683
    check-cast p1, [I

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .locals 6
    .param p1, "status"    # [I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 778
    if-nez p1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    const/4 v2, 0x0

    # invokes: Lcom/android/settings/UCSCryptKeeperTask;->handleBadAttemptUCS([I)V
    invoke-static {v1, v2}, Lcom/android/settings/UCSCryptKeeperTask;->access$1300(Lcom/android/settings/UCSCryptKeeperTask;[I)V

    .line 798
    :goto_0
    return-void

    .line 783
    :cond_0
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    sget-object v2, Lcom/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    aget v3, p1, v5

    # invokes: Lcom/android/settings/UCSCryptKeeperTask;->setMessageInUcsInfo(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/UCSCryptKeeperTask;->access$200(Lcom/android/settings/UCSCryptKeeperTask;Ljava/lang/String;I)V

    .line 785
    aget v1, p1, v5

    if-nez v1, :cond_2

    aget v1, p1, v4

    if-nez v1, :cond_2

    .line 788
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mEmergencyCall:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->access$1400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 789
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mEmergencyCall:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->access$1400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 791
    :cond_1
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;
    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->access$800(Lcom/android/settings/UCSCryptKeeperTask;)Lcom/android/settings/CryptKeeper;

    move-result-object v1

    const v2, 0x7f0d013c

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 792
    .local v0, "statusView":Landroid/widget/TextView;
    const v1, 0x7f0e0c16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 793
    const-string v1, "security.ode.cryptkeeper.status"

    const-string v2, "passed"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 796
    .end local v0    # "statusView":Landroid/widget/TextView;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # invokes: Lcom/android/settings/UCSCryptKeeperTask;->handleBadAttemptUCS([I)V
    invoke-static {v1, p1}, Lcom/android/settings/UCSCryptKeeperTask;->access$1300(Lcom/android/settings/UCSCryptKeeperTask;[I)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 686
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 687
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # invokes: Lcom/android/settings/UCSCryptKeeperTask;->beginAttempt()V
    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->access$1000(Lcom/android/settings/UCSCryptKeeperTask;)V

    .line 688
    return-void
.end method
