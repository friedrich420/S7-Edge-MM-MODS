.class Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdmiControlBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 2

    .prologue
    .line 144
    iput-object p1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "x1"    # Lcom/android/server/hdmi/HdmiControlService$1;

    .prologue
    .line 144
    invoke-direct {p0, p1}, <init>(Lcom/android/server/hdmi/HdmiControlService;)V

    return-void
.end method

.method private getMenuLanguage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 175
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 176
    .local v0, "locale":Ljava/util/Locale;
    sget-object v1, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->HONG_KONG:Ljava/util/Locale;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$500(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->MACAU:Ljava/util/Locale;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$600(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 180
    :cond_24
    const-string v1, "chi"

    .line 182
    :goto_26
    return-object v1

    :cond_27
    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    goto :goto_26
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$000(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v1, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_80

    :cond_13
    :goto_13
    packed-switch v1, :pswitch_data_92

    .line 172
    :cond_16
    :goto_16
    return-void

    .line 149
    :sswitch_17
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move v1, v2

    goto :goto_13

    :sswitch_21
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move v1, v3

    goto :goto_13

    :sswitch_2b
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v1, 0x2

    goto :goto_13

    :sswitch_35
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v1, 0x3

    goto :goto_13

    .line 151
    :pswitch_3f
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 152
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->onStandby(I)V
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->access$100(Lcom/android/server/hdmi/HdmiControlService;I)V

    goto :goto_16

    .line 156
    :pswitch_4d
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 157
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->onWakeUp()V
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$200(Lcom/android/server/hdmi/HdmiControlService;)V

    goto :goto_16

    .line 161
    :pswitch_5b
    invoke-direct {p0}, getMenuLanguage()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "language":Ljava/lang/String;
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mLanguage:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiControlService;->access$300(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 163
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->onLanguageChanged(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiControlService;->access$400(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;)V

    goto :goto_16

    .line 167
    .end local v0    # "language":Ljava/lang/String;
    :pswitch_71
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 168
    iget-object v1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->onStandby(I)V
    invoke-static {v1, v3}, Lcom/android/server/hdmi/HdmiControlService;->access$100(Lcom/android/server/hdmi/HdmiControlService;I)V

    goto :goto_16

    .line 149
    nop

    :sswitch_data_80
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_17
        -0x56ac2893 -> :sswitch_21
        0x9780086 -> :sswitch_2b
        0x741706da -> :sswitch_35
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_4d
        :pswitch_5b
        :pswitch_71
    .end packed-switch
.end method
