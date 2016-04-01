.class Lcom/android/server/policy/sec/MultitapKeyManager$2;
.super Ljava/lang/Object;
.source "MultitapKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/MultitapKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/MultitapKeyManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/MultitapKeyManager;)V
    .registers 2

    .prologue
    .line 288
    iput-object p1, p0, this$0:Lcom/android/server/policy/sec/MultitapKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 291
    iget-object v0, p0, this$0:Lcom/android/server/policy/sec/MultitapKeyManager;

    # getter for: Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeTripleTapPending:Z
    invoke-static {v0}, Lcom/android/server/policy/sec/MultitapKeyManager;->access$100(Lcom/android/server/policy/sec/MultitapKeyManager;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 292
    iget-object v0, p0, this$0:Lcom/android/server/policy/sec/MultitapKeyManager;

    # setter for: Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeTripleTapPending:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/sec/MultitapKeyManager;->access$102(Lcom/android/server/policy/sec/MultitapKeyManager;Z)Z

    .line 293
    iget-object v0, p0, this$0:Lcom/android/server/policy/sec/MultitapKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/MultitapKeyManager;->handleDoubleTapOnHome()V

    .line 296
    :cond_13
    iget-object v0, p0, this$0:Lcom/android/server/policy/sec/MultitapKeyManager;

    # getter for: Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeFakeTripleTapPending:Z
    invoke-static {v0}, Lcom/android/server/policy/sec/MultitapKeyManager;->access$200(Lcom/android/server/policy/sec/MultitapKeyManager;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 297
    iget-object v0, p0, this$0:Lcom/android/server/policy/sec/MultitapKeyManager;

    # setter for: Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeFakeTripleTapPending:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/sec/MultitapKeyManager;->access$202(Lcom/android/server/policy/sec/MultitapKeyManager;Z)Z

    .line 299
    :cond_20
    return-void
.end method
