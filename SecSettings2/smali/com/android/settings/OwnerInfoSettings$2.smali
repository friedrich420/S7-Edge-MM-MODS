.class Lcom/android/settings/OwnerInfoSettings$2;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OwnerInfoSettings;->showInputMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OwnerInfoSettings;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/settings/OwnerInfoSettings$2;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v2, 0x20

    const/4 v3, 0x1

    .line 195
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$2;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Lcom/android/settings/OwnerInfoSettings;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$2;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Lcom/android/settings/OwnerInfoSettings;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$2;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Lcom/android/settings/OwnerInfoSettings;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 205
    :goto_1
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$2;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$000(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 206
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$2;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$000(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 199
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$2;->this$0:Lcom/android/settings/OwnerInfoSettings;

    iget-object v1, v1, Lcom/android/settings/OwnerInfoSettings;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_3

    .line 200
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$2;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Lcom/android/settings/OwnerInfoSettings;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_1

    .line 202
    :cond_3
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$2;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v1}, Lcom/android/settings/OwnerInfoSettings;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_1
.end method
