.class Lcom/android/server/accessibility/AccessibilityManagerService$5;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->setTalkbackMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2

    .prologue
    .line 776
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 778
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWarningToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 779
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWarningToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 781
    :cond_12
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.android.app.talkback"

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 782
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040871

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWarningToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$402(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 786
    :goto_34
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWarningToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$400(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 787
    return-void

    .line 784
    :cond_3e
    iget-object v0, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040873

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mWarningToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$402(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_34
.end method
