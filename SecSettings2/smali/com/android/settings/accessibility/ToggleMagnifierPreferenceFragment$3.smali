.class Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;
.super Landroid/database/ContentObserver;
.source "ToggleMagnifierPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 143
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$300(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->toggleEnableStateIC(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$400(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Z)V

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->toggleEnableStateIC(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$400(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Z)V

    goto :goto_0
.end method
