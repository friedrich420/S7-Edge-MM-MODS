.class Lcom/android/settings/applock/PackageListAdapter$PackageListClickListener;
.super Ljava/lang/Object;
.source "PackageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applock/PackageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageListClickListener"
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
    .line 149
    iput-object p1, p0, Lcom/android/settings/applock/PackageListAdapter$PackageListClickListener;->this$0:Lcom/android/settings/applock/PackageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p3, p0, Lcom/android/settings/applock/PackageListAdapter$PackageListClickListener;->mHolder:Lcom/android/settings/applock/PackageListAdapter$ViewHolder;

    .line 151
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/applock/PackageListAdapter$PackageListClickListener;->mHolder:Lcom/android/settings/applock/PackageListAdapter$ViewHolder;

    iget-object v1, v0, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mLockSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/android/settings/applock/PackageListAdapter$PackageListClickListener;->mHolder:Lcom/android/settings/applock/PackageListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applock/PackageListAdapter$ViewHolder;->mLockSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 156
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
