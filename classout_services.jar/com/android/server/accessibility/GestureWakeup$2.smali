.class Lcom/android/server/accessibility/GestureWakeup$2;
.super Ljava/lang/Object;
.source "GestureWakeup.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/GestureWakeup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/GestureWakeup;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/GestureWakeup;)V
    .registers 2

    .prologue
    .line 227
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/GestureWakeup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    .line 229
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getApproachContext()Landroid/hardware/scontext/SContextApproach;

    move-result-object v0

    .line 230
    .local v0, "approach":Landroid/hardware/scontext/SContextApproach;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextApproach;->getUserID()I

    move-result v1

    .line 232
    .local v1, "userId":I
    iget-object v2, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v2}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_6c

    .line 244
    :cond_11
    :goto_11
    return-void

    .line 235
    :pswitch_12
    const-string v2, "GestureWakeup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSContextChanged() Approach, userId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , getCurrentUser()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", setting : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, this$0:Lcom/android/server/accessibility/GestureWakeup;

    sget-object v5, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", UserHandle.USER_CURRENT : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v2, p0, this$0:Lcom/android/server/accessibility/GestureWakeup;

    sget-object v3, Lcom/android/server/accessibility/GestureWakeup;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/GestureWakeup;->checkSettingCondition(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-ne v1, v2, :cond_11

    .line 237
    iget-object v2, p0, this$0:Lcom/android/server/accessibility/GestureWakeup;

    # invokes: Lcom/android/server/accessibility/GestureWakeup;->launchGestureWakeup()V
    invoke-static {v2}, Lcom/android/server/accessibility/GestureWakeup;->access$100(Lcom/android/server/accessibility/GestureWakeup;)V

    goto :goto_11

    .line 232
    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_12
    .end packed-switch
.end method
