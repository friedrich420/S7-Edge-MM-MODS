.class Lcom/android/settings/accessibility/colorblind/ColorChipReport$5;
.super Ljava/lang/Object;
.source "ColorChipReport.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/colorblind/ColorChipReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$5;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    # invokes: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->RetestOperate()V
    invoke-static {v0}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$400(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)V

    .line 370
    return-void
.end method
