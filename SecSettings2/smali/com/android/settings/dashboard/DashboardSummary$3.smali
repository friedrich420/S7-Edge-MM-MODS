.class Lcom/android/settings/dashboard/DashboardSummary$3;
.super Ljava/lang/Object;
.source "DashboardSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardSummary;->rebuildUI(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummary;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary$3;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    iput-object p2, p0, Lcom/android/settings/dashboard/DashboardSummary$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$3;->val$context:Landroid/content/Context;

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->scrollToHide()V

    .line 216
    return-void
.end method
