.class Lcom/sec/epdg/handover/EpdgImsListener50$EpdgImsSettingStateListener;
.super Ljava/lang/Object;
.source "EpdgImsListener50.java"

# interfaces
.implements Lcom/samsung/commonimsinterface/imscommon/IIMSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsListener50;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EpdgImsSettingStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsListener50;


# direct methods
.method constructor <init>(Lcom/sec/epdg/handover/EpdgImsListener50;)V
    .registers 2

    .prologue
    .line 281
    iput-object p1, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(IILcom/samsung/commonimsinterface/imscommon/IMSParameter;)V
    .registers 7
    .param p1, "token"    # I
    .param p2, "action"    # I
    .param p3, "parameter"    # Lcom/samsung/commonimsinterface/imscommon/IMSParameter;

    .prologue
    .line 284
    packed-switch p2, :pswitch_data_1e

    .line 297
    :cond_3
    :goto_3
    return-void

    .line 286
    :pswitch_4
    const-string v1, "[EpdgImsListener]"

    const-string v2, "GENERAL.CHANGE_DATA"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string/jumbo v1, "settingsvalue"

    invoke-virtual {p3, v1}, Lcom/samsung/commonimsinterface/imscommon/IMSParameter;->getSparseStringArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 288
    .local v0, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    .line 291
    iget-object v1, p0, this$0:Lcom/sec/epdg/handover/EpdgImsListener50;

    # getter for: Lcom/sec/epdg/handover/EpdgImsListener50;->mEpdgImsSettings:Lcom/sec/epdg/handover/EpdgImsSettings;
    invoke-static {v1}, Lcom/sec/epdg/handover/EpdgImsListener50;->access$800(Lcom/sec/epdg/handover/EpdgImsListener50;)Lcom/sec/epdg/handover/EpdgImsSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/epdg/handover/EpdgImsSettings;->update(Landroid/util/SparseArray;)V

    goto :goto_3

    .line 284
    :pswitch_data_1e
    .packed-switch 0x3f1
        :pswitch_4
    .end packed-switch
.end method
