.class public Lcom/android/settings/networkconnect/DataWarningViewHolder;
.super Ljava/lang/Object;
.source "DataWarningViewHolder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/networkconnect/DataWarningViewHolder$OnCheckedListener;
    }
.end annotation


# instance fields
.field private L:Lcom/android/settings/networkconnect/DataWarningViewHolder$OnCheckedListener;

.field public checkBox:Landroid/widget/CheckBox;

.field public dataUsageText:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field public postion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/networkconnect/DataWarningViewHolder$OnCheckedListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Lcom/android/settings/networkconnect/DataWarningViewHolder$OnCheckedListener;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/android/settings/networkconnect/DataWarningViewHolder;->L:Lcom/android/settings/networkconnect/DataWarningViewHolder$OnCheckedListener;

    .line 35
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "v"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/networkconnect/DataWarningViewHolder;->L:Lcom/android/settings/networkconnect/DataWarningViewHolder$OnCheckedListener;

    iget v1, p0, Lcom/android/settings/networkconnect/DataWarningViewHolder;->postion:I

    invoke-interface {v0, v1, p2}, Lcom/android/settings/networkconnect/DataWarningViewHolder$OnCheckedListener;->onChecked(IZ)V

    .line 54
    return-void
.end method

.method public setCheckBox(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/networkconnect/DataWarningViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 39
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "postion"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/android/settings/networkconnect/DataWarningViewHolder;->postion:I

    .line 43
    return-void
.end method
