.class Lcom/android/server/am/AppPermissionManagedDialog$1;
.super Landroid/os/Handler;
.source "AppPermissionManagedDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPermissionManagedDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPermissionManagedDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPermissionManagedDialog;)V
    .registers 2

    .prologue
    .line 290
    iput-object p1, p0, this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 292
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_1e

    .line 294
    :try_start_5
    iget-object v2, p0, this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$100(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->newIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/server/am/AppPermissionManagedDialog;->access$000(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_14
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_14} :catch_15

    .line 334
    :cond_14
    :goto_14
    return-void

    .line 295
    :catch_15
    move-exception v0

    .line 296
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "AppPermissionManagedDialog"

    const-string v3, "AppPermissionManagedDialog : ActivityNotFoundException CONTINUE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 298
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1e
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_63

    .line 299
    iget-object v2, p0, this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$200(Lcom/android/server/am/AppPermissionManagedDialog;)I

    move-result v2

    if-ne v2, v4, :cond_5a

    .line 300
    iget-object v2, p0, this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$300(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    monitor-enter v3

    .line 301
    :try_start_31
    iget-object v2, p0, this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$300(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$300(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v4, p0, this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    if-ne v2, v4, :cond_4e

    .line 302
    iget-object v2, p0, this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$300(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 304
    :cond_4e
    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_31 .. :try_end_4f} :catchall_60

    .line 305
    iget-object v2, p0, this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$400(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 307
    :cond_5a
    iget-object v2, p0, this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    invoke-virtual {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->dismiss()V

    goto :goto_14

    .line 304
    :catchall_60
    move-exception v2

    :try_start_61
    monitor-exit v3
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v2

    .line 308
    :cond_63
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6e

    .line 309
    iget-object v2, p0, this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # invokes: Lcom/android/server/am/AppPermissionManagedDialog;->setTitleAndMessageByApp()V
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$500(Lcom/android/server/am/AppPermissionManagedDialog;)V

    goto :goto_14

    .line 311
    :cond_6e
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    .line 313
    :try_start_73
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 314
    .local v1, "in":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 315
    const/high16 v2, 0x8000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 316
    const-string v2, "com.sec.android.app.capabilitymanager"

    const-string v3, "com.sec.android.app.cm.ui.CMPermissionGroupListActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string/jumbo v2, "packagename"

    iget-object v3, p0, this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/am/AppPermissionManagedDialog;->access$600(Lcom/android/server/am/AppPermissionManagedDialog;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    iget-object v2, p0, this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$100(Lcom/android/server/am/AppPermissionManagedDialog;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_73 .. :try_end_9e} :catch_dd

    .line 323
    .end local v1    # "in":Landroid/content/Intent;
    :goto_9e
    iget-object v2, p0, this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mDialogType:I
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$200(Lcom/android/server/am/AppPermissionManagedDialog;)I

    move-result v2

    if-ne v2, v4, :cond_d6

    .line 324
    iget-object v2, p0, this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$300(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    monitor-enter v3

    .line 325
    :try_start_ad
    iget-object v2, p0, this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$300(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_ca

    iget-object v2, p0, this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$300(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    iget-object v4, p0, this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    if-ne v2, v4, :cond_ca

    .line 326
    iget-object v2, p0, this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mProc:Lcom/android/server/am/ProcessRecord;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$300(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 328
    :cond_ca
    monitor-exit v3
    :try_end_cb
    .catchall {:try_start_ad .. :try_end_cb} :catchall_e6

    .line 329
    iget-object v2, p0, this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    # getter for: Lcom/android/server/am/AppPermissionManagedDialog;->mResult:Lcom/android/server/am/AppErrorResult;
    invoke-static {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->access$400(Lcom/android/server/am/AppPermissionManagedDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 331
    :cond_d6
    iget-object v2, p0, this$0:Lcom/android/server/am/AppPermissionManagedDialog;

    invoke-virtual {v2}, Lcom/android/server/am/AppPermissionManagedDialog;->dismiss()V

    goto/16 :goto_14

    .line 320
    :catch_dd
    move-exception v0

    .line 321
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "AppPermissionManagedDialog"

    const-string v3, "AppPermissionManagedDialog : ActivityNotFoundException LANCHSETTINGS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 328
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :catchall_e6
    move-exception v2

    :try_start_e7
    monitor-exit v3
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw v2
.end method
