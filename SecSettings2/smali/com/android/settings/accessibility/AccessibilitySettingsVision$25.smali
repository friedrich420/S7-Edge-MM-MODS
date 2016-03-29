.class Lcom/android/settings/accessibility/AccessibilitySettingsVision$25;
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
    .line 1366
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$25;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v3, 0x1

    .line 1368
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$25;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$3600(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$25;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisableExclusiveOptionsFlag:I
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$4100(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->turnOffScreenReaderExclusiveOptions(Landroid/content/Context;I)V

    .line 1369
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$25;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$3600(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 1370
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$25;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$3600(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/settings/accessibility/AccessibilityUtils;->turnOnOffScreenReader(Landroid/content/Context;Z)V

    .line 1371
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$25;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$3600(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$25;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$3600(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e092b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1373
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$25;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    # getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mScreenReaderPreference:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$4200(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1374
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1375
    return-void
.end method
