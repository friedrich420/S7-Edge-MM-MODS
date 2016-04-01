.class Lcom/android/server/policy/PhoneWindowManager$7;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->handleLongPressOnHome(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    .prologue
    .line 2310
    iput-object p1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2313
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->alertToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->access$2600(Lcom/android/server/policy/PhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 2314
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->alertToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->access$2600(Lcom/android/server/policy/PhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 2316
    :cond_11
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v3, 0x103012b

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2317
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104057f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2319
    .local v1, "msg":Ljava/lang/String;
    :goto_32
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->alertToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->access$2602(Lcom/android/server/policy/PhoneWindowManager;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 2320
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->alertToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->access$2600(Lcom/android/server/policy/PhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 2321
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->alertToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->access$2600(Lcom/android/server/policy/PhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2322
    return-void

    .line 2317
    .end local v1    # "msg":Ljava/lang/String;
    :cond_4f
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104057e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_32
.end method
