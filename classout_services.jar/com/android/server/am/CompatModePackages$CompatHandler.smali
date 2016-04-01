.class final Lcom/android/server/am/CompatModePackages$CompatHandler;
.super Landroid/os/Handler;
.source "CompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CompatModePackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CompatHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CompatModePackages;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CompatModePackages;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 75
    iput-object p1, p0, this$0:Lcom/android/server/am/CompatModePackages;

    .line 76
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 77
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 86
    :goto_5
    return-void

    .line 83
    :pswitch_6
    iget-object v0, p0, this$0:Lcom/android/server/am/CompatModePackages;

    invoke-virtual {v0}, Lcom/android/server/am/CompatModePackages;->saveCompatModes()V

    goto :goto_5

    .line 81
    :pswitch_data_c
    .packed-switch 0x12c
        :pswitch_6
    .end packed-switch
.end method
