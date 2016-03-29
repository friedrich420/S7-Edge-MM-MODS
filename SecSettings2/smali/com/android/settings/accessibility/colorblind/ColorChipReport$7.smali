.class Lcom/android/settings/accessibility/colorblind/ColorChipReport$7;
.super Ljava/lang/Object;
.source "ColorChipReport.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/colorblind/ColorChipReport;->CreateNegativeColorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$7;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v3, 0x0

    .line 395
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$7;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "high_contrast"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 397
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$7;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    const-string v2, "accessibility"

    # invokes: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v1, v2}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$500(Lcom/android/settings/accessibility/colorblind/ColorChipReport;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 398
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$7;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/android/settings/accessibility/colorblind/ColorChipSettingValue;->setColorWeaknessMode(Landroid/content/Context;Z)V

    .line 399
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z

    .line 400
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$7;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    # invokes: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->CheckTestRecord()V
    invoke-static {v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$600(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    .line 401
    return-void
.end method
