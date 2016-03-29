.class Lcom/android/keyguard/KeyguardBackupRestoreManager$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardBackupRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardBackupRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardBackupRestoreManager;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    .line 121
    .local v14, "action":Ljava/lang/String;
    const-string v1, "KeyguardBackupRestoreManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive ( action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-eqz v14, :cond_0

    .line 124
    const-string v1, "SAVE_PATH"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 125
    .local v9, "filePath":Ljava/lang/String;
    const-string v1, "SOURCE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "source":Ljava/lang/String;
    const-string v1, "SESSION_KEY"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 127
    .local v11, "saveKey":Ljava/lang/String;
    const-string v1, "EXPORT_SESSION_TIME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, "sessiontime":Ljava/lang/String;
    const-string v1, "ACTION"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 129
    .local v15, "extraAction":I
    const-string v1, "SECURITY_LEVEL"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 131
    .local v12, "securityLevel":I
    const-string v1, "com.sec.android.intent.action.REQUEST_BACKUP_LOCKSCREEN"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    const/4 v1, 0x2

    if-ne v15, v1, :cond_1

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    # getter for: Lcom/android/keyguard/KeyguardBackupRestoreManager;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->access$000(Lcom/android/keyguard/KeyguardBackupRestoreManager;)Ljava/lang/Thread;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    # getter for: Lcom/android/keyguard/KeyguardBackupRestoreManager;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->access$000(Lcom/android/keyguard/KeyguardBackupRestoreManager;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "KeyguardBackupRestoreManager"

    const-string v2, "stop backup working thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    # getter for: Lcom/android/keyguard/KeyguardBackupRestoreManager;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->access$000(Lcom/android/keyguard/KeyguardBackupRestoreManager;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/keyguard/KeyguardBackupRestoreManager;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->access$002(Lcom/android/keyguard/KeyguardBackupRestoreManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 140
    const-string v1, "android.intent.action.RESPONSE_RESTORE_LOCKSCREEN"

    sget-object v2, Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;->FAIL:Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;

    sget-object v3, Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;->UNKNOWN_ERROR:Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;

    sget-object v4, Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;->SUCCESS:Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;

    # invokes: Lcom/android/keyguard/KeyguardBackupRestoreManager;->responseToKies(Ljava/lang/String;Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v1 .. v6}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->access$100(Ljava/lang/String;Lcom/android/keyguard/KeyguardBackupRestoreManager$RESULT;Lcom/android/keyguard/KeyguardBackupRestoreManager$ERR_CODE;Lcom/android/keyguard/KeyguardBackupRestoreManager$REQ_SIZE;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .end local v5    # "source":Ljava/lang/String;
    .end local v6    # "sessiontime":Ljava/lang/String;
    .end local v9    # "filePath":Ljava/lang/String;
    .end local v11    # "saveKey":Ljava/lang/String;
    .end local v12    # "securityLevel":I
    .end local v15    # "extraAction":I
    :cond_0
    :goto_0
    return-void

    .line 143
    .restart local v5    # "source":Ljava/lang/String;
    .restart local v6    # "sessiontime":Ljava/lang/String;
    .restart local v9    # "filePath":Ljava/lang/String;
    .restart local v11    # "saveKey":Ljava/lang/String;
    .restart local v12    # "securityLevel":I
    .restart local v15    # "extraAction":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    new-instance v2, Ljava/lang/Thread;

    new-instance v7, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;

    move-object/from16 v8, p0

    move-object v10, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$1;-><init>(Lcom/android/keyguard/KeyguardBackupRestoreManager$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    # setter for: Lcom/android/keyguard/KeyguardBackupRestoreManager;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->access$002(Lcom/android/keyguard/KeyguardBackupRestoreManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardBackupRestoreManager$1;->this$0:Lcom/android/keyguard/KeyguardBackupRestoreManager;

    # getter for: Lcom/android/keyguard/KeyguardBackupRestoreManager;->mBackupThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardBackupRestoreManager;->access$000(Lcom/android/keyguard/KeyguardBackupRestoreManager;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 150
    :cond_2
    const-string v1, "com.sec.android.intent.action.REQUEST_RESTORE_LOCKSCREEN"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    new-instance v16, Ljava/lang/Thread;

    new-instance v7, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$2;

    move-object/from16 v8, p0

    move-object v10, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/keyguard/KeyguardBackupRestoreManager$1$2;-><init>(Lcom/android/keyguard/KeyguardBackupRestoreManager$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 156
    .local v16, "restoreThread":Ljava/lang/Thread;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
