.class Lcom/android/server/policy/sec/CombinationKeyManager$5;
.super Ljava/lang/Object;
.source "CombinationKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/CombinationKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/CombinationKeyManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/CombinationKeyManager;)V
    .registers 2

    .prologue
    .line 811
    iput-object p1, p0, this$0:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 813
    # getter for: Lcom/android/server/policy/sec/CombinationKeyManager;->SAFE_DEBUG:Z
    invoke-static {}, Lcom/android/server/policy/sec/CombinationKeyManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "CombinationKeyManager"

    const-string/jumbo v3, "mFactoryTestChordLongPress : startActivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_e
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 815
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.factory"

    const-string v3, "com.sec.factory.app.factorytest.FactoryTestMain"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    const/high16 v2, 0x34000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 821
    :try_start_1f
    iget-object v2, p0, this$0:Lcom/android/server/policy/sec/CombinationKeyManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_26
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1f .. :try_end_26} :catch_27

    .line 825
    :goto_26
    return-void

    .line 822
    :catch_27
    move-exception v0

    .line 823
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "CombinationKeyManager"

    const-string v3, "No activity to launch factorytestmain."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26
.end method
