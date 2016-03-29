.class public Lcom/android/settings/ProfileSelectDialog;
.super Landroid/app/DialogFragment;
.source "ProfileSelectDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static mObject:Ljava/lang/Object;


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mUserHandle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/lang/Object;)V
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 45
    new-instance v0, Lcom/android/settings/ProfileSelectDialog;

    invoke-direct {v0}, Lcom/android/settings/ProfileSelectDialog;-><init>()V

    .line 47
    .local v0, "dialog":Lcom/android/settings/ProfileSelectDialog;
    sput-object p1, Lcom/android/settings/ProfileSelectDialog;->mObject:Ljava/lang/Object;

    .line 48
    const-string v1, "select_profile"

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/ProfileSelectDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 80
    iget-object v1, p0, Lcom/android/settings/ProfileSelectDialog;->mUserHandle:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 81
    .local v0, "user":Landroid/os/UserHandle;
    invoke-virtual {p0}, Lcom/android/settings/ProfileSelectDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ProfileSelectDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 82
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget-object v0, Lcom/android/settings/ProfileSelectDialog;->mObject:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/dashboard/DashboardTile;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/android/settings/ProfileSelectDialog;->mObject:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->userHandle:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings/ProfileSelectDialog;->mUserHandle:Ljava/util/List;

    .line 57
    sget-object v0, Lcom/android/settings/ProfileSelectDialog;->mObject:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/dashboard/DashboardTile;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/ProfileSelectDialog;->mIntent:Landroid/content/Intent;

    .line 64
    :goto_0
    return-void

    .line 58
    :cond_0
    sget-object v0, Lcom/android/settings/ProfileSelectDialog;->mObject:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;

    if-eqz v0, :cond_1

    .line 59
    sget-object v0, Lcom/android/settings/ProfileSelectDialog;->mObject:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;

    iget-object v0, v0, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->userHandle:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/settings/ProfileSelectDialog;->mUserHandle:Ljava/util/List;

    .line 60
    sget-object v0, Lcom/android/settings/ProfileSelectDialog;->mObject:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;

    invoke-virtual {v0}, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ProfileSelectDialog;->mIntent:Landroid/content/Intent;

    goto :goto_0

    .line 62
    :cond_1
    const-string v0, "ProfileSelectDialog"

    const-string v1, "obj is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/settings/ProfileSelectDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 69
    .local v2, "context":Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ProfileSelectDialog;->mUserHandle:Ljava/util/List;

    invoke-static {v3, v2, v4}, Lcom/android/settings/Utils;->createUserAdapter(Landroid/os/UserManager;Landroid/content/Context;Ljava/util/List;)Lcom/android/settings/UserAdapter;

    move-result-object v0

    .line 72
    .local v0, "adapter":Lcom/android/settings/UserAdapter;
    const v3, 0x7f0e0ee8

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
