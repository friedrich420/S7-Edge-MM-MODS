.class Lcom/android/server/pm/KnoxKeyguardDelegate$KeyguardHandler;
.super Landroid/os/Handler;
.source "KnoxKeyguardDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KnoxKeyguardDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyguardHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/KnoxKeyguardDelegate;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/KnoxKeyguardDelegate;Lcom/android/server/pm/KnoxKeyguardDelegate$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/pm/KnoxKeyguardDelegate;
    .param p2, "x1"    # Lcom/android/server/pm/KnoxKeyguardDelegate$1;

    .prologue
    .line 93
    invoke-direct {p0, p1}, <init>(Lcom/android/server/pm/KnoxKeyguardDelegate;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 97
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_3e

    .line 115
    const-string v2, "KnoxKeyguardDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown msg type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_23
    return-void

    .line 99
    :pswitch_24
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 100
    .local v1, "userId":I
    iget-object v2, p0, this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    # invokes: Lcom/android/server/pm/KnoxKeyguardDelegate;->handleHomeShow(I)V
    invoke-static {v2, v1}, Lcom/android/server/pm/KnoxKeyguardDelegate;->access$100(Lcom/android/server/pm/KnoxKeyguardDelegate;I)V

    goto :goto_23

    .line 104
    .end local v1    # "userId":I
    :pswitch_2c
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 105
    .restart local v1    # "userId":I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 106
    .local v0, "flags":I
    iget-object v2, p0, this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    # invokes: Lcom/android/server/pm/KnoxKeyguardDelegate;->show(II)V
    invoke-static {v2, v1, v0}, Lcom/android/server/pm/KnoxKeyguardDelegate;->access$200(Lcom/android/server/pm/KnoxKeyguardDelegate;II)V

    goto :goto_23

    .line 110
    .end local v0    # "flags":I
    .end local v1    # "userId":I
    :pswitch_36
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 111
    .restart local v1    # "userId":I
    iget-object v2, p0, this$0:Lcom/android/server/pm/KnoxKeyguardDelegate;

    # invokes: Lcom/android/server/pm/KnoxKeyguardDelegate;->hide(I)V
    invoke-static {v2, v1}, Lcom/android/server/pm/KnoxKeyguardDelegate;->access$300(Lcom/android/server/pm/KnoxKeyguardDelegate;I)V

    goto :goto_23

    .line 97
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_2c
        :pswitch_36
    .end packed-switch
.end method
