.class Lcom/android/server/policy/sec/MultitapKeyManager$4;
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
    .line 325
    iput-object p1, p0, this$0:Lcom/android/server/policy/sec/MultitapKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 327
    iget-object v0, p0, this$0:Lcom/android/server/policy/sec/MultitapKeyManager;

    # setter for: Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerTripleTapPending:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/sec/MultitapKeyManager;->access$402(Lcom/android/server/policy/sec/MultitapKeyManager;Z)Z

    .line 328
    iget-object v0, p0, this$0:Lcom/android/server/policy/sec/MultitapKeyManager;

    # setter for: Lcom/android/server/policy/sec/MultitapKeyManager;->mPowerTripleTapReady:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/sec/MultitapKeyManager;->access$502(Lcom/android/server/policy/sec/MultitapKeyManager;Z)Z

    .line 329
    return-void
.end method
