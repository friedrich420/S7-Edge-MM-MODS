.class Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$2;
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
    .line 131
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 134
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # getter for: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$100(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_magnifier"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 135
    .local v0, "newstate":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment$2;->this$0:Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    # invokes: Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->updatedEnableState(Z)V
    invoke-static {v1, v0}, Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->access$200(Lcom/android/settings/accessibility/ToggleMagnifierPreferenceFragment;Z)V

    .line 136
    return-void

    .end local v0    # "newstate":Z
    :cond_0
    move v0, v1

    .line 134
    goto :goto_0
.end method
