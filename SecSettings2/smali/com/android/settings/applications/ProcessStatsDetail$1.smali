.class Lcom/android/settings/applications/ProcessStatsDetail$1;
.super Ljava/lang/Object;
.source "ProcessStatsDetail.java"

# interfaces
.implements Lcom/android/settings/CancellablePreference$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ProcessStatsDetail;->updateRunningServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ProcessStatsDetail;

.field final synthetic val$service:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ProcessStatsDetail;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsDetail$1;->this$0:Lcom/android/settings/applications/ProcessStatsDetail;

    iput-object p2, p0, Lcom/android/settings/applications/ProcessStatsDetail$1;->val$service:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/android/settings/CancellablePreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/settings/CancellablePreference;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsDetail$1;->this$0:Lcom/android/settings/applications/ProcessStatsDetail;

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsDetail$1;->val$service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsDetail$1;->val$service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/settings/applications/ProcessStatsDetail;->stopService(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/applications/ProcessStatsDetail;->access$000(Lcom/android/settings/applications/ProcessStatsDetail;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-void
.end method
