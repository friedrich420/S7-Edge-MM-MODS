.class Lcom/android/settings/applications/ManageApplications$1;
.super Landroid/os/Handler;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplications;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$1;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$1;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$1;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 281
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$1;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$1;->this$0:Lcom/android/settings/applications/ManageApplications;

    # getter for: Lcom/android/settings/applications/ManageApplications;->mSortOrder:I
    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications;->access$000(Lcom/android/settings/applications/ManageApplications;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 282
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$1;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    # invokes: Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->updateLoading()V
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->access$100(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V

    .line 284
    :cond_0
    return-void
.end method
