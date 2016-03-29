.class Lcom/android/settings/dashboard/DashboardSummarySplit$4;
.super Ljava/lang/Object;
.source "DashboardSummarySplit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardSummarySplit;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 319
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$4;->this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$4;->this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;

    # getter for: Lcom/android/settings/dashboard/DashboardSummarySplit;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardSummarySplit;->access$200(Lcom/android/settings/dashboard/DashboardSummarySplit;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/dashboard/DashboardSummarySplit$4$1;

    invoke-direct {v1, p0}, Lcom/android/settings/dashboard/DashboardSummarySplit$4$1;-><init>(Lcom/android/settings/dashboard/DashboardSummarySplit$4;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 327
    return-void
.end method
