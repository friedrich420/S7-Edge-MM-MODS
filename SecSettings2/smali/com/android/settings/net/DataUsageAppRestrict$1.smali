.class Lcom/android/settings/net/DataUsageAppRestrict$1;
.super Ljava/lang/Object;
.source "DataUsageAppRestrict.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/net/DataUsageAppRestrict;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/net/DataUsageAppRestrict;


# direct methods
.method constructor <init>(Lcom/android/settings/net/DataUsageAppRestrict;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/settings/net/DataUsageAppRestrict$1;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;

    .line 279
    .local v6, "app":Lcom/android/settings/net/DataUsageAppRestrict$AppItem;
    const v0, 0x7f0d00b6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Switch;

    .line 280
    .local v7, "dataSwitch":Landroid/widget/Switch;
    if-eqz v7, :cond_0

    .line 281
    invoke-virtual {v7}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v8, 0x1

    .line 283
    .local v8, "isChecked":Z
    :goto_0
    const-string v0, "DataUsageAppRestrict"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mListListener OnItemClickListener() isChecked+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Uid  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v6, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$1;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    invoke-virtual {v0}, Lcom/android/settings/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "BGDT"

    iget-object v3, v6, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->mPackageName:Ljava/lang/String;

    if-eqz v8, :cond_2

    const-wide/16 v4, 0x0

    :goto_1
    invoke-static/range {v0 .. v5}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 285
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$1;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings/net/DataUsageAppRestrict;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v0}, Lcom/android/settings/net/DataUsageAppRestrict;->access$000(Lcom/android/settings/net/DataUsageAppRestrict;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iget v2, v6, Lcom/android/settings/net/DataUsageAppRestrict$AppItem;->uid:I

    if-nez v8, :cond_3

    const/4 v0, 0x1

    :goto_2
    # invokes: Lcom/android/settings/net/DataUsageAppRestrict;->setAppRestrictBackground(Landroid/net/NetworkPolicyManager;IZ)V
    invoke-static {v1, v2, v0}, Lcom/android/settings/net/DataUsageAppRestrict;->access$100(Landroid/net/NetworkPolicyManager;IZ)V

    .line 286
    invoke-virtual {v7, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict$1;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;
    invoke-static {v0}, Lcom/android/settings/net/DataUsageAppRestrict;->access$200(Lcom/android/settings/net/DataUsageAppRestrict;)Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->notifyDataSetChanged()V

    .line 289
    .end local v8    # "isChecked":Z
    :cond_0
    return-void

    .line 281
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 284
    .restart local v8    # "isChecked":Z
    :cond_2
    const-wide/16 v4, 0x1

    goto :goto_1

    .line 285
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method
