.class final Lcom/android/server/policy/ImmersiveModeConfirmation$H;
.super Landroid/os/Handler;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ImmersiveModeConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final HIDE:I = 0x2

.field private static final SHOW:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .registers 2

    .prologue
    .line 339
    iput-object p1, p0, this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/ImmersiveModeConfirmation;Lcom/android/server/policy/ImmersiveModeConfirmation$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;
    .param p2, "x1"    # Lcom/android/server/policy/ImmersiveModeConfirmation$1;

    .prologue
    .line 339
    invoke-direct {p0, p1}, <init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 345
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 353
    :goto_5
    return-void

    .line 347
    :pswitch_6
    iget-object v0, p0, this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    # invokes: Lcom/android/server/policy/ImmersiveModeConfirmation;->handleShow()V
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->access$1100(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    goto :goto_5

    .line 350
    :pswitch_c
    iget-object v0, p0, this$0:Lcom/android/server/policy/ImmersiveModeConfirmation;

    # invokes: Lcom/android/server/policy/ImmersiveModeConfirmation;->handleHide()V
    invoke-static {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->access$1000(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    goto :goto_5

    .line 345
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
