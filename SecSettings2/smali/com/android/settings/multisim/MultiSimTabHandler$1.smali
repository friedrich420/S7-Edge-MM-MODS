.class Lcom/android/settings/multisim/MultiSimTabHandler$1;
.super Ljava/lang/Object;
.source "MultiSimTabHandler.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/multisim/MultiSimTabHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/multisim/MultiSimTabHandler;


# direct methods
.method constructor <init>(Lcom/android/settings/multisim/MultiSimTabHandler;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/multisim/MultiSimTabHandler$1;->this$0:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/multisim/MultiSimTabHandler$1;->this$0:Lcom/android/settings/multisim/MultiSimTabHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/settings/multisim/MultiSimTabHandler;->mSimSlot:I

    .line 114
    iget-object v0, p0, Lcom/android/settings/multisim/MultiSimTabHandler$1;->this$0:Lcom/android/settings/multisim/MultiSimTabHandler;

    iget-object v1, p0, Lcom/android/settings/multisim/MultiSimTabHandler$1;->this$0:Lcom/android/settings/multisim/MultiSimTabHandler;

    iget v1, v1, Lcom/android/settings/multisim/MultiSimTabHandler;->mSimSlot:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/android/settings/multisim/MultiSimTabHandler;->mSubId:J

    .line 115
    # getter for: Lcom/android/settings/multisim/MultiSimTabHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/multisim/MultiSimTabHandler;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimSlot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/multisim/MultiSimTabHandler$1;->this$0:Lcom/android/settings/multisim/MultiSimTabHandler;

    iget v2, v2, Lcom/android/settings/multisim/MultiSimTabHandler;->mSimSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSubId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/multisim/MultiSimTabHandler$1;->this$0:Lcom/android/settings/multisim/MultiSimTabHandler;

    iget-wide v2, v2, Lcom/android/settings/multisim/MultiSimTabHandler;->mSubId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in TabListner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/multisim/MultiSimTabHandler$1;->this$0:Lcom/android/settings/multisim/MultiSimTabHandler;

    # getter for: Lcom/android/settings/multisim/MultiSimTabHandler;->tabInterface:Lcom/android/settings/multisim/MultiSimTabInterface;
    invoke-static {v0}, Lcom/android/settings/multisim/MultiSimTabHandler;->access$100(Lcom/android/settings/multisim/MultiSimTabHandler;)Lcom/android/settings/multisim/MultiSimTabInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/settings/multisim/MultiSimTabHandler$1;->this$0:Lcom/android/settings/multisim/MultiSimTabHandler;

    # getter for: Lcom/android/settings/multisim/MultiSimTabHandler;->tabInterface:Lcom/android/settings/multisim/MultiSimTabInterface;
    invoke-static {v0}, Lcom/android/settings/multisim/MultiSimTabHandler;->access$100(Lcom/android/settings/multisim/MultiSimTabHandler;)Lcom/android/settings/multisim/MultiSimTabInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/multisim/MultiSimTabInterface;->onTabChanged(Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method
