.class Lcom/absolute/android/persistservice/aa;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/y;


# direct methods
.method public constructor <init>(Lcom/absolute/android/persistservice/y;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 654
    iput-object p1, p0, a:Lcom/absolute/android/persistservice/y;

    .line 655
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 656
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 661
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    .line 676
    :goto_5
    return-void

    .line 663
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/absolute/android/persistservice/ab;

    .line 664
    iget-object v1, p0, a:Lcom/absolute/android/persistservice/y;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/y;Lcom/absolute/android/persistservice/ab;)V

    goto :goto_5

    .line 667
    :pswitch_10
    iget-object v0, p0, a:Lcom/absolute/android/persistservice/y;

    invoke-static {v0}, Lcom/absolute/android/persistservice/y;->a(Lcom/absolute/android/persistservice/y;)V

    goto :goto_5

    .line 670
    :pswitch_16
    iget-object v1, p0, a:Lcom/absolute/android/persistservice/y;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/y;->b(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    goto :goto_5

    .line 673
    :pswitch_20
    iget-object v1, p0, a:Lcom/absolute/android/persistservice/y;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/y;->c(Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    goto :goto_5

    .line 661
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_10
        :pswitch_16
        :pswitch_20
    .end packed-switch
.end method
