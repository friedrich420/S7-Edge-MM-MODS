.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$10;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->injectionKeyEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

.field final synthetic val$key:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V
    .registers 3

    .prologue
    .line 2293
    iput-object p1, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput p2, p0, val$key:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2296
    :try_start_0
    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    iget v2, p0, val$key:I

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 2300
    :goto_a
    return-void

    .line 2297
    :catch_b
    move-exception v0

    .line 2298
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method
