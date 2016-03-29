.class Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;
.super Landroid/os/AsyncTask;
.source "UCSCryptKeeperTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UCSCryptKeeperTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptTaskUCS"
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
    .line 801
    iput-object p1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/UCSCryptKeeperTask;Lcom/android/settings/UCSCryptKeeperTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/UCSCryptKeeperTask;
    .param p2, "x1"    # Lcom/android/settings/UCSCryptKeeperTask$1;

    .prologue
    .line 801
    invoke-direct {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 801
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->doInBackground([Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[I
    .locals 14
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 810
    iget-object v9, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # invokes: Lcom/android/settings/UCSCryptKeeperTask;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v9}, Lcom/android/settings/UCSCryptKeeperTask;->access$1100(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/os/storage/IMountService;

    move-result-object v5

    .line 811
    .local v5, "service":Landroid/os/storage/IMountService;
    const/4 v9, 0x3

    new-array v4, v9, [I

    .line 813
    .local v4, "ret":[I
    aput v11, v4, v12

    .line 814
    aput v11, v4, v13

    .line 815
    aput v11, v4, v10

    .line 819
    if-eqz v5, :cond_7

    .line 820
    :try_start_0
    const-string v9, "UCSCryptKeeperTask"

    const-string v10, "EncryptTask isUcsOdeEnabled : true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const-string v7, ""

    .line 824
    .local v7, "uri":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mUri:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings/UCSCryptKeeperTask;->access$1200(Lcom/android/settings/UCSCryptKeeperTask;)Ljava/lang/String;

    move-result-object v7

    .line 826
    iget-object v9, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z
    invoke-static {v9}, Lcom/android/settings/UCSCryptKeeperTask;->access$600(Lcom/android/settings/UCSCryptKeeperTask;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 827
    const/4 v3, 0x0

    .line 828
    .local v3, "pukRet":[I
    iget-object v9, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v9, v9, Lcom/android/settings/UCSCryptKeeperTask;->mPukText:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v10, v10, Lcom/android/settings/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    invoke-static {v7, v9, v10}, Lcom/android/settings/UCMHelpUtils;->verifyPUK(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v3

    .line 831
    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v3, v10

    aput v10, v4, v9

    .line 832
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v3, v10

    aput v10, v4, v9

    .line 833
    const/4 v9, 0x2

    const/4 v10, 0x2

    aget v10, v3, v10

    aput v10, v4, v9

    .line 855
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

    .line 857
    const/4 v9, 0x0

    aget v9, v4, v9

    if-nez v9, :cond_6

    .line 860
    const-string v9, "persist.security.ucs"

    const-string v10, "1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v9, "security.ode.encrypting"

    const-string v10, "true"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v9, "sys.sec_device_encryption"

    const-string v10, "fast"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v6, ""

    .line 864
    .local v6, "ucsPassword":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mEnabledWrap:I
    invoke-static {v9}, Lcom/android/settings/UCSCryptKeeperTask;->access$1500(Lcom/android/settings/UCSCryptKeeperTask;)I

    move-result v9

    if-ne v9, v13, :cond_5

    .line 865
    const-string v6, "ucs_savein_false"

    .line 869
    :goto_1
    const/4 v9, 0x0

    invoke-interface {v5, v9, v6}, Landroid/os/storage/IMountService;->encryptStorage(ILjava/lang/String;)I

    .line 870
    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, v4, v9

    .line 871
    const-string v9, "UCSCryptKeeperTask"

    const-string v10, "EncryptStorage passed"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    const-string v9, "security.ucs.error_code"

    const-string v10, "NONE"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 874
    .local v1, "errorCode":Ljava/lang/String;
    const-string v9, "security.ucs.error_code"

    const-string v10, "NONE"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const-string v9, "NONE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 876
    const/4 v9, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v4, v9

    .line 883
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v6    # "ucsPassword":Ljava/lang/String;
    :cond_0
    :goto_2
    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-virtual {v9}, Ljava/lang/String;->clear()V

    .line 884
    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/UCSCryptKeeperTask;->access$700()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->clear()V

    .line 891
    .end local v4    # "ret":[I
    .end local v7    # "uri":Ljava/lang/String;
    :goto_3
    return-object v4

    .line 836
    .restart local v4    # "ret":[I
    .restart local v7    # "uri":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 837
    .local v2, "pinRet":[I
    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-static {v9, v7}, Lcom/android/settings/UCMHelpUtils;->verfiyODEPin(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v2

    .line 839
    const/4 v9, 0x0

    aget v9, v2, v9

    const/16 v10, 0x83

    if-ne v9, v10, :cond_2

    .line 840
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v4, v9

    .line 841
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v2, v10

    aput v10, v4, v9

    .line 852
    :goto_4
    const/4 v9, 0x2

    const/4 v10, 0x2

    aget v10, v2, v10

    aput v10, v4, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 888
    .end local v2    # "pinRet":[I
    .end local v7    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "UCSCryptKeeperTask"

    const-string v10, "Error while encrypting..."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 890
    aget-object v9, p1, v12

    invoke-virtual {v9}, Ljava/lang/String;->clear()V

    move-object v4, v8

    .line 891
    goto :goto_3

    .line 842
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "pinRet":[I
    .restart local v7    # "uri":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    :try_start_1
    aget v9, v2, v9

    const/16 v10, 0x84

    if-ne v9, v10, :cond_3

    .line 843
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v4, v9

    .line 844
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v2, v10

    aput v10, v4, v9

    goto :goto_4

    .line 845
    :cond_3
    const/4 v9, 0x0

    aget v9, v2, v9

    const/16 v10, 0x85

    if-ne v9, v10, :cond_4

    .line 846
    const/4 v9, 0x0

    const v10, 0xffef

    aput v10, v4, v9

    .line 847
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v2, v10

    aput v10, v4, v9

    goto :goto_4

    .line 849
    :cond_4
    const/4 v9, 0x0

    const/4 v10, -0x1

    aput v10, v4, v9

    .line 850
    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v2, v10

    aput v10, v4, v9

    goto :goto_4

    .line 867
    .end local v2    # "pinRet":[I
    .restart local v6    # "ucsPassword":Ljava/lang/String;
    :cond_5
    const-string v6, "ucs_savein_true"

    goto/16 :goto_1

    .line 880
    .end local v6    # "ucsPassword":Ljava/lang/String;
    :cond_6
    const-string v9, "UCSCryptKeeperTask"

    const-string v10, "EncryptTask Not able to verify Pin, no use of decrypt op"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .end local v7    # "uri":Ljava/lang/String;
    :cond_7
    move-object v4, v8

    .line 887
    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 801
    check-cast p1, [I

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .locals 6
    .param p1, "status"    # [I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 899
    if-nez p1, :cond_0

    .line 900
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    const/4 v2, 0x0

    # invokes: Lcom/android/settings/UCSCryptKeeperTask;->handleBadAttemptUCS([I)V
    invoke-static {v1, v2}, Lcom/android/settings/UCSCryptKeeperTask;->access$1300(Lcom/android/settings/UCSCryptKeeperTask;[I)V

    .line 919
    :goto_0
    return-void

    .line 904
    :cond_0
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    sget-object v2, Lcom/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    aget v3, p1, v5

    # invokes: Lcom/android/settings/UCSCryptKeeperTask;->setMessageInUcsInfo(Ljava/lang/String;I)V
    invoke-static {v1, v2, v3}, Lcom/android/settings/UCSCryptKeeperTask;->access$200(Lcom/android/settings/UCSCryptKeeperTask;Ljava/lang/String;I)V

    .line 906
    aget v1, p1, v5

    if-nez v1, :cond_2

    aget v1, p1, v4

    if-nez v1, :cond_2

    .line 909
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mEmergencyCall:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->access$1400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 910
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mEmergencyCall:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->access$1400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 912
    :cond_1
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # getter for: Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;
    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->access$800(Lcom/android/settings/UCSCryptKeeperTask;)Lcom/android/settings/CryptKeeper;

    move-result-object v1

    const v2, 0x7f0d013c

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 913
    .local v0, "statusView":Landroid/widget/TextView;
    const v1, 0x7f0e0c16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 914
    const-string v1, "security.ode.cryptkeeper.status"

    const-string v2, "passed"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 917
    .end local v0    # "statusView":Landroid/widget/TextView;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # invokes: Lcom/android/settings/UCSCryptKeeperTask;->handleBadAttemptUCS([I)V
    invoke-static {v1, p1}, Lcom/android/settings/UCSCryptKeeperTask;->access$1300(Lcom/android/settings/UCSCryptKeeperTask;[I)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 804
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 805
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    # invokes: Lcom/android/settings/UCSCryptKeeperTask;->beginAttempt()V
    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->access$1000(Lcom/android/settings/UCSCryptKeeperTask;)V

    .line 806
    return-void
.end method
