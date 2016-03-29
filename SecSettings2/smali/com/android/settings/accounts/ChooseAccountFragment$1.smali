.class Lcom/android/settings/accounts/ChooseAccountFragment$1;
.super Ljava/lang/Object;
.source "ChooseAccountFragment.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/ChooseAccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ChooseAccountFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ChooseAccountFragment;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v8, 0x2

    .line 90
    const-string v5, "ChooseAccountFragment"

    const-string v6, "AccountManagerCallback"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v2, 0x1

    .line 93
    .local v2, "done":Z
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 95
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "intent"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 96
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 97
    const/4 v2, 0x0

    .line 98
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v0, "addAccountOptions":Landroid/os/Bundle;
    const-string v5, "pendingIntent"

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    # getter for: Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/android/settings/accounts/ChooseAccountFragment;->access$000(Lcom/android/settings/accounts/ChooseAccountFragment;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 100
    const-string v5, "hasMultipleUsers"

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v6}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    const-string v5, "android.intent.extra.USER"

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    # getter for: Lcom/android/settings/accounts/ChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v6}, Lcom/android/settings/accounts/ChooseAccountFragment;->access$100(Lcom/android/settings/accounts/ChooseAccountFragment;)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 103
    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 105
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 106
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/16 v6, 0x1f7

    iget-object v7, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    # getter for: Lcom/android/settings/accounts/ChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;
    invoke-static {v7}, Lcom/android/settings/accounts/ChooseAccountFragment;->access$100(Lcom/android/settings/accounts/ChooseAccountFragment;)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    .line 115
    .end local v0    # "addAccountOptions":Landroid/os/Bundle;
    :cond_0
    :goto_0
    const-string v5, "ChooseAccountFragment"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "ChooseAccountFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account added: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_1
    if-eqz v2, :cond_2

    .line 127
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 133
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void

    .line 109
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    # getter for: Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->access$000(Lcom/android/settings/accounts/ChooseAccountFragment;)Landroid/app/PendingIntent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 110
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    # getter for: Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->access$000(Lcom/android/settings/accounts/ChooseAccountFragment;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/PendingIntent;->cancel()V

    .line 111
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    const/4 v6, 0x0

    # setter for: Lcom/android/settings/accounts/ChooseAccountFragment;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v5, v6}, Lcom/android/settings/accounts/ChooseAccountFragment;->access$002(Lcom/android/settings/accounts/ChooseAccountFragment;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    :try_end_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 116
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 117
    .local v3, "e":Landroid/accounts/OperationCanceledException;
    :try_start_3
    const-string v5, "ChooseAccountFragment"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "ChooseAccountFragment"

    const-string v6, "addAccount was canceled"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    :cond_4
    if-eqz v2, :cond_2

    .line 127
    :try_start_4
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->finish()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 129
    :catch_1
    move-exception v3

    .line 130
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "ChooseAccountFragment"

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "ChooseAccountFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fragment finish failed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 129
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v3

    .line 130
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v5, "ChooseAccountFragment"

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "ChooseAccountFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fragment finish failed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 118
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v3

    .line 119
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v5, "ChooseAccountFragment"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "ChooseAccountFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAccount failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 126
    :cond_5
    if-eqz v2, :cond_2

    .line 127
    :try_start_6
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->finish()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 129
    :catch_4
    move-exception v3

    .line 130
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "ChooseAccountFragment"

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "ChooseAccountFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fragment finish failed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 120
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v3

    .line 121
    .local v3, "e":Ljava/io/IOException;
    :try_start_7
    const-string v5, "ChooseAccountFragment"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "ChooseAccountFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAccount failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 126
    :cond_6
    if-eqz v2, :cond_2

    .line 127
    :try_start_8
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->finish()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_1

    .line 129
    :catch_6
    move-exception v3

    .line 130
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "ChooseAccountFragment"

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "ChooseAccountFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fragment finish failed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 122
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v3

    .line 123
    .local v3, "e":Landroid/accounts/AuthenticatorException;
    :try_start_9
    const-string v5, "ChooseAccountFragment"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "ChooseAccountFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAccount failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 126
    :cond_7
    if-eqz v2, :cond_2

    .line 127
    :try_start_a
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v5}, Lcom/android/settings/accounts/ChooseAccountFragment;->finish()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_1

    .line 129
    :catch_8
    move-exception v3

    .line 130
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "ChooseAccountFragment"

    invoke-static {v5, v8}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "ChooseAccountFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fragment finish failed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 125
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 126
    if-eqz v2, :cond_8

    .line 127
    :try_start_b
    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountFragment$1;->this$0:Lcom/android/settings/accounts/ChooseAccountFragment;

    invoke-virtual {v6}, Lcom/android/settings/accounts/ChooseAccountFragment;->finish()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 131
    :cond_8
    :goto_2
    throw v5

    .line 129
    :catch_9
    move-exception v3

    .line 130
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v6, "ChooseAccountFragment"

    invoke-static {v6, v8}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "ChooseAccountFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fragment finish failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
