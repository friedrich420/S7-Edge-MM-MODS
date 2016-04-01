.class Lcom/android/server/policy/sec/CombinationKeyManager$2;
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
    .line 698
    iput-object p1, p0, this$0:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 700
    iget-object v0, p0, this$0:Lcom/android/server/policy/sec/CombinationKeyManager;

    iget-object v0, v0, Lcom/android/server/policy/sec/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->takeScreenshot(I)V

    .line 701
    return-void
.end method
