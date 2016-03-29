.class final Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl$H;
.super Landroid/os/Handler;
.source "ApMirroringControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl$1;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl$H;-><init>(Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;)V

    return-void
.end method

.method private fireConnectionChanged()V
    .locals 3

    .prologue
    .line 130
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ApMirroringController$Callback;

    .line 131
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/ApMirroringController$Callback;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->mIsConnected:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl;)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/ApMirroringController$Callback;->onApMirroringConnectionChanged(Z)V

    goto :goto_0

    .line 133
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/ApMirroringController$Callback;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 124
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ApMirroringControllerImpl$H;->fireConnectionChanged()V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
