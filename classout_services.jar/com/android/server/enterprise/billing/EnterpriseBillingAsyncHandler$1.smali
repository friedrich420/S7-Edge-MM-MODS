.class Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$1;
.super Landroid/os/Handler;
.source "EnterpriseBillingAsyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_56

    .line 145
    :goto_5
    return-void

    .line 117
    :pswitch_6
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mEbpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->access$000(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->onContainerModification(Landroid/content/Intent;)V

    goto :goto_5

    .line 121
    :pswitch_14
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mEbpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->access$000(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->onPackageModified(Landroid/content/Intent;)V

    goto :goto_5

    .line 125
    :pswitch_22
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mEbpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->access$000(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->onContainerAdminChanged(Landroid/content/Intent;)V

    goto :goto_5

    .line 129
    :pswitch_30
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mEbpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->access$000(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->onBootCompleted(Landroid/content/Intent;)V

    goto :goto_5

    .line 133
    :pswitch_3e
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mEbpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->access$000(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ServiceState;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_5

    .line 137
    :pswitch_4c
    iget-object v0, p0, this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->mEbpInternal:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->access$000(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyInternal;->onAPNChanged()V

    goto :goto_5

    .line 114
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_6
        :pswitch_14
        :pswitch_22
        :pswitch_30
        :pswitch_3e
        :pswitch_4c
    .end packed-switch
.end method
