.class Lpotato/mariozawa/statusbargradient/Gradient$1;
.super Landroid/content/BroadcastReceiver;
.source "Gradient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpotato/mariozawa/statusbargradient/Gradient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpotato/mariozawa/statusbargradient/Gradient;


# direct methods
.method constructor <init>(Lpotato/mariozawa/statusbargradient/Gradient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lpotato/mariozawa/statusbargradient/Gradient$1;->this$0:Lpotato/mariozawa/statusbargradient/Gradient;

    .line 64
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.potato.gradient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lpotato/mariozawa/statusbargradient/Gradient$1;->this$0:Lpotato/mariozawa/statusbargradient/Gradient;

    iget-object v2, p0, Lpotato/mariozawa/statusbargradient/Gradient$1;->this$0:Lpotato/mariozawa/statusbargradient/Gradient;

    invoke-virtual {v2}, Lpotato/mariozawa/statusbargradient/Gradient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 71
    const-string v3, "gradient_top"

    .line 70
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lpotato/mariozawa/statusbargradient/Gradient;->access$0(Lpotato/mariozawa/statusbargradient/Gradient;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lpotato/mariozawa/statusbargradient/Gradient$1;->this$0:Lpotato/mariozawa/statusbargradient/Gradient;

    iget-object v2, p0, Lpotato/mariozawa/statusbargradient/Gradient$1;->this$0:Lpotato/mariozawa/statusbargradient/Gradient;

    invoke-virtual {v2}, Lpotato/mariozawa/statusbargradient/Gradient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 73
    const-string v3, "gradient_bottom"

    .line 72
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lpotato/mariozawa/statusbargradient/Gradient;->access$1(Lpotato/mariozawa/statusbargradient/Gradient;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lpotato/mariozawa/statusbargradient/Gradient$1;->this$0:Lpotato/mariozawa/statusbargradient/Gradient;

    iget-object v2, p0, Lpotato/mariozawa/statusbargradient/Gradient$1;->this$0:Lpotato/mariozawa/statusbargradient/Gradient;

    invoke-virtual {v2}, Lpotato/mariozawa/statusbargradient/Gradient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 76
    const-string v3, "gradient_first_color"

    .line 75
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lpotato/mariozawa/statusbargradient/Gradient;->access$2(Lpotato/mariozawa/statusbargradient/Gradient;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lpotato/mariozawa/statusbargradient/Gradient$1;->this$0:Lpotato/mariozawa/statusbargradient/Gradient;

    iget-object v2, p0, Lpotato/mariozawa/statusbargradient/Gradient$1;->this$0:Lpotato/mariozawa/statusbargradient/Gradient;

    invoke-virtual {v2}, Lpotato/mariozawa/statusbargradient/Gradient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 78
    const-string v3, "gradient_second_color"

    .line 77
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lpotato/mariozawa/statusbargradient/Gradient;->access$3(Lpotato/mariozawa/statusbargradient/Gradient;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lpotato/mariozawa/statusbargradient/Gradient$1;->this$0:Lpotato/mariozawa/statusbargradient/Gradient;

    iget-object v2, p0, Lpotato/mariozawa/statusbargradient/Gradient$1;->this$0:Lpotato/mariozawa/statusbargradient/Gradient;

    invoke-virtual {v2}, Lpotato/mariozawa/statusbargradient/Gradient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 80
    const-string v3, "gradient_third_color"

    .line 79
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lpotato/mariozawa/statusbargradient/Gradient;->access$4(Lpotato/mariozawa/statusbargradient/Gradient;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lpotato/mariozawa/statusbargradient/Gradient$1;->this$0:Lpotato/mariozawa/statusbargradient/Gradient;

    iget-object v2, p0, Lpotato/mariozawa/statusbargradient/Gradient$1;->this$0:Lpotato/mariozawa/statusbargradient/Gradient;

    invoke-virtual {v2}, Lpotato/mariozawa/statusbargradient/Gradient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 82
    const-string v3, "gradient_fourth_color"

    .line 81
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lpotato/mariozawa/statusbargradient/Gradient;->access$5(Lpotato/mariozawa/statusbargradient/Gradient;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lpotato/mariozawa/statusbargradient/Gradient$1;->this$0:Lpotato/mariozawa/statusbargradient/Gradient;

    iget-object v2, p0, Lpotato/mariozawa/statusbargradient/Gradient$1;->this$0:Lpotato/mariozawa/statusbargradient/Gradient;

    invoke-virtual {v2}, Lpotato/mariozawa/statusbargradient/Gradient;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gradient_style"

    .line 84
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lpotato/mariozawa/statusbargradient/Gradient;->access$6(Lpotato/mariozawa/statusbargradient/Gradient;I)V

    .line 86
    iget-object v1, p0, Lpotato/mariozawa/statusbargradient/Gradient$1;->this$0:Lpotato/mariozawa/statusbargradient/Gradient;

    iget-object v2, p0, Lpotato/mariozawa/statusbargradient/Gradient$1;->this$0:Lpotato/mariozawa/statusbargradient/Gradient;

    invoke-virtual {v2}, Lpotato/mariozawa/statusbargradient/Gradient;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gradient_orientation"

    .line 86
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lpotato/mariozawa/statusbargradient/Gradient;->access$7(Lpotato/mariozawa/statusbargradient/Gradient;I)V

    .line 89
    iget-object v1, p0, Lpotato/mariozawa/statusbargradient/Gradient$1;->this$0:Lpotato/mariozawa/statusbargradient/Gradient;

    # invokes: Lpotato/mariozawa/statusbargradient/Gradient;->setBackground()V
    invoke-static {v1}, Lpotato/mariozawa/statusbargradient/Gradient;->access$8(Lpotato/mariozawa/statusbargradient/Gradient;)V

    .line 93
    :cond_0
    return-void
.end method
