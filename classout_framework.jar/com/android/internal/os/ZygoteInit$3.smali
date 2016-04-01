.class final Lcom/android/internal/os/ZygoteInit$3;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/ZygoteInit;->parallelpreloadClasses()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$classList:Ljava/util/ArrayList;

.field final synthetic val$runtime:Ldalvik/system/VMRuntime;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ldalvik/system/VMRuntime;)V
    .registers 3

    .prologue
    .line 560
    iput-object p1, p0, val$classList:Ljava/util/ArrayList;

    iput-object p2, p0, val$runtime:Ldalvik/system/VMRuntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 564
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/os/ZygoteInit;->parallelPCThread1running:Z

    .line 565
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 566
    .local v6, "startTime":J
    const-wide/16 v10, 0x0

    .line 567
    .local v10, "time1":J
    const-wide/16 v12, 0x0

    .line 570
    .local v12, "time2":J
    const/16 v9, -0x10

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 573
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    # getter for: Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()I

    move-result v9

    if-ge v3, v9, :cond_ea

    .line 574
    move-object/from16 v0, p0

    iget-object v9, v0, val$classList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 580
    .local v5, "line":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_22
    :try_start_22
    sget-object v9, Lcom/android/internal/os/ZygoteInit;->postLoadClasses:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_4b

    .line 583
    sget-object v9, Lcom/android/internal/os/ZygoteInit;->postLoadClasses:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_50

    .line 584
    const-string v9, "Zygote"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "postpone "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    const/4 v5, 0x0

    .line 589
    :cond_4b
    if-nez v5, :cond_53

    .line 573
    :cond_4d
    :goto_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 580
    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 592
    :cond_53
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 600
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v9

    # getter for: Lcom/android/internal/os/ZygoteInit;->PRELOAD_GC_THRESHOLD:I
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$200()I

    move-result v14

    if-le v9, v14, :cond_4d

    .line 602
    const-string v9, "Zygote"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "!@GC at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 605
    move-object/from16 v0, p0

    iget-object v9, v0, val$runtime:Ldalvik/system/VMRuntime;

    invoke-virtual {v9}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 606
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 607
    const-string v9, "Zygote"

    const-string v14, "!@GC end"

    invoke-static {v9, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catch Ljava/lang/ClassNotFoundException; {:try_start_22 .. :try_end_90} :catch_91
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_90} :catch_ab

    goto :goto_4d

    .line 609
    :catch_91
    move-exception v2

    .line 610
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v9, "Zygote"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Class not found for preloading: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 611
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_ab
    move-exception v8

    .line 612
    .local v8, "t":Ljava/lang/Throwable;
    const-string v9, "Zygote"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "!@Error preloading "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Landroid/os/Process;->killProcess(I)V

    .line 615
    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    .line 616
    instance-of v9, v8, Ljava/lang/Error;

    if-eqz v9, :cond_dd

    .line 617
    check-cast v8, Ljava/lang/Error;

    .end local v8    # "t":Ljava/lang/Throwable;
    throw v8

    .line 619
    .restart local v8    # "t":Ljava/lang/Throwable;
    :cond_dd
    instance-of v9, v8, Ljava/lang/RuntimeException;

    if-eqz v9, :cond_e4

    .line 620
    check-cast v8, Ljava/lang/RuntimeException;

    .end local v8    # "t":Ljava/lang/Throwable;
    throw v8

    .line 622
    .restart local v8    # "t":Ljava/lang/Throwable;
    :cond_e4
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 625
    .end local v4    # "j":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_ea
    const-string v9, "Zygote"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "!@prldclss1: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " classes in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v6

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "ms."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/internal/os/ZygoteInit;->parallelPCThread1running:Z

    .line 628
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    long-to-int v9, v14

    # setter for: Lcom/android/internal/os/ZygoteInit;->thread1time:I
    invoke-static {v9}, Lcom/android/internal/os/ZygoteInit;->access$302(I)I

    .line 629
    return-void
.end method
