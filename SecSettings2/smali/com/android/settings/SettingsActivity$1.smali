.class Lcom/android/settings/SettingsActivity$1;
.super Landroid/os/Handler;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$1;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 667
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 669
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg_data_force_refresh"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 670
    .local v0, "forceRefresh":Z
    if-eqz v0, :cond_0

    .line 671
    iget-object v1, p0, Lcom/android/settings/SettingsActivity$1;->this$0:Lcom/android/settings/SettingsActivity;

    iget-object v2, p0, Lcom/android/settings/SettingsActivity$1;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->mCategories:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/SettingsActivity;->access$000(Lcom/android/settings/SettingsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "main_mode"

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/SettingsActivity;->buildDashboardCategories(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 667
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
