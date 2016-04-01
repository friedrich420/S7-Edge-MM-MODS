.class Lcom/android/server/policy/GlobalActions$41;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->isSimReady()Z
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
    .line 4631
    iput-object p1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 4633
    # getter for: Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4634
    const/4 v0, 0x0

    :try_start_6
    # setter for: Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$202(Z)Z

    .line 4635
    iget-object v0, p0, this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v2}, Lcom/android/server/policy/GlobalActions;->access$8502(Lcom/android/server/policy/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 4636
    monitor-exit v1

    .line 4637
    return-void

    .line 4636
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v0
.end method
