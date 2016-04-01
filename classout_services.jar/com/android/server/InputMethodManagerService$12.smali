.class Lcom/android/server/InputMethodManagerService$12;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showInputMethodMenu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 4970
    iput-object p1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iput-object p2, p0, val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 4974
    iget-object v4, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/server/InputMethodManagerService;->access$1900(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 4975
    iget-object v4, p0, this$0:Lcom/android/server/InputMethodManagerService;

    # getter for: Lcom/android/server/InputMethodManagerService;->mSwitchingDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/server/InputMethodManagerService;->access$1900(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 4976
    .local v3, "positiveButton":Landroid/widget/Button;
    const v0, 0x3f99999a    # 1.2f

    .line 4977
    .local v0, "MAX_FONT_SCALE":F
    iget-object v4, p0, val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 4978
    .local v1, "fontScale":F
    invoke-virtual {v3}, Landroid/widget/Button;->getTextSize()F

    move-result v4

    iget-object v5, p0, val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v2, v4, v5

    .line 4980
    .local v2, "fontsize":F
    cmpl-float v4, v1, v0

    if-lez v4, :cond_39

    .line 4981
    move v1, v0

    .line 4983
    :cond_39
    const/4 v4, 0x1

    mul-float v5, v2, v1

    invoke-virtual {v3, v4, v5}, Landroid/widget/Button;->setTextSize(IF)V

    .line 4985
    .end local v0    # "MAX_FONT_SCALE":F
    .end local v1    # "fontScale":F
    .end local v2    # "fontsize":F
    .end local v3    # "positiveButton":Landroid/widget/Button;
    :cond_3f
    return-void
.end method
