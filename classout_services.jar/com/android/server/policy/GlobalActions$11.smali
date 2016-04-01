.class Lcom/android/server/policy/GlobalActions$11;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1754
    iput-object p1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1757
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1758
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x1040120

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1759
    const v2, 0x1040121

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1760
    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/server/policy/GlobalActions$11$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$11$1;-><init>(Lcom/android/server/policy/GlobalActions$11;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1769
    const v2, 0x1040376

    new-instance v3, Lcom/android/server/policy/GlobalActions$11$2;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$11$2;-><init>(Lcom/android/server/policy/GlobalActions$11;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1792
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1793
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7de

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1794
    # getter for: Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$100()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1795
    const/4 v2, 0x1

    :try_start_40
    # setter for: Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$202(Z)Z

    .line 1796
    monitor-exit v3
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_6f

    .line 1797
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1798
    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$4500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v2

    if-eqz v2, :cond_6e

    .line 1799
    # getter for: Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$100()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1800
    const/4 v2, 0x0

    :try_start_55
    # setter for: Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$202(Z)Z

    .line 1801
    monitor-exit v3
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_72

    .line 1802
    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$4500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 1803
    iget-object v2, p0, this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v2, v3}, Lcom/android/server/policy/GlobalActions;->access$4502(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 1804
    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->access$4302(Z)Z

    .line 1805
    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->access$4402(Z)Z

    .line 1807
    :cond_6e
    return-void

    .line 1796
    :catchall_6f
    move-exception v2

    :try_start_70
    monitor-exit v3
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v2

    .line 1801
    :catchall_72
    move-exception v2

    :try_start_73
    monitor-exit v3
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v2
.end method
