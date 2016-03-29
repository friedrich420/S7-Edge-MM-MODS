.class Lcom/android/settings/MasterClearConfirm$1$1;
.super Landroid/os/AsyncTask;
.source "MasterClearConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MasterClearConfirm$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field mOldOrientation:I

.field mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$1:Lcom/android/settings/MasterClearConfirm$1;

.field final synthetic val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClearConfirm$1;Landroid/service/persistentdata/PersistentDataBlockManager;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings/MasterClearConfirm$1$1;->this$1:Lcom/android/settings/MasterClearConfirm$1;

    iput-object p2, p0, Lcom/android/settings/MasterClearConfirm$1$1;->val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 153
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/MasterClearConfirm$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v0, 0x0

    .line 159
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm$1$1;->this$1:Lcom/android/settings/MasterClearConfirm$1;

    iget-object v1, v1, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v1}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 160
    .local v0, "isSettingWizard":Z
    :cond_0
    if-nez v0, :cond_1

    .line 161
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm$1$1;->val$pdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V

    .line 163
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 153
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/MasterClearConfirm$1$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 169
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->this$1:Lcom/android/settings/MasterClearConfirm$1;

    iget-object v0, v0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/MasterClearConfirm$1$1;->mOldOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->this$1:Lcom/android/settings/MasterClearConfirm$1;

    iget-object v0, v0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    # invokes: Lcom/android/settings/MasterClearConfirm;->doSecMasterClear()V
    invoke-static {v0}, Lcom/android/settings/MasterClearConfirm;->access$300(Lcom/android/settings/MasterClearConfirm;)V

    .line 171
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->this$1:Lcom/android/settings/MasterClearConfirm$1;

    # invokes: Lcom/android/settings/MasterClearConfirm$1;->getProgressDialog()Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings/MasterClearConfirm$1;->access$400(Lcom/android/settings/MasterClearConfirm$1;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 176
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 180
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->this$1:Lcom/android/settings/MasterClearConfirm$1;

    iget-object v0, v0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->mOldOrientation:I

    .line 181
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm$1$1;->this$1:Lcom/android/settings/MasterClearConfirm$1;

    iget-object v0, v0, Lcom/android/settings/MasterClearConfirm$1;->this$0:Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 182
    return-void
.end method
