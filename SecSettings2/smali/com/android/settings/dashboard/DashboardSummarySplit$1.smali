.class Lcom/android/settings/dashboard/DashboardSummarySplit$1;
.super Landroid/os/Handler;
.source "DashboardSummarySplit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardSummarySplit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardSummarySplit;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$1;->this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 146
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 148
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$1;->this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 149
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$1;->this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;

    # invokes: Lcom/android/settings/dashboard/DashboardSummarySplit;->rebuildUI(Landroid/content/Context;)V
    invoke-static {v1, v0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->access$000(Lcom/android/settings/dashboard/DashboardSummarySplit;Landroid/content/Context;)V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
