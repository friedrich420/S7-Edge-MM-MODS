.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$H;
.super Landroid/os/Handler;
.source "NotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    .prologue
    .line 4841
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$H;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;

    .prologue
    .line 4841
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$H;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 4843
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4844
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 4858
    :goto_0
    return-void

    .line 4846
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$H;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # invokes: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->inflateQsEditPanel()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    goto :goto_0

    .line 4849
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$H;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # invokes: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetQsEditPanel()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    goto :goto_0

    .line 4852
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$H;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # invokes: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateExpandQsEditPanel()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$5000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    goto :goto_0

    .line 4855
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$H;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # invokes: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateCollapseQsEditPanel()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$5100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    goto :goto_0

    .line 4844
    nop

    :pswitch_data_0
    .packed-switch 0x3ed
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
