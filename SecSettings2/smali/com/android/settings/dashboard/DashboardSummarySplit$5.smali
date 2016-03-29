.class Lcom/android/settings/dashboard/DashboardSummarySplit$5;
.super Ljava/lang/Object;
.source "DashboardSummarySplit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardSummarySplit;->rebuildUI(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardSummarySplit;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$5;->this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$5;->val$context:Landroid/content/Context;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->scrollToHide()V

    .line 358
    return-void
.end method
