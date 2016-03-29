.class Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$1;
.super Ljava/lang/Object;
.source "KeyguardUnlockEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;


# direct methods
.method constructor <init>(Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$1;->this$0:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$1;->this$0:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;

    # getter for: Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;
    invoke-static {v0}, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->access$000(Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;)Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$1;->this$0:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;

    # getter for: Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->mCallback:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;
    invoke-static {v0}, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->access$000(Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;)Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$UnlockCallback;->userActivity()V

    .line 251
    iget-object v0, p0, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler$1;->this$0:Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;

    # invokes: Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->launch()V
    invoke-static {v0}, Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;->access$100(Lcom/android/keyguard/unlock/KeyguardUnlockEventHandler;)V

    .line 253
    :cond_0
    return-void
.end method
