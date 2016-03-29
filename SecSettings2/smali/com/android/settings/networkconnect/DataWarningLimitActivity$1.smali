.class Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;
.super Ljava/lang/Object;
.source "DataWarningLimitActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/networkconnect/DataWarningLimitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "button"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v4, 0x0

    .line 173
    if-eqz p2, :cond_1

    .line 174
    iget-object v3, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$000(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data_warning_whitelist_enable_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSubId:I
    invoke-static {v6}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$100(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 175
    .local v0, "enableWarningStatus":I
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # invokes: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->isWarningFunctionActive()Z
    invoke-static {v3}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$200(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 176
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$000(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$000(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e16d8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f0e0c94

    new-instance v6, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1$2;

    invoke-direct {v6, p0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1$2;-><init>(Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x1040009

    new-instance v6, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1$1;

    invoke-direct {v6, p0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1$1;-><init>(Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 192
    .local v1, "mAdbDialog":Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSwitch:Landroid/widget/Switch;
    invoke-static {v3}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$300(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 207
    .end local v0    # "enableWarningStatus":I
    .end local v1    # "mAdbDialog":Landroid/app/AlertDialog;
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v3, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSwitchtext:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$400(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz p2, :cond_2

    const v3, 0x7f0e0e92

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(I)V

    .line 197
    iget-object v3, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$000(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data_warning_whitelist_enable_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSubId:I
    invoke-static {v6}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$100(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_3

    const/4 v3, 0x1

    :goto_2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    iget-object v3, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mDataWarningAdapter:Lcom/android/settings/networkconnect/DataWarningAdapter;
    invoke-static {v3}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$500(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Lcom/android/settings/networkconnect/DataWarningAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 202
    new-instance v2, Lcom/android/settings/networkconnect/NetworkManagerUtils;

    iget-object v3, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$000(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/networkconnect/NetworkManagerUtils;-><init>(Landroid/content/Context;)V

    .line 203
    .local v2, "utils":Lcom/android/settings/networkconnect/NetworkManagerUtils;
    invoke-virtual {v2, v4}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->checkStatus(Z)V

    .line 204
    sget-object v3, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/networkconnect/NetworkManagerUtils;->isCurrentSlotWarning(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mIsCurrentSlotWarning:Z

    .line 205
    iget-object v3, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mDataWarningAdapter:Lcom/android/settings/networkconnect/DataWarningAdapter;
    invoke-static {v3}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$500(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Lcom/android/settings/networkconnect/DataWarningAdapter;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/settings/networkconnect/DataWarningAdapter;->setListViewEnabled(Z)V

    .line 206
    iget-object v3, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mDataWarningAdapter:Lcom/android/settings/networkconnect/DataWarningAdapter;
    invoke-static {v3}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$500(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Lcom/android/settings/networkconnect/DataWarningAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/networkconnect/DataWarningAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 196
    .end local v2    # "utils":Lcom/android/settings/networkconnect/NetworkManagerUtils;
    :cond_2
    const v3, 0x7f0e0e93

    goto :goto_1

    :cond_3
    move v3, v4

    .line 197
    goto :goto_2
.end method
