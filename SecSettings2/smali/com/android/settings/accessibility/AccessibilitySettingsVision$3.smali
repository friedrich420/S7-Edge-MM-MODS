.class Lcom/android/settings/accessibility/AccessibilitySettingsVision$3;
.super Lcom/android/settings/accessibility/SettingsContentObserver;
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
    .line 218
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$3;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0, p2}, Lcom/android/settings/accessibility/SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$3;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # invokes: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->loadInstalledServices()V
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$000(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$3;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # invokes: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$100(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$3;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # invokes: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateExclusiveTalkback()V
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$400(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    .line 224
    return-void
.end method
