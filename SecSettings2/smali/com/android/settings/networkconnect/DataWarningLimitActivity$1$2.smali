.class Lcom/android/settings/networkconnect/DataWarningLimitActivity$1$2;
.super Ljava/lang/Object;
.source "DataWarningLimitActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;


# direct methods
.method constructor <init>(Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1$2;->this$1:Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, 0x0

    .line 181
    sget v0, Lcom/android/settings/networkconnect/NetworkManagerActivity;->mSlotIndex:I

    sput v0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->simSlot:I

    .line 182
    iget-object v0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1$2;->this$1:Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;

    iget-object v0, v0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSubId:I
    invoke-static {v0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$100(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)I

    move-result v0

    sput v0, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;->subId:I

    .line 183
    iget-object v0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1$2;->this$1:Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;

    iget-object v0, v0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$000(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/trafficmanager/settings/TrafficSettingsActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0e16b2

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 185
    return-void
.end method
