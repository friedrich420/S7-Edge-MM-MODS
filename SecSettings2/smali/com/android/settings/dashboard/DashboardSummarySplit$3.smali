.class Lcom/android/settings/dashboard/DashboardSummarySplit$3;
.super Ljava/lang/Object;
.source "DashboardSummarySplit.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardSummarySplit;->onResume()V
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
    .line 212
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$3;->this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$3;->this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardSummarySplit$3;->this$0:Lcom/android/settings/dashboard/DashboardSummarySplit;

    invoke-virtual {v1}, Lcom/android/settings/dashboard/DashboardSummarySplit;->getActivity()Landroid/app/Activity;

    move-result-object v1

    # invokes: Lcom/android/settings/dashboard/DashboardSummarySplit;->rebuildUI(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardSummarySplit;->access$000(Lcom/android/settings/dashboard/DashboardSummarySplit;Landroid/content/Context;)V

    .line 216
    return-void
.end method
