.class final Lcom/android/systemui/recents/RecentsService$H;
.super Landroid/os/Handler;
.source "RecentsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsService;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recents/RecentsService;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsService$H;->this$0:Lcom/android/systemui/recents/RecentsService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/RecentsService;Lcom/android/systemui/recents/RecentsService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/recents/RecentsService;
    .param p2, "x1"    # Lcom/android/systemui/recents/RecentsService$1;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsService$H;-><init>(Lcom/android/systemui/recents/RecentsService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 81
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsService$H;->this$0:Lcom/android/systemui/recents/RecentsService;

    invoke-virtual {v4}, Lcom/android/systemui/recents/RecentsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/recents/Recents;->getInstanceAndStartIfNeeded(Landroid/content/Context;)Lcom/android/systemui/recents/Recents;

    move-result-object v0

    .line 83
    .local v0, "recents":Lcom/android/systemui/recents/Recents;
    iget v1, p1, Landroid/os/Message;->what:I

    .line 84
    .local v1, "what":I
    packed-switch v1, :pswitch_data_0

    .line 107
    :goto_0
    :pswitch_0
    return-void

    .line 86
    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_0

    :goto_1
    invoke-virtual {v0, v2, v5}, Lcom/android/systemui/recents/Recents;->showRecents(ZLandroid/view/View;)V

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    .line 89
    :pswitch_2
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1

    move v4, v2

    :goto_2
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_2

    :goto_3
    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/recents/Recents;->hideRecents(ZZ)V

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_3

    .line 92
    :pswitch_3
    invoke-virtual {v0, v5, v3, v5}, Lcom/android/systemui/recents/Recents;->toggleRecents(Landroid/view/Display;ILandroid/view/View;)V

    goto :goto_0

    .line 95
    :pswitch_4
    invoke-virtual {v0}, Lcom/android/systemui/recents/Recents;->preloadRecents()V

    goto :goto_0

    .line 98
    :pswitch_5
    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/Recents;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 101
    :pswitch_6
    invoke-virtual {v0}, Lcom/android/systemui/recents/Recents;->showNextAffiliatedTask()V

    goto :goto_0

    .line 104
    :pswitch_7
    invoke-virtual {v0}, Lcom/android/systemui/recents/Recents;->showPrevAffiliatedTask()V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
