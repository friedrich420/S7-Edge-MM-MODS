.class Lcom/android/server/policy/PhoneWindowManager$20;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->notifyCoverSwitchStateChanged(JZ)V
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
    .line 8809
    iput-object p1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8812
    iget-object v3, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->alertToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManager;->access$2600(Lcom/android/server/policy/PhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 8813
    iget-object v3, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->alertToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManager;->access$2600(Lcom/android/server/policy/PhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 8815
    :cond_13
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v4, 0x103012b

    invoke-direct {v0, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 8816
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040a58

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 8817
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040a59

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8818
    .local v1, "emMsg":Ljava/lang/String;
    iget-object v3, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->alertToast:Landroid/widget/Toast;
    invoke-static {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->access$2602(Lcom/android/server/policy/PhoneWindowManager;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 8819
    iget-object v3, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->alertToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManager;->access$2600(Lcom/android/server/policy/PhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 8820
    iget-object v3, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->alertToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManager;->access$2600(Lcom/android/server/policy/PhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 8821
    iget-object v3, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->alertToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/android/server/policy/PhoneWindowManager;->access$2600(Lcom/android/server/policy/PhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 8822
    return-void
.end method
