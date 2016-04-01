.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$11;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .registers 2

    .prologue
    .line 3109
    iput-object p1, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3112
    iget-object v0, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    if-eqz v0, :cond_b

    .line 3113
    iget-object v0, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    .line 3115
    :cond_b
    return-void
.end method
