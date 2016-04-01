.class Lcom/android/server/InputMethodManagerService$KeyboardDetect;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyboardDetect"
.end annotation


# instance fields
.field final BACKGROUND:I

.field final FOREGROUND:I

.field final INACTIVE:I

.field private enKeyOpt:Z

.field private keyboardParams:[I

.field private keyboardState:I

.field private mPerf:Landroid/util/BoostFramework;

.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 653
    iput-object p1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, mPerf:Landroid/util/BoostFramework;

    .line 655
    iput v1, p0, keyboardState:I

    .line 659
    iput v1, p0, INACTIVE:I

    .line 660
    const/4 v0, 0x1

    iput v0, p0, FOREGROUND:I

    .line 661
    const/4 v0, 0x2

    iput v0, p0, BACKGROUND:I

    return-void
.end method


# virtual methods
.method declared-synchronized getKeyboardState()I
    .registers 2

    .prologue
    .line 708
    monitor-enter p0

    :try_start_1
    iget v0, p0, keyboardState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized keyboardPerflockAcquire()V
    .registers 5

    .prologue
    .line 674
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, mPerf:Landroid/util/BoostFramework;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_27

    if-eqz v1, :cond_2a

    .line 676
    :try_start_5
    iget-object v1, p0, keyboardParams:[I

    if-nez v1, :cond_10

    .line 677
    iget-object v1, p0, this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, setKeyboardParams(Landroid/content/Context;)V

    .line 678
    :cond_10
    iget-object v1, p0, keyboardParams:[I

    if-eqz v1, :cond_1c

    .line 679
    iget-object v1, p0, mPerf:Landroid/util/BoostFramework;

    const/4 v2, 0x0

    iget-object v3, p0, keyboardParams:[I

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1c} :catch_1e
    .catchall {:try_start_5 .. :try_end_1c} :catchall_27

    .line 690
    :cond_1c
    :goto_1c
    monitor-exit p0

    return-void

    .line 682
    :catch_1e
    move-exception v0

    .line 683
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1f
    const-string v1, "InputMethodManagerService"

    const-string v2, "Exception caught at perflock acquire"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_27

    goto :goto_1c

    .line 674
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1

    .line 687
    :cond_2a
    :try_start_2a
    const-string v1, "InputMethodManagerService"

    const-string v2, "Perflock object null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_27

    goto :goto_1c
.end method

.method declared-synchronized keyboardPerflockRelease()V
    .registers 4

    .prologue
    .line 693
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, mPerf:Landroid/util/BoostFramework;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-eqz v1, :cond_18

    .line 695
    :try_start_5
    iget-object v1, p0, mPerf:Landroid/util/BoostFramework;

    invoke-virtual {v1}, Landroid/util/BoostFramework;->perfLockRelease()I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_c
    .catchall {:try_start_5 .. :try_end_a} :catchall_15

    .line 705
    :goto_a
    monitor-exit p0

    return-void

    .line 697
    :catch_c
    move-exception v0

    .line 698
    .local v0, "e":Ljava/lang/Exception;
    :try_start_d
    const-string v1, "InputMethodManagerService"

    const-string v2, "Exception caught at perflock release"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_15

    goto :goto_a

    .line 693
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1

    .line 702
    :cond_18
    :try_start_18
    const-string v1, "InputMethodManagerService"

    const-string v2, "Perflock object null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_15

    goto :goto_a
.end method

.method declared-synchronized setKeyboardParams(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 664
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, enKeyOpt:Z

    .line 666
    iget-boolean v0, p0, enKeyOpt:Z

    if-eqz v0, :cond_1f

    .line 667
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, keyboardParams:[I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    .line 670
    :cond_1f
    monitor-exit p0

    return-void

    .line 664
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setKeyboardState(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 712
    monitor-enter p0

    :try_start_1
    iput p1, p0, keyboardState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 714
    monitor-exit p0

    return-void

    .line 712
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
