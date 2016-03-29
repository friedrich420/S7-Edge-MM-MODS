.class Lcom/android/settings/applock/PackageListAdapter$OnSwitchCheckedChangeListener;
.super Ljava/lang/Object;
.source "PackageListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applock/PackageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnSwitchCheckedChangeListener"
.end annotation


# instance fields
.field private mHolder:Lcom/android/settings/applock/PackageListAdapter$ViewHolder;

.field final synthetic this$0:Lcom/android/settings/applock/PackageListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/settings/applock/PackageListAdapter;ILcom/android/settings/applock/PackageListAdapter$ViewHolder;)V
    .locals 0
    .param p2, "pos"    # I
    .param p3, "holder"    # Lcom/android/settings/applock/PackageListAdapter$ViewHolder;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/settings/applock/PackageListAdapter$OnSwitchCheckedChangeListener;->this$0:Lcom/android/settings/applock/PackageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p3, p0, Lcom/android/settings/applock/PackageListAdapter$OnSwitchCheckedChangeListener;->mHolder:Lcom/android/settings/applock/PackageListAdapter$ViewHolder;

    .line 165
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v7, 0x1

    .line 169
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 170
    .local v0, "appId":I
    iget-object v4, p0, Lcom/android/settings/applock/PackageListAdapter$OnSwitchCheckedChangeListener;->this$0:Lcom/android/settings/applock/PackageListAdapter;

    iget-object v4, v4, Lcom/android/settings/applock/PackageListAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applock/AppInfo;

    iget-object v2, v4, Lcom/android/settings/applock/AppInfo;->packageName:Ljava/lang/String;

    .line 171
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/applock/PackageListAdapter$OnSwitchCheckedChangeListener;->this$0:Lcom/android/settings/applock/PackageListAdapter;

    iget-object v5, v4, Lcom/android/settings/applock/PackageListAdapter;->mPackageInfoUtil:Lcom/android/settings/applock/PackageInfoUtil;

    iget-object v4, p0, Lcom/android/settings/applock/PackageListAdapter$OnSwitchCheckedChangeListener;->this$0:Lcom/android/settings/applock/PackageListAdapter;

    iget-object v4, v4, Lcom/android/settings/applock/PackageListAdapter;->mAppList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applock/AppInfo;

    invoke-virtual {v5, v4}, Lcom/android/settings/applock/PackageInfoUtil;->getStoredName(Lcom/android/settings/applock/AppInfo;)Ljava/lang/String;

    move-result-object v3

    .line 172
    .local v3, "storedName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/applock/PackageListAdapter$OnSwitchCheckedChangeListener;->mHolder:Lcom/android/settings/applock/PackageListAdapter$ViewHolder;

    iget-object v4, v4, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mLockSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    iget-object v4, p0, Lcom/android/settings/applock/PackageListAdapter$OnSwitchCheckedChangeListener;->this$0:Lcom/android/settings/applock/PackageListAdapter;

    iget-object v4, v4, Lcom/android/settings/applock/PackageListAdapter;->mPackageInfoUtil:Lcom/android/settings/applock/PackageInfoUtil;

    iget-object v5, p0, Lcom/android/settings/applock/PackageListAdapter$OnSwitchCheckedChangeListener;->this$0:Lcom/android/settings/applock/PackageListAdapter;

    iget-object v5, v5, Lcom/android/settings/applock/PackageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/settings/applock/PackageInfoUtil;->storePackageState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_0
    iget-object v4, p0, Lcom/android/settings/applock/PackageListAdapter$OnSwitchCheckedChangeListener;->this$0:Lcom/android/settings/applock/PackageListAdapter;

    iget-object v4, v4, Lcom/android/settings/applock/PackageListAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 179
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/settings/applock/PackageListAdapter$OnSwitchCheckedChangeListener;->this$0:Lcom/android/settings/applock/PackageListAdapter;

    iget-object v4, v4, Lcom/android/settings/applock/PackageListAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 180
    return-void

    .line 175
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/applock/PackageListAdapter$OnSwitchCheckedChangeListener;->this$0:Lcom/android/settings/applock/PackageListAdapter;

    iget-object v4, v4, Lcom/android/settings/applock/PackageListAdapter;->mPackageInfoUtil:Lcom/android/settings/applock/PackageInfoUtil;

    iget-object v5, p0, Lcom/android/settings/applock/PackageListAdapter$OnSwitchCheckedChangeListener;->this$0:Lcom/android/settings/applock/PackageListAdapter;

    iget-object v5, v5, Lcom/android/settings/applock/PackageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v2, v6}, Lcom/android/settings/applock/PackageInfoUtil;->removePackageState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 176
    iget-object v4, p0, Lcom/android/settings/applock/PackageListAdapter$OnSwitchCheckedChangeListener;->this$0:Lcom/android/settings/applock/PackageListAdapter;

    iget-object v4, v4, Lcom/android/settings/applock/PackageListAdapter;->mPackageInfoUtil:Lcom/android/settings/applock/PackageInfoUtil;

    iget-object v5, p0, Lcom/android/settings/applock/PackageListAdapter$OnSwitchCheckedChangeListener;->this$0:Lcom/android/settings/applock/PackageListAdapter;

    iget-object v5, v5, Lcom/android/settings/applock/PackageListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v3}, Lcom/android/settings/applock/PackageInfoUtil;->removeFolderInfo(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
