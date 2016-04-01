.class Lcom/android/server/policy/GlobalActions$13;
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
    .line 1881
    iput-object p1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1884
    # getter for: Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$000()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1885
    # getter for: Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1886
    const/4 v0, 0x0

    :try_start_d
    # setter for: Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$202(Z)Z

    .line 1887
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_19

    .line 1892
    :goto_11
    iget-object v0, p0, this$0:Lcom/android/server/policy/GlobalActions;

    const-string v1, "GlobalActions"

    # invokes: Lcom/android/server/policy/GlobalActions;->virtualDismissInSCover(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/policy/GlobalActions;->access$4700(Lcom/android/server/policy/GlobalActions;Ljava/lang/String;)V

    .line 1893
    return-void

    .line 1887
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0

    .line 1889
    :cond_1c
    # setter for: Lcom/android/server/policy/GlobalActions;->sIsSecondConfirming:Z
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$002(Z)Z

    goto :goto_11
.end method
