.class Lcom/android/server/policy/GlobalActions$6;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .registers 2

    .prologue
    .line 1370
    iput-object p1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1372
    # getter for: Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$3300()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1373
    .local v3, "passCode":Ljava/lang/String;
    const/4 v4, -0x1

    .line 1375
    .local v4, "result":I
    :try_start_d
    iget-object v5, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$3400(Lcom/android/server/policy/GlobalActions;)Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-result-object v5

    if-eqz v5, :cond_20

    .line 1376
    iget-object v5, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$3400(Lcom/android/server/policy/GlobalActions;)Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->setProKioskState(ZLjava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1f} :catch_5f

    move-result v4

    .line 1381
    :cond_20
    :goto_20
    iget-object v5, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    const-string/jumbo v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1382
    .local v2, "im":Landroid/view/inputmethod/InputMethodManager;
    # getter for: Lcom/android/server/policy/GlobalActions;->mPasscodeEditText:Landroid/widget/EditText;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$3300()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1383
    if-nez v4, :cond_5e

    .line 1385
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1386
    .local v1, "i":Landroid/content/Intent;
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1387
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1389
    iget-object v5, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1393
    .end local v1    # "i":Landroid/content/Intent;
    :cond_5e
    return-void

    .line 1378
    .end local v2    # "im":Landroid/view/inputmethod/InputMethodManager;
    :catch_5f
    move-exception v0

    .line 1379
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "GlobalActions"

    const-string v6, "Failed mProKioskManager setProKioskState"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20
.end method
