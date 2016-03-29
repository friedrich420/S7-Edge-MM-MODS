.class Lcom/android/settings/wifi/WifiConfigController$4;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiConfigController;->addGatewayRow(Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 0

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v4, 0x7f020399

    const/4 v3, -0x1

    .line 1116
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    # setter for: Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;
    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->access$102(Lcom/android/settings/wifi/WifiConfigController;Landroid/content/Context;)Landroid/content/Context;

    .line 1117
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1141
    .end local p1    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1119
    .restart local p1    # "v":Landroid/view/View;
    :pswitch_0
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1122
    .restart local p1    # "v":Landroid/view/View;
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    # setter for: Lcom/android/settings/wifi/WifiConfigController;->mTouchX:I
    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->access$202(Lcom/android/settings/wifi/WifiConfigController;I)I

    .line 1123
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    # setter for: Lcom/android/settings/wifi/WifiConfigController;->mTouchY:I
    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->access$302(Lcom/android/settings/wifi/WifiConfigController;I)I

    .line 1124
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->mTouchX:I
    invoke-static {v1}, Lcom/android/settings/wifi/WifiConfigController;->access$200(Lcom/android/settings/wifi/WifiConfigController;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->mTouchX:I
    invoke-static {v1}, Lcom/android/settings/wifi/WifiConfigController;->access$200(Lcom/android/settings/wifi/WifiConfigController;)I

    move-result v2

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    if-ge v2, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->mTouchY:I
    invoke-static {v1}, Lcom/android/settings/wifi/WifiConfigController;->access$300(Lcom/android/settings/wifi/WifiConfigController;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->mTouchY:I
    invoke-static {v1}, Lcom/android/settings/wifi/WifiConfigController;->access$300(Lcom/android/settings/wifi/WifiConfigController;)I

    move-result v2

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 1125
    # getter for: Lcom/android/settings/wifi/WifiConfigController;->DBG:Z
    invoke-static {}, Lcom/android/settings/wifi/WifiConfigController;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "WifiConfigController"

    const-string v2, "Go to Webpage: open webpage from touch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->mGateway:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiConfigController;->access$400(Lcom/android/settings/wifi/WifiConfigController;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1127
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiConfigController;->access$100(Lcom/android/settings/wifi/WifiConfigController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1129
    .end local v0    # "browserIntent":Landroid/content/Intent;
    :cond_2
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    const v1, 0x7f02039a

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1130
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # setter for: Lcom/android/settings/wifi/WifiConfigController;->mTouchX:I
    invoke-static {v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->access$202(Lcom/android/settings/wifi/WifiConfigController;I)I

    .line 1131
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # setter for: Lcom/android/settings/wifi/WifiConfigController;->mTouchY:I
    invoke-static {v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->access$302(Lcom/android/settings/wifi/WifiConfigController;I)I

    goto/16 :goto_0

    .line 1134
    .restart local p1    # "v":Landroid/view/View;
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    # setter for: Lcom/android/settings/wifi/WifiConfigController;->mTouchX:I
    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->access$202(Lcom/android/settings/wifi/WifiConfigController;I)I

    .line 1135
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    # setter for: Lcom/android/settings/wifi/WifiConfigController;->mTouchY:I
    invoke-static {v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->access$302(Lcom/android/settings/wifi/WifiConfigController;I)I

    .line 1136
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->mTouchX:I
    invoke-static {v1}, Lcom/android/settings/wifi/WifiConfigController;->access$200(Lcom/android/settings/wifi/WifiConfigController;)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->mTouchX:I
    invoke-static {v1}, Lcom/android/settings/wifi/WifiConfigController;->access$200(Lcom/android/settings/wifi/WifiConfigController;)I

    move-result v2

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    if-gt v2, v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->mTouchY:I
    invoke-static {v1}, Lcom/android/settings/wifi/WifiConfigController;->access$300(Lcom/android/settings/wifi/WifiConfigController;)I

    move-result v1

    if-ltz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    # getter for: Lcom/android/settings/wifi/WifiConfigController;->mTouchY:I
    invoke-static {v1}, Lcom/android/settings/wifi/WifiConfigController;->access$300(Lcom/android/settings/wifi/WifiConfigController;)I

    move-result v2

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    if-le v2, v1, :cond_0

    .line 1137
    :cond_3
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 1117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
