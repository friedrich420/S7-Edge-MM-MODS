.class Lcom/android/settings/accessibility/colorblind/ColorChipReport$3;
.super Landroid/database/ContentObserver;
.source "ColorChipReport.java"


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


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/colorblind/ColorChipReport;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$3;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x0

    .line 239
    iget-object v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$3;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    # invokes: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$100(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "high_contrast"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 241
    .local v0, "negativeColorEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 242
    iget-object v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$3;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$200(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$3;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$200(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$3;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    # getter for: Lcom/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->access$200(Lcom/android/settings/accessibility/colorblind/ColorChipReport;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$3;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-virtual {v2, v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->setHasOptionsMenu(Z)V

    .line 248
    iget-object v1, p0, Lcom/android/settings/accessibility/colorblind/ColorChipReport$3;->this$0:Lcom/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/colorblind/ColorChipReport;->checkColorBlindState()V

    .line 251
    :cond_1
    return-void

    .end local v0    # "negativeColorEnabled":Z
    :cond_2
    move v0, v1

    .line 239
    goto :goto_0
.end method
