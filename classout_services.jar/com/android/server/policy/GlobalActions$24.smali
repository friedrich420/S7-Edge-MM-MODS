.class Lcom/android/server/policy/GlobalActions$24;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->addCustomDialogItems(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Landroid/content/Intent;ILjava/util/ArrayList;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILandroid/content/Intent;)V
    .registers 6
    .param p2, "x0"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # I

    .prologue
    .line 2612
    iput-object p1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    iput-object p5, p0, val$intent:Landroid/content/Intent;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .registers 2

    .prologue
    .line 2639
    const/4 v0, 0x1

    return v0
.end method

.method public onPress()V
    .registers 5

    .prologue
    .line 2615
    :try_start_0
    iget v1, p0, customAction:I

    packed-switch v1, :pswitch_data_68

    .line 2629
    :pswitch_5
    const-string v1, "GlobalActions"

    const-string v2, "InvalidParameterException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KnoxCustomPowerItem has no action with value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, customAction:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_27

    .line 2633
    :catch_27
    move-exception v0

    .line 2634
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2636
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2b
    return-void

    .line 2617
    :pswitch_2c
    :try_start_2c
    const-string v1, "GlobalActions"

    const-string v2, "addCustomDialogItems ACTION_SEND_BROADCAST"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2618
    iget-object v1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2b

    .line 2621
    :pswitch_3f
    iget-object v1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2622
    const-string v1, "GlobalActions"

    const-string v2, "addCustomDialogItems ACTION_SEND_STICKY_BROADCAST"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 2625
    :pswitch_52
    iget-object v1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, val$intent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2626
    const-string v1, "GlobalActions"

    const-string v2, "addCustomDialogItems ACTION_START_ACTIVITY"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_66} :catch_27

    goto :goto_2b

    .line 2615
    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_3f
        :pswitch_5
        :pswitch_52
    .end packed-switch
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 2647
    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .registers 2

    .prologue
    .line 2651
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 2643
    const/4 v0, 0x1

    return v0
.end method
