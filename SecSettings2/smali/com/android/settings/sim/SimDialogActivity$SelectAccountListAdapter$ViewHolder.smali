.class Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field summary:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;->this$1:Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;Lcom/android/settings/sim/SimDialogActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;
    .param p2, "x1"    # Lcom/android/settings/sim/SimDialogActivity$1;

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter$ViewHolder;-><init>(Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;)V

    return-void
.end method
