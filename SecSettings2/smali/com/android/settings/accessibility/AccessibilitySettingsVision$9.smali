.class Lcom/android/settings/accessibility/AccessibilitySettingsVision$9;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettingsVision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsVision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$9;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 295
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$9;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # invokes: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$1500(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_blind"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 297
    .local v0, "colorBlindEnabled":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 298
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$9;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$1600(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const v2, 0x7f0e0e92

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$9;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$1600(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    const v2, 0x7f0e0e93

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method
