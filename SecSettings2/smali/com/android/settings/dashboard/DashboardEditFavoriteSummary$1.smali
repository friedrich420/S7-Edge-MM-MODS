.class Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$1;
.super Landroid/os/Handler;
.source "DashboardEditFavoriteSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$1;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 94
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$1;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 97
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary$1;->this$0:Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;

    # invokes: Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->rebuildUI(Landroid/content/Context;)V
    invoke-static {v1, v0}, Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;->access$000(Lcom/android/settings/dashboard/DashboardEditFavoriteSummary;Landroid/content/Context;)V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
