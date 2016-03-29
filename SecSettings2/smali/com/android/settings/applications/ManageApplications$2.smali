.class Lcom/android/settings/applications/ManageApplications$2;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Lcom/android/settings/applications/ResetAppsHelper$OnResetAppsDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageApplications;->onCreate(Landroid/os/Bundle;)V
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
    .line 354
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$2;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateAfterResetApps()V
    .locals 2

    .prologue
    .line 357
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$2;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v1, v1, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$2;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v1, v1, Lcom/android/settings/applications/ManageApplications;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 359
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$2;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget-object v1, v1, Lcom/android/settings/applications/ManageApplications;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 361
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
