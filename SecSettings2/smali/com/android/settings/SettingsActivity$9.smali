.class Lcom/android/settings/SettingsActivity$9;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 1367
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$9;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1369
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$9;->this$0:Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/dashboard/DashboardSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/settings/SettingsActivity$9;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I
    invoke-static {v4}, Lcom/android/settings/SettingsActivity;->access$800(Lcom/android/settings/SettingsActivity;)I

    move-result v5

    iget-object v4, p0, Lcom/android/settings/SettingsActivity$9;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;
    invoke-static {v4}, Lcom/android/settings/SettingsActivity;->access$900(Lcom/android/settings/SettingsActivity;)Ljava/lang/CharSequence;

    move-result-object v6

    move v4, v3

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    .line 1371
    return-void
.end method
