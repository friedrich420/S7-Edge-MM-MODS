.class final Lcom/android/server/InputMethodManagerService$LocalServiceImpl;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalServiceImpl"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 5678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5679
    iput-object p1, p0, mHandler:Landroid/os/Handler;

    .line 5680
    return-void
.end method


# virtual methods
.method public setInteractive(Z)V
    .registers 7
    .param p1, "interactive"    # Z

    .prologue
    const/4 v1, 0x0

    .line 5685
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mHandler:Landroid/os/Handler;

    const/16 v4, 0xbd6

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5687
    return-void

    :cond_12
    move v0, v1

    .line 5685
    goto :goto_a
.end method
