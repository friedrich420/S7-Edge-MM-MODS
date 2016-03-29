.class Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter$1;
.super Ljava/lang/Object;
.source "DataUsageAppRestrict.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

.field final synthetic val$Uid:I


# direct methods
.method constructor <init>(Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;I)V
    .locals 0

    .prologue
    .line 833
    iput-object p1, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter$1;->this$0:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    iput p2, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter$1;->val$Uid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 836
    move-object v0, p1

    check-cast v0, Landroid/widget/CompoundButton;

    .line 837
    .local v0, "c":Landroid/widget/CompoundButton;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    .line 838
    .local v1, "isChecked":Z
    const-string v2, "DataUsageAppRestrict"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView onClick() isChecked+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Uid  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter$1;->val$Uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter$1;->this$0:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    # getter for: Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v2}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->access$1300(Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;)Landroid/net/NetworkPolicyManager;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter$1;->val$Uid:I

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    # invokes: Lcom/android/settings/net/DataUsageAppRestrict;->setAppRestrictBackground(Landroid/net/NetworkPolicyManager;IZ)V
    invoke-static {v3, v4, v2}, Lcom/android/settings/net/DataUsageAppRestrict;->access$100(Landroid/net/NetworkPolicyManager;IZ)V

    .line 840
    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter$1;->this$0:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    invoke-virtual {v2}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->notifyDataSetChanged()V

    .line 841
    return-void

    .line 839
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
