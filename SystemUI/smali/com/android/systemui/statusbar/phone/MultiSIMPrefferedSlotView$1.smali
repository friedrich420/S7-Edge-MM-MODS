.class Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiSIMPrefferedSlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 100
    const-string v8, "subscription"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 101
    .local v7, "subId":I
    const-string v8, "MultiSIMPrefferedSlotView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive() - ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED : subId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    # invokes: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->getPhoneId(I)I
    invoke-static {v9, v7}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$100(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;I)I

    move-result v9

    # setter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultVoiceSimId:I
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$002(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;I)I

    .line 103
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultVoiceButton:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

    # invokes: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->refreshSlotInfo()V
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->access$200(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;)V

    .line 142
    .end local v7    # "subId":I
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v8, "android.intent.action.ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 105
    const-string v8, "subscription"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 106
    .restart local v7    # "subId":I
    const-string v8, "MultiSIMPrefferedSlotView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive() - ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED : subId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    # invokes: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->getPhoneId(I)I
    invoke-static {v9, v7}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$100(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;I)I

    move-result v9

    # setter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultSmsSimId:I
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$302(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;I)I

    .line 108
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultSmsButton:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

    # invokes: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->refreshSlotInfo()V
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->access$200(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;)V

    goto :goto_0

    .line 109
    .end local v7    # "subId":I
    :cond_2
    const-string v8, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 110
    const-string v8, "subscription"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 111
    .restart local v7    # "subId":I
    const-string v8, "MultiSIMPrefferedSlotView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive() - ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED :: subId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    # invokes: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->getPhoneId(I)I
    invoke-static {v9, v7}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$100(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;I)I

    move-result v9

    # setter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultDataSimId:I
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$402(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;I)I

    .line 113
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultDataButton:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

    # invokes: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->refreshSlotInfo()V
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->access$200(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;)V

    goto :goto_0

    .line 114
    .end local v7    # "subId":I
    :cond_3
    const-string v8, "com.samsung.settings.SIMCARD_MGT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 115
    const-string v8, "simcard_sim_id"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 116
    .local v5, "simId":I
    const-string v8, "simcard_sim_icon"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 117
    .local v4, "simIconIndex":Ljava/lang/String;
    const-string v8, "simcard_sim_name"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 118
    .local v6, "simName":Ljava/lang/String;
    const-string v8, "MultiSIMPrefferedSlotView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive() - ACTION_SIM_MGT_CHANGED : simId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",simIconIndex="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",simName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 120
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 121
    .local v3, "iconIndex":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    # getter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->SimImageIdx:[I
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$500(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)[I

    move-result-object v8

    aput v3, v8, v5

    .line 123
    .end local v3    # "iconIndex":I
    :cond_4
    if-eqz v6, :cond_5

    .line 124
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    # getter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->SimName:[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$600(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)[Ljava/lang/String;

    move-result-object v8

    aput-object v6, v8, v5

    .line 126
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    # getter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mSlotButtons:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$700(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

    .line 127
    .local v1, "button":Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;
    # invokes: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->refreshSlotInfo()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->access$200(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;)V

    goto :goto_1

    .line 129
    .end local v1    # "button":Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "simIconIndex":Ljava/lang/String;
    .end local v5    # "simId":I
    .end local v6    # "simName":Ljava/lang/String;
    :cond_6
    const-string v8, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 130
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v9

    # setter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultVoiceSimId:I
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$002(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;I)I

    .line 131
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v10

    # invokes: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->getPhoneId(I)I
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$100(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;I)I

    move-result v9

    # setter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultSmsSimId:I
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$302(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;I)I

    .line 132
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v10

    # invokes: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->getPhoneId(I)I
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$100(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;I)I

    move-result v9

    # setter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mDefaultDataSimId:I
    invoke-static {v8, v9}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$402(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;I)I

    .line 133
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    # getter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mSlotButtons:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$700(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

    .line 134
    .restart local v1    # "button":Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;
    # invokes: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->refreshSlotInfo()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->access$200(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;)V

    goto :goto_2

    .line 136
    .end local v1    # "button":Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    const-string v8, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 137
    const-string v8, "MultiSIMPrefferedSlotView"

    const-string v9, "onReceive() - ACTION_LOCALE_CHANGED : "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$1;->this$0:Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;

    # getter for: Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->mSlotButtons:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;->access$700(Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;

    .line 139
    .restart local v1    # "button":Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/MultiSIMPrefferedSlotView$PrefferedSlotButton;->refreshLocale()V

    goto :goto_3
.end method
