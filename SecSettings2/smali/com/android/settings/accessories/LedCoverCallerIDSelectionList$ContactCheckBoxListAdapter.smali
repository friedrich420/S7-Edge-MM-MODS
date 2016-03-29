.class public Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactCheckBoxListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LedCoverCallerIDSelectionList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactCheckBoxListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
    .param p4, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 513
    .local p5, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;>;"
    iput-object p1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactCheckBoxListAdapter;->this$0:Lcom/android/settings/accessories/LedCoverCallerIDSelectionList;

    .line 514
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 515
    iput-object p2, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactCheckBoxListAdapter;->mContext:Landroid/content/Context;

    .line 517
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 520
    iget-object v3, p0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactCheckBoxListAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 524
    .local v2, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_1

    .line 525
    const v3, 0x7f04011c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 526
    new-instance v0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ViewHolder;-><init>()V

    .line 528
    .local v0, "holder":Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ViewHolder;
    const v3, 0x7f0d00b3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ViewHolder;->text:Landroid/widget/TextView;

    .line 529
    const v3, 0x7f0d00b2

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 530
    const v3, 0x7f0d031a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ViewHolder;->check:Landroid/widget/CheckBox;

    .line 532
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 537
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactCheckBoxListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;

    invoke-virtual {v3}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 538
    iget-object v4, v0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactCheckBoxListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;

    invoke-virtual {v3}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    invoke-virtual {p0, p1}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactCheckBoxListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;

    invoke-virtual {v3}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 540
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_2

    .line 541
    iget-object v3, v0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ViewHolder;->icon:Landroid/widget/ImageView;

    const v4, 0x7f0201b5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 544
    :goto_1
    iget-object v4, v0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ViewHolder;->check:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactCheckBoxListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;

    invoke-virtual {v3}, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ContactInfoCheckBox;->getChecked()Z

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 547
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object p2

    .line 534
    .end local v0    # "holder":Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ViewHolder;

    .restart local v0    # "holder":Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ViewHolder;
    goto :goto_0

    .line 543
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v3, v0, Lcom/android/settings/accessories/LedCoverCallerIDSelectionList$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
