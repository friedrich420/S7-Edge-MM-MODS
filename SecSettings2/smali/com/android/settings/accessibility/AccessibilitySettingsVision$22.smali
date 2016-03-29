.class Lcom/android/settings/accessibility/AccessibilitySettingsVision$22;
.super Ljava/lang/Object;
.source "AccessibilitySettingsVision.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsVision;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$22;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1328
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$22;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # invokes: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$3800(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_blind"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1329
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$22;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # invokes: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$3900(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "greyscale_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1330
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$22;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.android.settings"

    const-string v3, "GREY"

    const-string v4, "Accessibility settings"

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$22;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    const-string v2, "accessibility"

    # invokes: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$4000(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1332
    .local v0, "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$22;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # invokes: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->setColorWeaknessMode(Z)V
    invoke-static {v1, v6}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$2500(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Z)V

    .line 1333
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$22;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$1400(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1334
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z

    .line 1338
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1339
    return-void

    .line 1336
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z

    goto :goto_0
.end method
