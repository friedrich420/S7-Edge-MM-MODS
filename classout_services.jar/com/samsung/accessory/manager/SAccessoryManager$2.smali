.class Lcom/samsung/accessory/manager/SAccessoryManager$2;
.super Ljava/lang/Object;
.source "SAccessoryManager.java"

# interfaces
.implements Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/SAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 5
    .param p1, "event"    # I
    .param p2, "session"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .prologue
    .line 113
    const/4 v0, -0x1

    .line 114
    .local v0, "authEvent":I
    packed-switch p1, :pswitch_data_1e

    .line 128
    :goto_4
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    # getter for: Lcom/samsung/accessory/manager/SAccessoryManager;->mAuthHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->access$000(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 129
    return-void

    .line 116
    :pswitch_12
    const/16 v0, 0xa

    .line 117
    goto :goto_4

    .line 119
    :pswitch_15
    const/16 v0, 0xb

    .line 120
    goto :goto_4

    .line 122
    :pswitch_18
    const/16 v0, 0xc

    .line 123
    goto :goto_4

    .line 125
    :pswitch_1b
    const/16 v0, 0xd

    goto :goto_4

    .line 114
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
    .end packed-switch
.end method
