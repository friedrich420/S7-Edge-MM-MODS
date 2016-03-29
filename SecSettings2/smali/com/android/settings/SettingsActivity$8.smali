.class Lcom/android/settings/SettingsActivity$8;
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

.field final synthetic val$initialArguments:Landroid/os/Bundle;

.field final synthetic val$initialFragmentName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1341
    iput-object p1, p0, Lcom/android/settings/SettingsActivity$8;->this$0:Lcom/android/settings/SettingsActivity;

    iput-object p2, p0, Lcom/android/settings/SettingsActivity$8;->val$initialFragmentName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/SettingsActivity$8;->val$initialArguments:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1343
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$8;->this$0:Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings/SettingsActivity$8;->val$initialFragmentName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/SettingsActivity$8;->val$initialArguments:Landroid/os/Bundle;

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/settings/SettingsActivity$8;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->mInitialTitleResId:I
    invoke-static {v5}, Lcom/android/settings/SettingsActivity;->access$800(Lcom/android/settings/SettingsActivity;)I

    move-result v5

    iget-object v6, p0, Lcom/android/settings/SettingsActivity$8;->this$0:Lcom/android/settings/SettingsActivity;

    # getter for: Lcom/android/settings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;
    invoke-static {v6}, Lcom/android/settings/SettingsActivity;->access$900(Lcom/android/settings/SettingsActivity;)Ljava/lang/CharSequence;

    move-result-object v6

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    .line 1344
    return-void
.end method
