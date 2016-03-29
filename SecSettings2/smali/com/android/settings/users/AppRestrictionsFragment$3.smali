.class Lcom/android/settings/users/AppRestrictionsFragment$3;
.super Ljava/lang/Thread;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/AppRestrictionsFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/AppRestrictionsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$3;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 430
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$3;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    # invokes: Lcom/android/settings/users/AppRestrictionsFragment;->fetchAndMergeApps()V
    invoke-static {v1}, Lcom/android/settings/users/AppRestrictionsFragment;->access$400(Lcom/android/settings/users/AppRestrictionsFragment;)V

    .line 431
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$3;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;
    invoke-static {v1}, Lcom/android/settings/users/AppRestrictionsFragment;->access$500(Lcom/android/settings/users/AppRestrictionsFragment;)Landroid/os/AsyncTask;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$3;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    # getter for: Lcom/android/settings/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;
    invoke-static {v1}, Lcom/android/settings/users/AppRestrictionsFragment;->access$500(Lcom/android/settings/users/AppRestrictionsFragment;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v1, v2, :cond_1

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$3;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    new-instance v2, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment$3;->this$0:Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-direct {v2, v3, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$1;)V

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    # setter for: Lcom/android/settings/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;
    invoke-static {v1, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->access$502(Lcom/android/settings/users/AppRestrictionsFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 434
    :cond_1
    return-void
.end method
