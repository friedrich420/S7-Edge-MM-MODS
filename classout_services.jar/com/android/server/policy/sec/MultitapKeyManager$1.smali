.class Lcom/android/server/policy/sec/MultitapKeyManager$1;
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
    .line 256
    iput-object p1, p0, this$0:Lcom/android/server/policy/sec/MultitapKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 259
    iget-object v0, p0, this$0:Lcom/android/server/policy/sec/MultitapKeyManager;

    # getter for: Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z
    invoke-static {v0}, Lcom/android/server/policy/sec/MultitapKeyManager;->access$000(Lcom/android/server/policy/sec/MultitapKeyManager;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 260
    iget-object v0, p0, this$0:Lcom/android/server/policy/sec/MultitapKeyManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/sec/MultitapKeyManager;->mHomeDoubleTapPending:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/sec/MultitapKeyManager;->access$002(Lcom/android/server/policy/sec/MultitapKeyManager;Z)Z

    .line 261
    iget-object v0, p0, this$0:Lcom/android/server/policy/sec/MultitapKeyManager;

    iget-object v0, v0, Lcom/android/server/policy/sec/MultitapKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHome()V

    .line 263
    :cond_15
    return-void
.end method
